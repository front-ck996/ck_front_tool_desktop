import 'package:grpc/grpc.dart';
// import 'package:ck_front_tool_dart/grpc/core/walk_disk.pbgrpc.dart';
import 'package:ck_front_tool_dart/grpc/core/main.pbgrpc.dart';

class UGrpcHandle {
  static  final channel = ClientChannel(
    'localhost',
    port: 50053,
    options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
  );
  static CkToolGoRPCClient getHandle(){
    return CkToolGoRPCClient(channel);
  }
}