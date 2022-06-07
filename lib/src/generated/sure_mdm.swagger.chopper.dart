// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sure_mdm.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$SureMdm extends SureMdm {
  _$SureMdm([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = SureMdm;

  @override
  Future<Response<String>> _qRCodeGroupIdDefaultIsHttpsDeviceNameTypeGet(
      {required String? groupID,
      required bool? isHttps,
      required String? deviceNameType}) {
    final $url = '/QRCode/{GroupId}/default/${isHttps}/${deviceNameType}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<List<DeviceModel$Item>>> _deviceGet(
      {required String? groupID, String? deviceName, String? mACaddress}) {
    final $url = '/device';
    final $params = <String, dynamic>{
      'GroupID': groupID,
      'DeviceName': deviceName,
      'MACaddress': mACaddress
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<List<DeviceModel$Item>, DeviceModel$Item>($request);
  }

  @override
  Future<Response<PostDeviceResponseModel>> _devicePost(
      {required GetDevicePayLoad? body}) {
    final $url = '/device';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client
        .send<PostDeviceResponseModel, PostDeviceResponseModel>($request);
  }

  @override
  Future<Response<String>> _devicePut({required DeleteDevice? body}) {
    final $url = '/device';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<List<DeviceModel$Item>>> _deviceDeviceIdGet(
      {required String? deviceId}) {
    final $url = '/device/${deviceId}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<DeviceModel$Item>, DeviceModel$Item>($request);
  }

  @override
  Future<Response<String>> _devicenameGet({required String? deviceID}) {
    final $url = '/devicename';
    final $params = <String, dynamic>{'DeviceID': deviceID};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<String>> _devicenamePut({required SetDeviceName? body}) {
    final $url = '/devicename';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<String>> _deviceassignmentPut(
      {required List<DeviceAssignment$Item>? body}) {
    final $url = '/deviceassignment';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<String>> _getdevicelistbygroupidGroupIDGet(
      {required String? groupID}) {
    final $url = '/getdevicelistbygroupid/${groupID}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<InstalledAppsModel>> _installedappAndroidDeviceIdDeviceGet(
      {required String? deviceId}) {
    final $url = '/installedapp/android/${deviceId}/device';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<InstalledAppsModel, InstalledAppsModel>($request);
  }

  @override
  Future<Response<List<DeviceLogOutput$Item>>> _devicelogDeviceIdGet(
      {required String? deviceId}) {
    final $url = '/devicelog/${deviceId}';
    final $request = Request('GET', $url, client.baseUrl);
    return client
        .send<List<DeviceLogOutput$Item>, DeviceLogOutput$Item>($request);
  }

  @override
  Future<Response<List<CallLogOutput$Item>>> _calllogDeviceIDGet(
      {required String? deviceID}) {
    final $url = '/calllog/${deviceID}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<CallLogOutput$Item>, CallLogOutput$Item>($request);
  }

  @override
  Future<Response<List<SMSLogOutput$Item>>> _smslogDeviceIDGet(
      {required String? deviceID}) {
    final $url = '/smslog/${deviceID}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<SMSLogOutput$Item>, SMSLogOutput$Item>($request);
  }

  @override
  Future<Response<DataUsageOutput>> _datausagepolicyDeviceIDStartDateEndDateGet(
      {required String? deviceID,
      required String? startDate,
      required String? endDate}) {
    final $url = '/datausagepolicy/${deviceID}/${startDate}/${endDate}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<DataUsageOutput, DataUsageOutput>($request);
  }

  @override
  Future<Response<List<UnapprovedOutput$Item>>> _unapproveddeviceGet() {
    final $url = '/unapproveddevice';
    final $request = Request('GET', $url, client.baseUrl);
    return client
        .send<List<UnapprovedOutput$Item>, UnapprovedOutput$Item>($request);
  }

  @override
  Future<Response<int>> _unapproveddevicePut() {
    final $url = '/unapproveddevice';
    final $request = Request('PUT', $url, client.baseUrl);
    return client.send<int, int>($request);
  }

  @override
  Future<Response<List<String>>> _deviceapprovalGet() {
    final $url = '/deviceapproval';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<String>, String>($request);
  }

  @override
  Future<Response<List<BlacklistOutput$Item>>> _blacklistdeviceGet() {
    final $url = '/blacklistdevice';
    final $request = Request('GET', $url, client.baseUrl);
    return client
        .send<List<BlacklistOutput$Item>, BlacklistOutput$Item>($request);
  }

  @override
  Future<Response<String>> _blacklistDeviceDeviceIdsPut(
      {required List<String>? deviceids}) {
    final $url = '/BlacklistDevice/{deviceIds}';
    final $request = Request('PUT', $url, client.baseUrl);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<String>> _whitelistdevicePut({required List<Object>? body}) {
    final $url = '/whitelistdevice';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<LastLocationModel>> _locationPost(
      {required LocationPost$RequestBody? body}) {
    final $url = '/location';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<LastLocationModel, LastLocationModel>($request);
  }

  @override
  Future<Response<LocationModel>> _locationGet(
      {required String? deviceID, String? fromTime, String? toTime}) {
    final $url = '/location';
    final $params = <String, dynamic>{
      'DeviceID': deviceID,
      'FromTime': fromTime,
      'ToTime': toTime
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<LocationModel, LocationModel>($request);
  }

  @override
  Future<Response<PreapprovedDeviceResponseModel>>
      _preapproveddeviceGetDeviceListPost(
          {required GetPreapprovedDevicePayLoad? body}) {
    final $url = '/preapproveddevice/GetDeviceList';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<PreapprovedDeviceResponseModel,
        PreapprovedDeviceResponseModel>($request);
  }

  @override
  Future<Response<int>> _preapprovedDevicePost(
      {required List<AddDevicePreapprovedModel$Item>? body}) {
    final $url = '/PreapprovedDevice';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<int, int>($request);
  }

  @override
  Future<Response<String>> _preapprovedDeviceDeleteDevicePost() {
    final $url = '/PreapprovedDevice/DeleteDevice';
    final $request = Request('POST', $url, client.baseUrl);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<dynamic>> _dynamicjobPost() {
    final $url = '/dynamicjob';
    final $request = Request('POST', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<bool>> _jobassignmentPost() {
    final $url = '/jobassignment';
    final $request = Request('POST', $url, client.baseUrl);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<List<Object>>> _dynamicjobqueuePost(
      {required DynamicJobQueueDevice? body}) {
    final $url = '/dynamicjobqueue';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<List<Object>, Object>($request);
  }

  @override
  Future<Response<List<Object>>> _jobqueueDeviceIDShowAllGet(
      {required String? deviceID, required bool? showAll}) {
    final $url = '/jobqueue/${deviceID}/${showAll}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<Object>, Object>($request);
  }

  @override
  Future<Response<List<Object>>> _jobqueueerrorhistoryDeviceIDIsSuccessGet(
      {required String? deviceID, required bool? isSuccess}) {
    final $url = '/jobqueueerrorhistory/${deviceID}/${isSuccess}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<Object>, Object>($request);
  }

  @override
  Future<Response<Object>> _jobqueueerrorhistoryDeviceIDGet(
      {required String? deviceID}) {
    final $url = '/jobqueueerrorhistory/${deviceID}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<List<Object>>> _jobqueuePost(
      {required JobQueueDevice? body}) {
    final $url = '/jobqueue';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<List<Object>, Object>($request);
  }

  @override
  Future<Response<int>> _jobqueuePut({required ReapplyJobModel? body}) {
    final $url = '/jobqueue';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<int, int>($request);
  }

  @override
  Future<Response<String>> _blacklistdeviceDeviceIdsDelete(
      {required List<String>? deviceids}) {
    final $url = '/blacklistdevice/{deviceIds}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<GroupGetModel>> _groupGet() {
    final $url = '/group';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<GroupGetModel, GroupGetModel>($request);
  }

  @override
  Future<Response<String>> _groupPost({required GroupModel? body}) {
    final $url = '/group';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<int>> _groupPut({required List<EditGroupModel$Item>? body}) {
    final $url = '/group';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<int, int>($request);
  }

  @override
  Future<Response<GroupGetAllModel>> _group1GetAllGet() {
    final $url = '/group/1/getAll';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<GroupGetAllModel, GroupGetAllModel>($request);
  }

  @override
  Future<Response<GroupByIDModel>> _groupGroupIdGet(
      {required String? groupId}) {
    final $url = '/group/${groupId}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<GroupByIDModel, GroupByIDModel>($request);
  }

  @override
  Future<Response<String>> _groupGroupIdDelete({required String? groupId}) {
    final $url = '/group/${groupId}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<String>> _jobassignmentJobIdGroupIdPost(
      {required String? jobId, required String? groupId}) {
    final $url = '/jobassignment/${jobId}/${groupId}';
    final $request = Request('POST', $url, client.baseUrl);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<String>>
      _jobassignmentJobIdGroupIdServerScheduleTimeRecursiveScheduleTimeDownloadTypePost(
          {required String? jobId,
          required String? groupId,
          required String? serverScheduleTime,
          required String? recursiveScheduleTime,
          required String? downloadType}) {
    final $url =
        '/jobassignment/${jobId}/${groupId}/${serverScheduleTime}/${recursiveScheduleTime}/${downloadType}';
    final $request = Request('POST', $url, client.baseUrl);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<String>> _jobassignmentGroupPost() {
    final $url = '/jobassignment/group';
    final $request = Request('POST', $url, client.baseUrl);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<List<Object>>> _groupJobQueueGroupIdTypeGet(
      {required String? groupId, required int? type}) {
    final $url = '/GroupJobQueue/${groupId}/${type}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<Object>, Object>($request);
  }

  @override
  Future<Response<List<GetTagsOutputModel$Item>>> _tagsGet() {
    final $url = '/tags';
    final $request = Request('GET', $url, client.baseUrl);
    return client
        .send<List<GetTagsOutputModel$Item>, GetTagsOutputModel$Item>($request);
  }

  @override
  Future<Response<String>> _tagsPost({required TagCreateModel? body}) {
    final $url = '/tags';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<String>> _tagsPut({required TagModifyModel? body}) {
    final $url = '/tags';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<String>>
      _jobassignmentJobIdTagIdServerScheduleTimeRecursiveScheduleTimeDownloadTypeTruePost(
          {required String? jobId,
          required String? tagId,
          required String? serverScheduleTime,
          required String? recursiveScheduleTime,
          required String? downloadType}) {
    final $url =
        '/jobassignment/${jobId}/${tagId}/${serverScheduleTime}/${recursiveScheduleTime}/${downloadType}/true';
    final $request = Request('POST', $url, client.baseUrl);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<String>> _jobassignmentTagsPost() {
    final $url = '/jobassignment/tags';
    final $request = Request('POST', $url, client.baseUrl);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<String>> _tagsTagIDDelete({required String? tagID}) {
    final $url = '/tags/${tagID}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<String>> _deviceAssignmentTagsAssignToDevicesPut(
      {required List<TagsAssignToDeviceModel$Item>? body}) {
    final $url = '/DeviceAssignment/TagsAssignToDevices';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<RunScriptOutputModel>> _jobRunscriptGet() {
    final $url = '/job/runscript';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<RunScriptOutputModel, RunScriptOutputModel>($request);
  }

  @override
  Future<Response<JobOutputModel>> _jobGet({required String? folderId}) {
    final $url = '/job';
    final $params = <String, dynamic>{'FolderId': folderId};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<JobOutputModel, JobOutputModel>($request);
  }

  @override
  Future<Response<dynamic>> _jobPost() {
    final $url = '/job';
    final $request = Request('POST', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _jobPut() {
    final $url = '/job';
    final $request = Request('PUT', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<Object>> _jobDelete({required JobDeleteModel? body}) {
    final $url = '/job';
    final $body = body;
    final $request = Request('DELETE', $url, client.baseUrl, body: $body);
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<String>> _uploadUploadfilePost(
      {required UploadFileModel? body}) {
    final $url = '/upload/uploadfile';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<List<GetJobFolderOutPutModel$Item>>> _jobfolderAllGet() {
    final $url = '/jobfolder/all';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<GetJobFolderOutPutModel$Item>,
        GetJobFolderOutPutModel$Item>($request);
  }

  @override
  Future<Response<CreateJobFolderOutPutModel>> _jobfolderPost(
      {required CreateJobFolder? body}) {
    final $url = '/jobfolder';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client
        .send<CreateJobFolderOutPutModel, CreateJobFolderOutPutModel>($request);
  }

  @override
  Future<Response<String>> _jobfolderPut({required EditJobFolder? body}) {
    final $url = '/jobfolder';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<String>> _jobfolderFolderIDDelete(
      {required Object? folderID}) {
    final $url = '/jobfolder/${folderID}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<ReportOutPutModel>> _reportGet() {
    final $url = '/report';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<ReportOutPutModel, ReportOutPutModel>($request);
  }

  @override
  Future<Response<String>> _reportPost() {
    final $url = '/report';
    final $request = Request('POST', $url, client.baseUrl);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<ReportModel>> _reportType1Get({required int? type}) {
    final $url = '/report/${type}/1';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<ReportModel, ReportModel>($request);
  }

  @override
  Future<Response<String>> _reportReportIDDelete({required Object? reportID}) {
    final $url = '/report/${reportID}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<AllMessageModel>> _messageOffsetLimitOrderSortColumnSearchGet(
      {required String? offset,
      required String? limit,
      required String? order,
      required String? sortColumn,
      required String? search}) {
    final $url = '/message/${offset}/${limit}/${order}/${sortColumn}/${search}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<AllMessageModel, AllMessageModel>($request);
  }

  @override
  Future<Response<MessageIdModel>> _messageMessageIdGet(
      {required String? messageId}) {
    final $url = '/message/${messageId}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<MessageIdModel, MessageIdModel>($request);
  }

  @override
  Future<Response<MessageModel>> _messageGet({bool? fetchRead}) {
    final $url = '/message';
    final $params = <String, dynamic>{'FetchRead': fetchRead};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<MessageModel, MessageModel>($request);
  }

  @override
  Future<Response<String>> _messagePut({required MarkMessage? body}) {
    final $url = '/message';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<String>> _messageDelete({required List<String>? id}) {
    final $url = '/message';
    final $params = <String, dynamic>{'id': id};
    final $request =
        Request('DELETE', $url, client.baseUrl, parameters: $params);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<String>> _messageDaysCustomdeleteDelete(
      {required int? days}) {
    final $url = '/Message/${days}/customdelete';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<CustomerOutputModel>> _customerGet() {
    final $url = '/customer';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<CustomerOutputModel, CustomerOutputModel>($request);
  }

  @override
  Future<Response<String>> _versionGet() {
    final $url = '/version';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<AccountDetailsModel>> _accountGet() {
    final $url = '/account';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<AccountDetailsModel, AccountDetailsModel>($request);
  }
}
