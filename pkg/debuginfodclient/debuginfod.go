package debuginfo

import (
	"debug/dwarf"
	"debug/elf"
	"fmt"
	"io"
	"io/ioutil"
	"net/http"
)

var localServer = "http://localhost:8002/buildid"

type DebugInfodClient interface {
	GetDebugInfo(buildid string) (io.ReadCloser, error)
}

type HttpDebuginfodClient struct {
	UpstreamServer string //url
}

func (c *HttpDebuginfodClient) GetDebugInfo(buildid string) (io.ReadCloser, error) {
	resp, err := http.Get(c.UpstreamServer + "/" + buildid + "/debuginfo")
	if err != nil {
		//fmt.Printf("imma gonna panic")
		return nil, err
	}
	return resp.Body, nil
}

type ObjectStorageDebugInfodClientCache struct {
	client DebugInfodClient
}

func (c *ObjectStorageDebugInfodClientCache) GetDebugInfo(buildid string) (io.ReadCloser, error) {
	return c.client.GetDebugInfo(buildid)
}

func writeToFile(buildid string) {
	resp, err := http.Get(localServer + "/" + buildid + "/debuginfo")
	if err != nil {
		fmt.Printf("imma gonna panic")
		panic(err)
	}

	defer resp.Body.Close()

	r, err := ioutil.ReadAll(resp.Body)
	if err != nil {
		fmt.Printf("imma gonna panic")
		panic(err)
	}
	tmpfile, err := ioutil.TempFile("./", ".debuginf")
	if err != nil {
		fmt.Printf("imma gonna panic")
		panic(err)
	}
	tmpfile.Write(r)

	elfFile, err := elf.Open(tmpfile.Name())
	if err != nil {
		fmt.Printf("imma gonna panic")
		panic(err)
	}
	dwarfData, err := elfFile.DWARF()
	if err != nil {
		fmt.Printf("imma gonna panic")
		panic(err)
	}

	entryReader := dwarfData.Reader()
	for {
		entry, err := entryReader.Next()
		if err == io.EOF {
			// We've reached the end of DWARF entries
			break
		}

		// Check if this entry is a function
		if entry.Tag == dwarf.TagSubprogram {

			// Go through fields
			for _, field := range entry.Field {

				if field.Attr == dwarf.AttrName {
					fmt.Println(field.Val.(string))
				}
			}
		}
	}

}

func LocalDebug(buildid string) {

	//debugFile, err := elf.Open(resp.Body)
	//elf.NewFile(resp.Body)
	writeToFile(buildid)
}
