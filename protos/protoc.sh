# kotlin
protoc -I=/Users/houshuai/Idea/AikangYun/flutter/laikangning-sdk/protos  --kotlin_out=/Users/houshuai/Idea/AikangYun/flutter/laikangning-sdk/proto /Users/houshuai/Idea/AikangYun/flutter/laikangning-sdk/protos/fhrdata.proto

# dart
protoc -I=/Users/houshuai/Idea/AikangYun/flutter/laikangning-sdk/protos  --dart_out=/Users/houshuai/Idea/AikangYun/flutter/laikangning-sdk/protos /Users/houshuai/Idea/AikangYun/flutter/laikangning-sdk/protos/fhrdata.proto

# swift
protoc --swift_out=. fhrdata.proto