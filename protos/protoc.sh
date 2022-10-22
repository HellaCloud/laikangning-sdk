# kotlin
protoc -I=/Users/houshuai/Idea/AikangYun/flutter/laikangning-sdk/proto  --kotlin_out=/Users/houshuai/Idea/AikangYun/flutter/laikangning-sdk/proto /Users/houshuai/Idea/AikangYun/flutter/laikangning-sdk/proto/fhrdata.proto

# dart
protoc -I=/Users/houshuai/Idea/AikangYun/flutter/laikangning-sdk/proto  --dart_out=/Users/houshuai/Idea/AikangYun/flutter/laikangning-sdk/proto /Users/houshuai/Idea/AikangYun/flutter/laikangning-sdk/proto/fhrdata.proto

# swift
protoc --swift_out=. fhrdata.proto