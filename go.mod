module github.com/parca-dev/parca

go 1.16

require (
	cloud.google.com/go v0.93.3 // indirect
	github.com/alecthomas/kong v0.2.17
	github.com/cenkalti/backoff v2.2.1+incompatible
	github.com/cespare/xxhash/v2 v2.1.2 // indirect
	github.com/common-nighthawk/go-figure v0.0.0-20210622060536-734e95fb86be
	github.com/desertbit/timer v0.0.0-20180107155436-c41aec40b27f // indirect
	github.com/dgraph-io/sroar v0.0.0-20210915181338-8dc690a08d84
	github.com/gin-gonic/gin v1.7.0 // indirect
	github.com/go-chi/cors v1.2.0
	github.com/go-kit/kit v0.11.0 // indirect
	github.com/go-kit/log v0.1.0
	github.com/go-ozzo/ozzo-validation/v4 v4.3.0
	github.com/golang/snappy v0.0.4 // indirect
	github.com/google/pprof v0.0.0-20210720184732-4bb14d4b1be1
	github.com/gorilla/websocket v1.4.2 // indirect
	github.com/grpc-ecosystem/go-grpc-middleware v1.3.0
	github.com/grpc-ecosystem/go-grpc-middleware/providers/kit/v2 v2.0.0-20201002093600-73cf2ae9d891
	github.com/grpc-ecosystem/go-grpc-middleware/v2 v2.0.0-rc.2.0.20201207153454-9f6bf00c00a7
	github.com/grpc-ecosystem/go-grpc-prometheus v1.2.0
	github.com/grpc-ecosystem/grpc-gateway/v2 v2.7.0
	github.com/hashicorp/go-multierror v1.1.0
	github.com/ianlancetaylor/demangle v0.0.0-20200824232613-28f6c0f3b639
	github.com/improbable-eng/grpc-web v0.14.0
	github.com/klauspost/compress v1.13.1 // indirect
	github.com/matttproud/golang_protobuf_extensions v1.0.2-0.20181231171920-c182affec369 // indirect
	github.com/oklog/run v1.1.0
	github.com/pkg/errors v0.9.1
	github.com/prometheus/client_golang v1.11.0
	github.com/prometheus/common v0.30.0
	github.com/prometheus/prometheus v2.5.0+incompatible
	github.com/rs/cors v1.8.0 // indirect
	github.com/stretchr/testify v1.7.1
	go.opentelemetry.io/contrib/instrumentation/google.golang.org/grpc/otelgrpc v0.24.0
	go.opentelemetry.io/otel v1.7.0
	go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptracegrpc v1.7.0
	go.opentelemetry.io/otel/sdk v1.7.0
	go.opentelemetry.io/otel/trace v1.7.0
	go.uber.org/atomic v1.9.0
	golang.org/x/crypto v0.0.0-20210616213533-5ff15b29337e // indirect
	golang.org/x/net v0.0.0-20210726213435-c6fcb2dbf985
	golang.org/x/sync v0.0.0-20210220032951-036812b2e83c
	golang.org/x/sys v0.0.0-20210823070655-63515b42dcdf // indirect
	google.golang.org/genproto v0.0.0-20211118181313-81c1377c94b1
	google.golang.org/grpc v1.46.0
	google.golang.org/grpc/cmd/protoc-gen-go-grpc v1.1.0
	google.golang.org/protobuf v1.28.0
	gopkg.in/yaml.v2 v2.4.0
	modernc.org/sqlite v1.12.0
	nhooyr.io/websocket v1.8.7 // indirect
)

replace github.com/prometheus/prometheus => github.com/prometheus/prometheus v1.8.2-0.20201130085533-a6e18916ab40

replace go.opentelemetry.io/otel/metric => go.opentelemetry.io/otel/metric v0.24.0
