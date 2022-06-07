import 'sure_mdm.models.swagger.dart';
import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'package:chopper/chopper.dart' as chopper;
import 'sure_mdm.enums.swagger.dart' as enums;
export 'sure_mdm.enums.swagger.dart';
export 'sure_mdm.models.swagger.dart';

part 'sure_mdm.swagger.chopper.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class SureMdm extends ChopperService {
  static SureMdm create(
      {ChopperClient? client,
      Authenticator? authenticator,
      String? baseUrl,
      Iterable<dynamic>? interceptors}) {
    if (client != null) {
      return _$SureMdm(client);
    }

    final newClient = ChopperClient(
        services: [_$SureMdm()],
        converter: $JsonSerializableConverter(),
        interceptors: interceptors ?? [],
        authenticator: authenticator,
        baseUrl: baseUrl ?? 'http://');
    return _$SureMdm(newClient);
  }

  ///Get QR Code
  ///@param GroupID ID of the group where you want to assign device.<br/> Group ID can be retrieved using [`Get details of all groups`](./#tag/Group/paths/~1group~11~1getAll/get) api.  Note:  <b>For Home group, GroupID is null.</b>
  ///@param IsHttps Whether it is 'https' or 'http'
  ///@param DeviceNameType <table><tr><th>Value</th><th>Description</th></tr><tr><td>UseSystemGenerated</td><td>Use system generated device name</td></tr><tr><td>UseIMEI</td><td>Use IMEI number as device name</td></tr><tr><td>UseMac</td><td>Use WiFi MAC address as device name </td></tr><tr><td>UseSerialNumber</td><td>Use device's serial number as device name </td></tr><tr><td>UsePhoneNumber</td><td>Use phone number used by the device as device name</td></tr><tr><td>SetManually</td><td>Set device name manually</td></tr></table> Note: <b>These are only effective on android devices</b>
  Future<chopper.Response<String>> qRCodeGroupIdDefaultIsHttpsDeviceNameTypeGet(
      {required String? groupID,
      required bool? isHttps,
      required String? deviceNameType}) {
    return _qRCodeGroupIdDefaultIsHttpsDeviceNameTypeGet(
        groupID: groupID, isHttps: isHttps, deviceNameType: deviceNameType);
  }

  ///Get QR Code
  ///@param GroupID ID of the group where you want to assign device.<br/> Group ID can be retrieved using [`Get details of all groups`](./#tag/Group/paths/~1group~11~1getAll/get) api.  Note:  <b>For Home group, GroupID is null.</b>
  ///@param IsHttps Whether it is 'https' or 'http'
  ///@param DeviceNameType <table><tr><th>Value</th><th>Description</th></tr><tr><td>UseSystemGenerated</td><td>Use system generated device name</td></tr><tr><td>UseIMEI</td><td>Use IMEI number as device name</td></tr><tr><td>UseMac</td><td>Use WiFi MAC address as device name </td></tr><tr><td>UseSerialNumber</td><td>Use device's serial number as device name </td></tr><tr><td>UsePhoneNumber</td><td>Use phone number used by the device as device name</td></tr><tr><td>SetManually</td><td>Set device name manually</td></tr></table> Note: <b>These are only effective on android devices</b>
  @Get(path: '/QRCode/{GroupId}/default/{IsHttps}/{DeviceNameType}')
  Future<chopper.Response<String>>
      _qRCodeGroupIdDefaultIsHttpsDeviceNameTypeGet(
          {@Path('GroupID') required String? groupID,
          @Path('IsHttps') required bool? isHttps,
          @Path('DeviceNameType') required String? deviceNameType});

  ///Get device details
  ///@param GroupID ID of the group <br/>   - To retrieve device details of particular <b>Group</b> using it's GroupID. Group ID can be retrieved using [`Get details of all groups`](./#tag/Group/paths/~1group~11~1getAll/get) api.  Note:  <b>For Home group, GroupID is null.</b>
  ///@param DeviceName Name of the device<br/>   - To retrieve device details using device name.
  ///@param MACaddress WiFi MAC address of the device<br/>    - To retrieve device details using WiFi MAC address of the device.
  Future<chopper.Response<DeviceModel>> deviceGet(
      {required String? groupID, String? deviceName, String? mACaddress}) {
    generatedMapping.putIfAbsent(
        DeviceModel$Item, () => DeviceModel$Item.fromJsonFactory);

    return _deviceGet(
        groupID: groupID, deviceName: deviceName, mACaddress: mACaddress);
  }

  ///Get device details
  ///@param GroupID ID of the group <br/>   - To retrieve device details of particular <b>Group</b> using it's GroupID. Group ID can be retrieved using [`Get details of all groups`](./#tag/Group/paths/~1group~11~1getAll/get) api.  Note:  <b>For Home group, GroupID is null.</b>
  ///@param DeviceName Name of the device<br/>   - To retrieve device details using device name.
  ///@param MACaddress WiFi MAC address of the device<br/>    - To retrieve device details using WiFi MAC address of the device.
  @Get(path: '/device')
  Future<chopper.Response<DeviceModel>> _deviceGet(
      {@Query('GroupID') required String? groupID,
      @Query('DeviceName') String? deviceName,
      @Query('MACaddress') String? mACaddress});

  ///Search device
  Future<chopper.Response<PostDeviceResponseModel>> devicePost(
      {required GetDevicePayLoad? body}) {
    generatedMapping.putIfAbsent(
        PostDeviceResponseModel, () => PostDeviceResponseModel.fromJsonFactory);

    return _devicePost(body: body);
  }

  ///Search device
  @Post(path: '/device')
  Future<chopper.Response<PostDeviceResponseModel>> _devicePost(
      {@Body() required GetDevicePayLoad? body});

  ///Delete device
  Future<chopper.Response<String>> devicePut({required DeleteDevice? body}) {
    return _devicePut(body: body);
  }

  ///Delete device
  @Put(path: '/device')
  Future<chopper.Response<String>> _devicePut(
      {@Body() required DeleteDevice? body});

  ///Get device details by ID
  ///@param DeviceId ID of the device allocated by the SureMDM.<br/> For eg. <b>22c245da-df91-4bd2-9ee9-75a9ccf61142</b>
  Future<chopper.Response<DeviceModel>> deviceDeviceIdGet(
      {required String? deviceId}) {
    generatedMapping.putIfAbsent(
        DeviceModel$Item, () => DeviceModel$Item.fromJsonFactory);

    return _deviceDeviceIdGet(deviceId: deviceId);
  }

  ///Get device details by ID
  ///@param DeviceId ID of the device allocated by the SureMDM.<br/> For eg. <b>22c245da-df91-4bd2-9ee9-75a9ccf61142</b>
  @Get(path: '/device/{DeviceId}')
  Future<chopper.Response<DeviceModel>> _deviceDeviceIdGet(
      {@Path('DeviceId') required String? deviceId});

  ///Get device name
  ///@param DeviceID ID of the device allocated by the SureMDM.<br/> For eg. <b>22c245da-df91-4bd2-9ee9-75a9ccf61142</b>
  Future<chopper.Response<String>> devicenameGet({required String? deviceID}) {
    return _devicenameGet(deviceID: deviceID);
  }

  ///Get device name
  ///@param DeviceID ID of the device allocated by the SureMDM.<br/> For eg. <b>22c245da-df91-4bd2-9ee9-75a9ccf61142</b>
  @Get(path: '/devicename')
  Future<chopper.Response<String>> _devicenameGet(
      {@Query('DeviceID') required String? deviceID});

  ///Change device name
  Future<chopper.Response<String>> devicenamePut(
      {required SetDeviceName? body}) {
    return _devicenamePut(body: body);
  }

  ///Change device name
  @Put(path: '/devicename')
  Future<chopper.Response<String>> _devicenamePut(
      {@Body() required SetDeviceName? body});

  ///Move devices to a Group
  Future<chopper.Response<String>> deviceassignmentPut(
      {required DeviceAssignment? body}) {
    generatedMapping.putIfAbsent(
        String$Item, () => String$Item.fromJsonFactory);

    return _deviceassignmentPut(body: body);
  }

  ///Move devices to a Group
  @Put(path: '/deviceassignment')
  Future<chopper.Response<String>> _deviceassignmentPut(
      {@Body() required DeviceAssignment? body});

  ///Move all devices to home group
  ///@param GroupID ID of the group allocated by the SureMDM.<br/>For eg. <b>22c245da-df91-4bd2-9ee9-75a9ccf61142</b><br/>Group ID can be retrieved using [`Get details of all groups`](./#tag/Group/paths/~1group~11~1getAll/get) api.
  Future<chopper.Response<String>> getdevicelistbygroupidGroupIDGet(
      {required String? groupID}) {
    return _getdevicelistbygroupidGroupIDGet(groupID: groupID);
  }

  ///Move all devices to home group
  ///@param GroupID ID of the group allocated by the SureMDM.<br/>For eg. <b>22c245da-df91-4bd2-9ee9-75a9ccf61142</b><br/>Group ID can be retrieved using [`Get details of all groups`](./#tag/Group/paths/~1group~11~1getAll/get) api.
  @Get(path: '/getdevicelistbygroupid/{GroupID}')
  Future<chopper.Response<String>> _getdevicelistbygroupidGroupIDGet(
      {@Path('GroupID') required String? groupID});

  ///Get installed applications on device
  ///@param DeviceId ID of the device allocated by the SureMDM.<br/> For eg. <b>22c245da-df91-4bd2-9ee9-75a9ccf61142</b><br/>Device ID can be retrieved using [`Get device details`](./#tag/Device/paths/~1device/get) api.
  Future<chopper.Response<InstalledAppsModel>>
      installedappAndroidDeviceIdDeviceGet({required String? deviceId}) {
    generatedMapping.putIfAbsent(
        InstalledAppsModel, () => InstalledAppsModel.fromJsonFactory);

    return _installedappAndroidDeviceIdDeviceGet(deviceId: deviceId);
  }

  ///Get installed applications on device
  ///@param DeviceId ID of the device allocated by the SureMDM.<br/> For eg. <b>22c245da-df91-4bd2-9ee9-75a9ccf61142</b><br/>Device ID can be retrieved using [`Get device details`](./#tag/Device/paths/~1device/get) api.
  @Get(path: '/installedapp/android/{DeviceId}/device')
  Future<chopper.Response<InstalledAppsModel>>
      _installedappAndroidDeviceIdDeviceGet(
          {@Path('DeviceId') required String? deviceId});

  ///Get Device logs
  ///@param DeviceId ID of the device allocated by the SureMDM.<br/> For eg. <b>22c245da-df91-4bd2-9ee9-75a9ccf61142</b><br/>Device ID can be retrieved using [`Get device details`](./#tag/Device/paths/~1device/get) api.
  Future<chopper.Response<DeviceLogOutput>> devicelogDeviceIdGet(
      {required String? deviceId}) {
    generatedMapping.putIfAbsent(
        DeviceLogOutput$Item, () => DeviceLogOutput$Item.fromJsonFactory);

    return _devicelogDeviceIdGet(deviceId: deviceId);
  }

  ///Get Device logs
  ///@param DeviceId ID of the device allocated by the SureMDM.<br/> For eg. <b>22c245da-df91-4bd2-9ee9-75a9ccf61142</b><br/>Device ID can be retrieved using [`Get device details`](./#tag/Device/paths/~1device/get) api.
  @Get(path: '/devicelog/{DeviceId}')
  Future<chopper.Response<DeviceLogOutput>> _devicelogDeviceIdGet(
      {@Path('DeviceId') required String? deviceId});

  ///Get call logs of device
  ///@param DeviceID ID of the device allocated by the SureMDM.<br/> For eg. <b>22c245da-df91-4bd2-9ee9-75a9ccf61142</b><br/>Device ID can be retrieved using [`Get device details`](./#tag/Device/paths/~1device/get) api.
  Future<chopper.Response<CallLogOutput>> calllogDeviceIDGet(
      {required String? deviceID}) {
    generatedMapping.putIfAbsent(
        CallLogOutput$Item, () => CallLogOutput$Item.fromJsonFactory);

    return _calllogDeviceIDGet(deviceID: deviceID);
  }

  ///Get call logs of device
  ///@param DeviceID ID of the device allocated by the SureMDM.<br/> For eg. <b>22c245da-df91-4bd2-9ee9-75a9ccf61142</b><br/>Device ID can be retrieved using [`Get device details`](./#tag/Device/paths/~1device/get) api.
  @Get(path: '/calllog/{DeviceID}')
  Future<chopper.Response<CallLogOutput>> _calllogDeviceIDGet(
      {@Path('DeviceID') required String? deviceID});

  ///Get SMS logs of device
  ///@param DeviceID ID of the device allocated by the SureMDM.<br/> For eg. <b>22c245da-df91-4bd2-9ee9-75a9ccf61142</b><br/>Device ID can be retrieved using [`Get device details`](./#tag/Device/paths/~1device/get) api.
  Future<chopper.Response<SMSLogOutput>> smslogDeviceIDGet(
      {required String? deviceID}) {
    generatedMapping.putIfAbsent(
        SMSLogOutput$Item, () => SMSLogOutput$Item.fromJsonFactory);

    return _smslogDeviceIDGet(deviceID: deviceID);
  }

  ///Get SMS logs of device
  ///@param DeviceID ID of the device allocated by the SureMDM.<br/> For eg. <b>22c245da-df91-4bd2-9ee9-75a9ccf61142</b><br/>Device ID can be retrieved using [`Get device details`](./#tag/Device/paths/~1device/get) api.
  @Get(path: '/smslog/{DeviceID}')
  Future<chopper.Response<SMSLogOutput>> _smslogDeviceIDGet(
      {@Path('DeviceID') required String? deviceID});

  ///Get device data usage
  ///@param DeviceID ID of the device allocated by the SureMDM.<br/> For eg. <b>22c245da-df91-4bd2-9ee9-75a9ccf61142</b><br/>Device ID can be retrieved using [`Get device details`](./#tag/Device/paths/~1device/get) api.
  ///@param StartDate Start date <br/>Format:(<b>YYYY-MM-DD</b>)
  ///@param EndDate End date <br/>Format:(<b>YYYY-MM-DD</b>)
  Future<chopper.Response<DataUsageOutput>>
      datausagepolicyDeviceIDStartDateEndDateGet(
          {required String? deviceID,
          required String? startDate,
          required String? endDate}) {
    generatedMapping.putIfAbsent(
        DataUsageOutput, () => DataUsageOutput.fromJsonFactory);

    return _datausagepolicyDeviceIDStartDateEndDateGet(
        deviceID: deviceID, startDate: startDate, endDate: endDate);
  }

  ///Get device data usage
  ///@param DeviceID ID of the device allocated by the SureMDM.<br/> For eg. <b>22c245da-df91-4bd2-9ee9-75a9ccf61142</b><br/>Device ID can be retrieved using [`Get device details`](./#tag/Device/paths/~1device/get) api.
  ///@param StartDate Start date <br/>Format:(<b>YYYY-MM-DD</b>)
  ///@param EndDate End date <br/>Format:(<b>YYYY-MM-DD</b>)
  @Get(path: '/datausagepolicy/{DeviceID}/{StartDate}/{EndDate}')
  Future<chopper.Response<DataUsageOutput>>
      _datausagepolicyDeviceIDStartDateEndDateGet(
          {@Path('DeviceID') required String? deviceID,
          @Path('StartDate') required String? startDate,
          @Path('EndDate') required String? endDate});

  ///Get unapproved devices
  Future<chopper.Response<UnapprovedOutput>> unapproveddeviceGet() {
    generatedMapping.putIfAbsent(
        UnapprovedOutput$Item, () => UnapprovedOutput$Item.fromJsonFactory);

    return _unapproveddeviceGet();
  }

  ///Get unapproved devices
  @Get(path: '/unapproveddevice')
  Future<chopper.Response<UnapprovedOutput>> _unapproveddeviceGet();

  ///Approve specific device(s)
  Future<chopper.Response<int>> unapproveddevicePut() {
    return _unapproveddevicePut();
  }

  ///Approve specific device(s)
  @Put(path: '/unapproveddevice')
  Future<chopper.Response<int>> _unapproveddevicePut();

  ///Approve all devices
  Future<chopper.Response<List<String>>> deviceapprovalGet() {
    return _deviceapprovalGet();
  }

  ///Approve all devices
  @Get(path: '/deviceapproval')
  Future<chopper.Response<List<String>>> _deviceapprovalGet();

  ///Get blacklisted devices
  Future<chopper.Response<BlacklistOutput>> blacklistdeviceGet() {
    generatedMapping.putIfAbsent(
        BlacklistOutput$Item, () => BlacklistOutput$Item.fromJsonFactory);

    return _blacklistdeviceGet();
  }

  ///Get blacklisted devices
  @Get(path: '/blacklistdevice')
  Future<chopper.Response<BlacklistOutput>> _blacklistdeviceGet();

  ///Blacklist device
  ///@param Deviceids Array of device ID(s) to be blacklisted.<br/><br/> For example,<br/>/BlacklistDevice/["51d9e5e2-25ea-4bd8-8f53-7360908d6288"]
  Future<chopper.Response<String>> blacklistDeviceDeviceIdsPut(
      {required List<String>? deviceids}) {
    return _blacklistDeviceDeviceIdsPut(deviceids: deviceids);
  }

  ///Blacklist device
  ///@param Deviceids Array of device ID(s) to be blacklisted.<br/><br/> For example,<br/>/BlacklistDevice/["51d9e5e2-25ea-4bd8-8f53-7360908d6288"]
  @Put(path: '/BlacklistDevice/{deviceIds}', optionalBody: true)
  Future<chopper.Response<String>> _blacklistDeviceDeviceIdsPut(
      {@Path('Deviceids') required List<String>? deviceids});

  ///Whitelist device
  Future<chopper.Response<String>> whitelistdevicePut(
      {required WhitelistPayload? body}) {
    return _whitelistdevicePut(body: body);
  }

  ///Whitelist device
  @Put(path: '/whitelistdevice')
  Future<chopper.Response<String>> _whitelistdevicePut(
      {@Body() required WhitelistPayload? body});

  ///Get last location of the device
  Future<chopper.Response<LastLocationModel>> locationPost(
      {required LocationPost$RequestBody? body}) {
    generatedMapping.putIfAbsent(
        LastLocationModel, () => LastLocationModel.fromJsonFactory);

    return _locationPost(body: body);
  }

  ///Get last location of the device
  @Post(path: '/location')
  Future<chopper.Response<LastLocationModel>> _locationPost(
      {@Body() required LocationPost$RequestBody? body});

  ///Get location of device
  ///@param DeviceID ID of the device allocated by the SureMDM.<br/> For eg. <b>22c245da-df91-4bd2-9ee9-75a9ccf61142</b><br/>Device ID can be retrieved using [`Get device details`](./#tag/Device/paths/~1device/get) api.
  ///@param FromTime From time<br/>  format: <b>YYYY-MM-DDTHH:MM:SS</b> <br/> Sample: <b>"2019-04-09T09:09:22"</b>
  ///@param ToTime To time<br/> format: <b>YYYY-MM-DDTHH:MM:SS</b> <br/> Sample: <b>"2019-04-09T09:09:22"</b>
  Future<chopper.Response<LocationModel>> locationGet(
      {required String? deviceID, String? fromTime, String? toTime}) {
    generatedMapping.putIfAbsent(
        LocationModel, () => LocationModel.fromJsonFactory);

    return _locationGet(deviceID: deviceID, fromTime: fromTime, toTime: toTime);
  }

  ///Get location of device
  ///@param DeviceID ID of the device allocated by the SureMDM.<br/> For eg. <b>22c245da-df91-4bd2-9ee9-75a9ccf61142</b><br/>Device ID can be retrieved using [`Get device details`](./#tag/Device/paths/~1device/get) api.
  ///@param FromTime From time<br/>  format: <b>YYYY-MM-DDTHH:MM:SS</b> <br/> Sample: <b>"2019-04-09T09:09:22"</b>
  ///@param ToTime To time<br/> format: <b>YYYY-MM-DDTHH:MM:SS</b> <br/> Sample: <b>"2019-04-09T09:09:22"</b>
  @Get(path: '/location')
  Future<chopper.Response<LocationModel>> _locationGet(
      {@Query('DeviceID') required String? deviceID,
      @Query('FromTime') String? fromTime,
      @Query('ToTime') String? toTime});

  ///Get pre-approved devices
  Future<chopper.Response<PreapprovedDeviceResponseModel>>
      preapproveddeviceGetDeviceListPost(
          {required GetPreapprovedDevicePayLoad? body}) {
    generatedMapping.putIfAbsent(PreapprovedDeviceResponseModel,
        () => PreapprovedDeviceResponseModel.fromJsonFactory);

    return _preapproveddeviceGetDeviceListPost(body: body);
  }

  ///Get pre-approved devices
  @Post(path: '/preapproveddevice/GetDeviceList')
  Future<chopper.Response<PreapprovedDeviceResponseModel>>
      _preapproveddeviceGetDeviceListPost(
          {@Body() required GetPreapprovedDevicePayLoad? body});

  ///Add pre-approved device
  Future<chopper.Response<int>> preapprovedDevicePost(
      {required AddDevicePreapprovedModel? body}) {
    generatedMapping.putIfAbsent(int$Item, () => int$Item.fromJsonFactory);

    return _preapprovedDevicePost(body: body);
  }

  ///Add pre-approved device
  @Post(path: '/PreapprovedDevice')
  Future<chopper.Response<int>> _preapprovedDevicePost(
      {@Body() required AddDevicePreapprovedModel? body});

  ///Delete pre-approved device
  Future<chopper.Response<String>> preapprovedDeviceDeleteDevicePost() {
    return _preapprovedDeviceDeleteDevicePost();
  }

  ///Delete pre-approved device
  @Post(path: '/PreapprovedDevice/DeleteDevice')
  Future<chopper.Response<String>> _preapprovedDeviceDeleteDevicePost();

  ///Apply dynamic job on device
  Future<chopper.Response> dynamicjobPost() {
    return _dynamicjobPost();
  }

  ///Apply dynamic job on device
  @Post(path: '/dynamicjob')
  Future<chopper.Response> _dynamicjobPost();

  ///Apply job on device
  Future<chopper.Response<bool>> jobassignmentPost() {
    return _jobassignmentPost();
  }

  ///Apply job on device
  @Post(path: '/jobassignment')
  Future<chopper.Response<bool>> _jobassignmentPost();

  ///Dynamic job queue status of device
  Future<chopper.Response<List<Object>>> dynamicjobqueuePost(
      {required DynamicJobQueueDevice? body}) {
    return _dynamicjobqueuePost(body: body);
  }

  ///Dynamic job queue status of device
  @Post(path: '/dynamicjobqueue')
  Future<chopper.Response<List<Object>>> _dynamicjobqueuePost(
      {@Body() required DynamicJobQueueDevice? body});

  ///Job queue status of device by ID
  ///@param DeviceID ID of the device allocated by the SureMDM.<br/> For eg. <b>22c245da-df91-4bd2-9ee9-75a9ccf61142</b><br/>Device ID can be retrieved using [`Get device details`](./#tag/Device/paths/~1device/get) api.
  ///@param ShowAll Whether to show all jobs in queue or only pending jobs. <br/><table><tr><th>true</th><td>Get all jobs</td></tr><tr><th>false</th><td>Get only pending jobs</td></tr></table>
  Future<chopper.Response<List<Object>>> jobqueueDeviceIDShowAllGet(
      {required String? deviceID, required bool? showAll}) {
    return _jobqueueDeviceIDShowAllGet(deviceID: deviceID, showAll: showAll);
  }

  ///Job queue status of device by ID
  ///@param DeviceID ID of the device allocated by the SureMDM.<br/> For eg. <b>22c245da-df91-4bd2-9ee9-75a9ccf61142</b><br/>Device ID can be retrieved using [`Get device details`](./#tag/Device/paths/~1device/get) api.
  ///@param ShowAll Whether to show all jobs in queue or only pending jobs. <br/><table><tr><th>true</th><td>Get all jobs</td></tr><tr><th>false</th><td>Get only pending jobs</td></tr></table>
  @Get(path: '/jobqueue/{DeviceID}/{ShowAll}')
  Future<chopper.Response<List<Object>>> _jobqueueDeviceIDShowAllGet(
      {@Path('DeviceID') required String? deviceID,
      @Path('ShowAll') required bool? showAll});

  ///Retrieves job queue history of device
  ///@param DeviceID ID of the device allocated by the SureMDM.<br/> For eg. <b>22c245da-df91-4bd2-9ee9-75a9ccf61142</b><br/>Device ID can be retrieved using [`Get device details`](./#tag/Device/paths/~1device/get) api.
  ///@param isSuccess Whether to show all jobs only deployed jobs or failed jobs. <br/><table><tr><th>true</th><td>Fetches successfully deployed jobs</td></tr><tr><th>false</th><td>Fetches failed jobs</td></tr></table>
  Future<chopper.Response<List<Object>>>
      jobqueueerrorhistoryDeviceIDIsSuccessGet(
          {required String? deviceID, required bool? isSuccess}) {
    return _jobqueueerrorhistoryDeviceIDIsSuccessGet(
        deviceID: deviceID, isSuccess: isSuccess);
  }

  ///Retrieves job queue history of device
  ///@param DeviceID ID of the device allocated by the SureMDM.<br/> For eg. <b>22c245da-df91-4bd2-9ee9-75a9ccf61142</b><br/>Device ID can be retrieved using [`Get device details`](./#tag/Device/paths/~1device/get) api.
  ///@param isSuccess Whether to show all jobs only deployed jobs or failed jobs. <br/><table><tr><th>true</th><td>Fetches successfully deployed jobs</td></tr><tr><th>false</th><td>Fetches failed jobs</td></tr></table>
  @Get(path: '/jobqueueerrorhistory/{DeviceID}/{isSuccess}')
  Future<chopper.Response<List<Object>>>
      _jobqueueerrorhistoryDeviceIDIsSuccessGet(
          {@Path('DeviceID') required String? deviceID,
          @Path('isSuccess') required bool? isSuccess});

  ///Job queue stats
  ///@param DeviceID ID of the device allocated by the SureMDM.<br/> For eg. <b>22c245da-df91-4bd2-9ee9-75a9ccf61142</b><br/>Device ID can be retrieved using [`Get device details`](./#tag/Device/paths/~1device/get) api.
  Future<chopper.Response<Object>> jobqueueerrorhistoryDeviceIDGet(
      {required String? deviceID}) {
    return _jobqueueerrorhistoryDeviceIDGet(deviceID: deviceID);
  }

  ///Job queue stats
  ///@param DeviceID ID of the device allocated by the SureMDM.<br/> For eg. <b>22c245da-df91-4bd2-9ee9-75a9ccf61142</b><br/>Device ID can be retrieved using [`Get device details`](./#tag/Device/paths/~1device/get) api.
  @Get(path: '/jobqueueerrorhistory/{DeviceID}')
  Future<chopper.Response<Object>> _jobqueueerrorhistoryDeviceIDGet(
      {@Path('DeviceID') required String? deviceID});

  ///Job queue status of device
  Future<chopper.Response<List<Object>>> jobqueuePost(
      {required JobQueueDevice? body}) {
    return _jobqueuePost(body: body);
  }

  ///Job queue status of device
  @Post(path: '/jobqueue')
  Future<chopper.Response<List<Object>>> _jobqueuePost(
      {@Body() required JobQueueDevice? body});

  ///Re-apply job
  Future<chopper.Response<int>> jobqueuePut({required ReapplyJobModel? body}) {
    return _jobqueuePut(body: body);
  }

  ///Re-apply job
  @Put(path: '/jobqueue')
  Future<chopper.Response<int>> _jobqueuePut(
      {@Body() required ReapplyJobModel? body});

  ///Delete blacklisted device
  ///@param Deviceids Array of device ID(s) to be deleted.<br/><br/> For example,<br/>/BlacklistDevice/["51d9e5e2-25ea-4bd8-8f53-7360908d6288"]
  Future<chopper.Response<String>> blacklistdeviceDeviceIdsDelete(
      {required List<String>? deviceids}) {
    return _blacklistdeviceDeviceIdsDelete(deviceids: deviceids);
  }

  ///Delete blacklisted device
  ///@param Deviceids Array of device ID(s) to be deleted.<br/><br/> For example,<br/>/BlacklistDevice/["51d9e5e2-25ea-4bd8-8f53-7360908d6288"]
  @Delete(path: '/blacklistdevice/{deviceIds}')
  Future<chopper.Response<String>> _blacklistdeviceDeviceIdsDelete(
      {@Path('Deviceids') required List<String>? deviceids});

  ///Get home group details
  Future<chopper.Response<GroupGetModel>> groupGet() {
    generatedMapping.putIfAbsent(
        GroupGetModel, () => GroupGetModel.fromJsonFactory);

    return _groupGet();
  }

  ///Get home group details
  @Get(path: '/group')
  Future<chopper.Response<GroupGetModel>> _groupGet();

  ///Create group
  Future<chopper.Response<String>> groupPost({required GroupModel? body}) {
    return _groupPost(body: body);
  }

  ///Create group
  @Post(path: '/group')
  Future<chopper.Response<String>> _groupPost(
      {@Body() required GroupModel? body});

  ///Edit group
  Future<chopper.Response<int>> groupPut({required EditGroupModel? body}) {
    generatedMapping.putIfAbsent(int$Item, () => int$Item.fromJsonFactory);

    return _groupPut(body: body);
  }

  ///Edit group
  @Put(path: '/group')
  Future<chopper.Response<int>> _groupPut(
      {@Body() required EditGroupModel? body});

  ///Get details of all groups
  Future<chopper.Response<GroupGetAllModel>> group1GetAllGet() {
    generatedMapping.putIfAbsent(
        GroupGetAllModel, () => GroupGetAllModel.fromJsonFactory);

    return _group1GetAllGet();
  }

  ///Get details of all groups
  @Get(path: '/group/1/getAll')
  Future<chopper.Response<GroupGetAllModel>> _group1GetAllGet();

  ///Get group details by ID
  ///@param GroupId ID of the group allocated by the SureMDM<br/>For eg. <b>22c245da-df91-4bd2-9ee9-75a9ccf61142</b>
  Future<chopper.Response<GroupByIDModel>> groupGroupIdGet(
      {required String? groupId}) {
    generatedMapping.putIfAbsent(
        GroupByIDModel, () => GroupByIDModel.fromJsonFactory);

    return _groupGroupIdGet(groupId: groupId);
  }

  ///Get group details by ID
  ///@param GroupId ID of the group allocated by the SureMDM<br/>For eg. <b>22c245da-df91-4bd2-9ee9-75a9ccf61142</b>
  @Get(path: '/group/{GroupId}')
  Future<chopper.Response<GroupByIDModel>> _groupGroupIdGet(
      {@Path('GroupId') required String? groupId});

  ///Delete group
  ///@param GroupId ID of particular group to be deleted<br/>For eg. <b>22c245da-df91-4bd2-9ee9-75a9ccf61142</b><br/>Group ID can be retrieved using [`Get details of all groups`](./#tag/Group/paths/~1group~11~1getAll/get) api.
  Future<chopper.Response<String>> groupGroupIdDelete(
      {required String? groupId}) {
    return _groupGroupIdDelete(groupId: groupId);
  }

  ///Delete group
  ///@param GroupId ID of particular group to be deleted<br/>For eg. <b>22c245da-df91-4bd2-9ee9-75a9ccf61142</b><br/>Group ID can be retrieved using [`Get details of all groups`](./#tag/Group/paths/~1group~11~1getAll/get) api.
  @Delete(path: '/group/{GroupId}')
  Future<chopper.Response<String>> _groupGroupIdDelete(
      {@Path('GroupId') required String? groupId});

  ///Apply job on group (Immediately)
  ///@param JobId ID of the job which you want to apply.<br/> For eg. <b>22c245da-df91-4bd2-9ee9-75a9ccf61142</b><br/>Job ID can be retrieved using [`Get all jobs`](./#tag/Job/paths/~1job/get) api.
  ///@param GroupId ID of the group allocated by the SureMDM.<br/>For eg. <b>22c245da-df91-4bd2-9ee9-75a9ccf61142</b><br/>Group ID can be retrieved using [`Get details of all groups`](./#tag/Group/paths/~1group~11~1getAll/get) api.
  Future<chopper.Response<String>> jobassignmentJobIdGroupIdPost(
      {required String? jobId, required String? groupId}) {
    return _jobassignmentJobIdGroupIdPost(jobId: jobId, groupId: groupId);
  }

  ///Apply job on group (Immediately)
  ///@param JobId ID of the job which you want to apply.<br/> For eg. <b>22c245da-df91-4bd2-9ee9-75a9ccf61142</b><br/>Job ID can be retrieved using [`Get all jobs`](./#tag/Job/paths/~1job/get) api.
  ///@param GroupId ID of the group allocated by the SureMDM.<br/>For eg. <b>22c245da-df91-4bd2-9ee9-75a9ccf61142</b><br/>Group ID can be retrieved using [`Get details of all groups`](./#tag/Group/paths/~1group~11~1getAll/get) api.
  @Post(path: '/jobassignment/{JobId}/{GroupId}', optionalBody: true)
  Future<chopper.Response<String>> _jobassignmentJobIdGroupIdPost(
      {@Path('JobId') required String? jobId,
      @Path('GroupId') required String? groupId});

  ///Apply job on group (Scheduled)
  ///@param JobId ID of the job which you want to apply.<br/> For eg. <b>22c245da-df91-4bd2-9ee9-75a9ccf61142</b><br/>Job ID can be retrieved using [`Get all jobs`](./#tag/Job/paths/~1job/get) api.
  ///@param GroupId ID of the group allocated by the SureMDM.<br/>For eg. <b>22c245da-df91-4bd2-9ee9-75a9ccf61142</b><br/>Group ID can be retrieved using [`Get details of all groups`](./#tag/Group/paths/~1group~11~1getAll/get) api.
  ///@param ServerScheduleTime Schedule date and time(UTC time) to apply job Date and Time format: YYYY/MM/DD HH:MM<br/> Note: Should be encoded in [Base64](https://en.wikipedia.org/wiki/Base64)<br/> e.g: 2019/04/16 12:23 ➜ <b>MjAxOS8wNC8xNiAxMjoyMw==</b> <br>Pass 'null' ➜ <b>bnVsbA==</b> if not required.
  ///@param RecursiveScheduleTime Auto apply job on repeat<br/> ### Periodically   Auto apply job on regular interval (specified in minutes)     <br/>Sample: <b>"12"</b><br>Note: <b>Minimum interval can be 5 minutes</b> ### Days and Time   Auto apply job on recursive schedule time and days              {             "Time":"10:41",             "Days":["0","5","6"],             "GMTTimeInterval":-330         }   <table><tr><th>Parameter<br></th><th>Description<br></th></tr><tr><td>Time<br></td><td>HH:MM (24 hour format)<br>Eg: 10:41</td></tr><tr><td>Days<br></td><td>Days to repeat<br/>0 - Sunday<br>1 - Monday<br>2 - Tuesday<br>3 - Wednesday<br>4 - Thursday<br>5 - Friday<br>6 - Saturday<br>Eg: <span style="font-weight:400;font-style:normal">["1","2","3","4","5"]</span><br></td></tr><tr><td>GMTTimeInterval<br></td><td>Time offset in minutes preceding with '-'<br>Eg: <b>-330</b> for GMT"+05:30"<br></td></tr></table>  Note:  Should be encoded in [Base64](https://en.wikipedia.org/wiki/Base64) <br>Pass "0" ➜ <b>MA==</b> if not required.
  ///@param DownloadType Select network type for applying job.<br><table><tr><th>Value</th><th>Description</th></tr><tr><td>0</td><td>WiFi</td></tr><tr><td>1</td><td>Mobile data</td></tr><tr><td>2</td><td>Any</td></tr></table> <br>Note: <b>Only effective on jobs which have file attachments.(e.g, File transfer/Install app job)
  Future<chopper.Response<String>>
      jobassignmentJobIdGroupIdServerScheduleTimeRecursiveScheduleTimeDownloadTypePost(
          {required String? jobId,
          required String? groupId,
          required String? serverScheduleTime,
          required String? recursiveScheduleTime,
          required String? downloadType}) {
    return _jobassignmentJobIdGroupIdServerScheduleTimeRecursiveScheduleTimeDownloadTypePost(
        jobId: jobId,
        groupId: groupId,
        serverScheduleTime: serverScheduleTime,
        recursiveScheduleTime: recursiveScheduleTime,
        downloadType: downloadType);
  }

  ///Apply job on group (Scheduled)
  ///@param JobId ID of the job which you want to apply.<br/> For eg. <b>22c245da-df91-4bd2-9ee9-75a9ccf61142</b><br/>Job ID can be retrieved using [`Get all jobs`](./#tag/Job/paths/~1job/get) api.
  ///@param GroupId ID of the group allocated by the SureMDM.<br/>For eg. <b>22c245da-df91-4bd2-9ee9-75a9ccf61142</b><br/>Group ID can be retrieved using [`Get details of all groups`](./#tag/Group/paths/~1group~11~1getAll/get) api.
  ///@param ServerScheduleTime Schedule date and time(UTC time) to apply job Date and Time format: YYYY/MM/DD HH:MM<br/> Note: Should be encoded in [Base64](https://en.wikipedia.org/wiki/Base64)<br/> e.g: 2019/04/16 12:23 ➜ <b>MjAxOS8wNC8xNiAxMjoyMw==</b> <br>Pass 'null' ➜ <b>bnVsbA==</b> if not required.
  ///@param RecursiveScheduleTime Auto apply job on repeat<br/> ### Periodically   Auto apply job on regular interval (specified in minutes)     <br/>Sample: <b>"12"</b><br>Note: <b>Minimum interval can be 5 minutes</b> ### Days and Time   Auto apply job on recursive schedule time and days              {             "Time":"10:41",             "Days":["0","5","6"],             "GMTTimeInterval":-330         }   <table><tr><th>Parameter<br></th><th>Description<br></th></tr><tr><td>Time<br></td><td>HH:MM (24 hour format)<br>Eg: 10:41</td></tr><tr><td>Days<br></td><td>Days to repeat<br/>0 - Sunday<br>1 - Monday<br>2 - Tuesday<br>3 - Wednesday<br>4 - Thursday<br>5 - Friday<br>6 - Saturday<br>Eg: <span style="font-weight:400;font-style:normal">["1","2","3","4","5"]</span><br></td></tr><tr><td>GMTTimeInterval<br></td><td>Time offset in minutes preceding with '-'<br>Eg: <b>-330</b> for GMT"+05:30"<br></td></tr></table>  Note:  Should be encoded in [Base64](https://en.wikipedia.org/wiki/Base64) <br>Pass "0" ➜ <b>MA==</b> if not required.
  ///@param DownloadType Select network type for applying job.<br><table><tr><th>Value</th><th>Description</th></tr><tr><td>0</td><td>WiFi</td></tr><tr><td>1</td><td>Mobile data</td></tr><tr><td>2</td><td>Any</td></tr></table> <br>Note: <b>Only effective on jobs which have file attachments.(e.g, File transfer/Install app job)
  @Post(
      path:
          '/jobassignment/{JobId}/{GroupId}/{ServerScheduleTime}/{RecursiveScheduleTime}/{DownloadType}',
      optionalBody: true)
  Future<chopper.Response<String>>
      _jobassignmentJobIdGroupIdServerScheduleTimeRecursiveScheduleTimeDownloadTypePost(
          {@Path('JobId') required String? jobId,
          @Path('GroupId') required String? groupId,
          @Path('ServerScheduleTime') required String? serverScheduleTime,
          @Path('RecursiveScheduleTime') required String? recursiveScheduleTime,
          @Path('DownloadType') required String? downloadType});

  ///Apply job on group
  Future<chopper.Response<String>> jobassignmentGroupPost() {
    return _jobassignmentGroupPost();
  }

  ///Apply job on group
  @Post(path: '/jobassignment/group')
  Future<chopper.Response<String>> _jobassignmentGroupPost();

  ///Get job deployment status of group
  ///@param GroupId ID(s) of the group allocated by the SureMDM.<br/>For eg. <b>22c245da-df91-4bd2-9ee9-75a9ccf61142</b><br/>Group ID can be retrieved using [`Get details of all groups`](./#tag/Group/paths/~1group~11~1getAll/get) api.  <br/>Note: <b>Use [CSV](https://en.wikipedia.org/wiki/Comma-separated_values) format to send multiple device IDs.</b>
  ///@param Type Type of job.<br/><table><tr><th>Value</th><th>Description</th></tr><tr><td>0</td><td>Pending to apply jobs</td></tr><tr><td>1</td><td>Successfully applied jobs</td></tr><tr><td>2</td><td>Failed to apply jobs</td></tr><tr><td>3</td><td>In progress jobs</td></tr></table>
  Future<chopper.Response<List<Object>>> groupJobQueueGroupIdTypeGet(
      {required String? groupId, required int? type}) {
    return _groupJobQueueGroupIdTypeGet(groupId: groupId, type: type);
  }

  ///Get job deployment status of group
  ///@param GroupId ID(s) of the group allocated by the SureMDM.<br/>For eg. <b>22c245da-df91-4bd2-9ee9-75a9ccf61142</b><br/>Group ID can be retrieved using [`Get details of all groups`](./#tag/Group/paths/~1group~11~1getAll/get) api.  <br/>Note: <b>Use [CSV](https://en.wikipedia.org/wiki/Comma-separated_values) format to send multiple device IDs.</b>
  ///@param Type Type of job.<br/><table><tr><th>Value</th><th>Description</th></tr><tr><td>0</td><td>Pending to apply jobs</td></tr><tr><td>1</td><td>Successfully applied jobs</td></tr><tr><td>2</td><td>Failed to apply jobs</td></tr><tr><td>3</td><td>In progress jobs</td></tr></table>
  @Get(path: '/GroupJobQueue/{GroupId}/{Type}')
  Future<chopper.Response<List<Object>>> _groupJobQueueGroupIdTypeGet(
      {@Path('GroupId') required String? groupId,
      @Path('Type') required int? type});

  ///Get all the tags
  Future<chopper.Response<GetTagsOutputModel>> tagsGet() {
    generatedMapping.putIfAbsent(
        GetTagsOutputModel$Item, () => GetTagsOutputModel$Item.fromJsonFactory);

    return _tagsGet();
  }

  ///Get all the tags
  @Get(path: '/tags')
  Future<chopper.Response<GetTagsOutputModel>> _tagsGet();

  ///Create a tag
  Future<chopper.Response<String>> tagsPost({required TagCreateModel? body}) {
    return _tagsPost(body: body);
  }

  ///Create a tag
  @Post(path: '/tags')
  Future<chopper.Response<String>> _tagsPost(
      {@Body() required TagCreateModel? body});

  ///Edit tag
  Future<chopper.Response<String>> tagsPut({required TagModifyModel? body}) {
    return _tagsPut(body: body);
  }

  ///Edit tag
  @Put(path: '/tags')
  Future<chopper.Response<String>> _tagsPut(
      {@Body() required TagModifyModel? body});

  ///Apply job on tag
  ///@param JobId ID of the job which you want to apply.<br/> For eg. <b>22c245da-df91-4bd2-9ee9-75a9ccf61142</b><br/>Job ID can be retrieved using [`Get all jobs`](./#tag/Job/paths/~1job/get) api.
  ///@param TagId ID of the tag allocated by the SureMDM.<br/>For eg. <b>22c245da-df91-4bd2-9ee9-75a9ccf61142</b><br/>Tag ID can be retrieved using [`Get all the tags`](./#tag/Tags/paths/~1tags/get) api.
  ///@param ServerScheduleTime Schedule date and time(UTC time) to apply job Date and Time format: YYYY/MM/DD HH:MM<br/> Note: Should be encoded in [Base64](https://en.wikipedia.org/wiki/Base64)<br/> e.g: 2019/04/16 12:23 ➜ <b>MjAxOS8wNC8xNiAxMjoyMw==</b> <br>Pass 'null' ➜ <b>bnVsbA==</b> if not required.
  ///@param RecursiveScheduleTime Auto apply job on repeat<br/> ### Periodically   Auto apply job on regular interval (specified in minutes)     <br/>Sample: <b>"12"</b><br>Note: <b>Minimum interval can be 5 minutes</b> ### Days and Time   Auto apply job on recursive schedule time and days              {             "Time":"10:41",             "Days":["0","5","6"],             "GMTTimeInterval":-330         }   <table><tr><th>Parameter<br></th><th>Description<br></th></tr><tr><td>Time<br></td><td>HH:MM (24 hour format)<br>Eg: 10:41</td></tr><tr><td>Days<br></td><td>Days to repeat<br/>0 - Sunday<br>1 - Monday<br>2 - Tuesday<br>3 - Wednesday<br>4 - Thursday<br>5 - Friday<br>6 - Saturday<br>Eg: <span style="font-weight:400;font-style:normal">["1","2","3","4","5"]</span><br></td></tr><tr><td>GMTTimeInterval<br></td><td>Time offset in minutes preceding with '-'<br>Eg: <b>-330</b> for GMT"+05:30"<br></td></tr></table>  Note:  Should be encoded in [Base64](https://en.wikipedia.org/wiki/Base64) <br>Pass "0" ➜ <b>MA==</b> if not required.
  ///@param DownloadType Select network type for applying job.<br><table><tr><th>Value</th><th>Description</th></tr><tr><td>0</td><td>WiFi</td></tr><tr><td>1</td><td>Mobile data</td></tr><tr><td>2</td><td>Any</td></tr></table> <br>Note: <b>Only effective on jobs which have file attachments.(e.g, File transfer/Install app job)
  Future<chopper.Response<String>>
      jobassignmentJobIdTagIdServerScheduleTimeRecursiveScheduleTimeDownloadTypeTruePost(
          {required String? jobId,
          required String? tagId,
          required String? serverScheduleTime,
          required String? recursiveScheduleTime,
          required String? downloadType}) {
    return _jobassignmentJobIdTagIdServerScheduleTimeRecursiveScheduleTimeDownloadTypeTruePost(
        jobId: jobId,
        tagId: tagId,
        serverScheduleTime: serverScheduleTime,
        recursiveScheduleTime: recursiveScheduleTime,
        downloadType: downloadType);
  }

  ///Apply job on tag
  ///@param JobId ID of the job which you want to apply.<br/> For eg. <b>22c245da-df91-4bd2-9ee9-75a9ccf61142</b><br/>Job ID can be retrieved using [`Get all jobs`](./#tag/Job/paths/~1job/get) api.
  ///@param TagId ID of the tag allocated by the SureMDM.<br/>For eg. <b>22c245da-df91-4bd2-9ee9-75a9ccf61142</b><br/>Tag ID can be retrieved using [`Get all the tags`](./#tag/Tags/paths/~1tags/get) api.
  ///@param ServerScheduleTime Schedule date and time(UTC time) to apply job Date and Time format: YYYY/MM/DD HH:MM<br/> Note: Should be encoded in [Base64](https://en.wikipedia.org/wiki/Base64)<br/> e.g: 2019/04/16 12:23 ➜ <b>MjAxOS8wNC8xNiAxMjoyMw==</b> <br>Pass 'null' ➜ <b>bnVsbA==</b> if not required.
  ///@param RecursiveScheduleTime Auto apply job on repeat<br/> ### Periodically   Auto apply job on regular interval (specified in minutes)     <br/>Sample: <b>"12"</b><br>Note: <b>Minimum interval can be 5 minutes</b> ### Days and Time   Auto apply job on recursive schedule time and days              {             "Time":"10:41",             "Days":["0","5","6"],             "GMTTimeInterval":-330         }   <table><tr><th>Parameter<br></th><th>Description<br></th></tr><tr><td>Time<br></td><td>HH:MM (24 hour format)<br>Eg: 10:41</td></tr><tr><td>Days<br></td><td>Days to repeat<br/>0 - Sunday<br>1 - Monday<br>2 - Tuesday<br>3 - Wednesday<br>4 - Thursday<br>5 - Friday<br>6 - Saturday<br>Eg: <span style="font-weight:400;font-style:normal">["1","2","3","4","5"]</span><br></td></tr><tr><td>GMTTimeInterval<br></td><td>Time offset in minutes preceding with '-'<br>Eg: <b>-330</b> for GMT"+05:30"<br></td></tr></table>  Note:  Should be encoded in [Base64](https://en.wikipedia.org/wiki/Base64) <br>Pass "0" ➜ <b>MA==</b> if not required.
  ///@param DownloadType Select network type for applying job.<br><table><tr><th>Value</th><th>Description</th></tr><tr><td>0</td><td>WiFi</td></tr><tr><td>1</td><td>Mobile data</td></tr><tr><td>2</td><td>Any</td></tr></table> <br>Note: <b>Only effective on jobs which have file attachments.(e.g, File transfer/Install app job)
  @Post(
      path:
          '/jobassignment/{JobId}/{TagId}/{ServerScheduleTime}/{RecursiveScheduleTime}/{DownloadType}/true',
      optionalBody: true)
  Future<chopper.Response<String>>
      _jobassignmentJobIdTagIdServerScheduleTimeRecursiveScheduleTimeDownloadTypeTruePost(
          {@Path('JobId') required String? jobId,
          @Path('TagId') required String? tagId,
          @Path('ServerScheduleTime') required String? serverScheduleTime,
          @Path('RecursiveScheduleTime') required String? recursiveScheduleTime,
          @Path('DownloadType') required String? downloadType});

  ///Apply job on tag
  Future<chopper.Response<String>> jobassignmentTagsPost() {
    return _jobassignmentTagsPost();
  }

  ///Apply job on tag
  @Post(path: '/jobassignment/tags')
  Future<chopper.Response<String>> _jobassignmentTagsPost();

  ///Delete tag
  ///@param TagID ID of particular tag to be deleted.<br/>Tag ID can be retrieved using [`Get all the tags`](./#tag/Tags/paths/~1tags/get) api.
  Future<chopper.Response<String>> tagsTagIDDelete({required String? tagID}) {
    return _tagsTagIDDelete(tagID: tagID);
  }

  ///Delete tag
  ///@param TagID ID of particular tag to be deleted.<br/>Tag ID can be retrieved using [`Get all the tags`](./#tag/Tags/paths/~1tags/get) api.
  @Delete(path: '/tags/{TagID}')
  Future<chopper.Response<String>> _tagsTagIDDelete(
      {@Path('TagID') required String? tagID});

  ///Assign tag to device
  Future<chopper.Response<String>> deviceAssignmentTagsAssignToDevicesPut(
      {required TagsAssignToDeviceModel? body}) {
    generatedMapping.putIfAbsent(
        String$Item, () => String$Item.fromJsonFactory);

    return _deviceAssignmentTagsAssignToDevicesPut(body: body);
  }

  ///Assign tag to device
  @Put(path: '/DeviceAssignment/TagsAssignToDevices')
  Future<chopper.Response<String>> _deviceAssignmentTagsAssignToDevicesPut(
      {@Body() required TagsAssignToDeviceModel? body});

  ///Get run scripts
  Future<chopper.Response<RunScriptOutputModel>> jobRunscriptGet() {
    generatedMapping.putIfAbsent(
        RunScriptOutputModel, () => RunScriptOutputModel.fromJsonFactory);

    return _jobRunscriptGet();
  }

  ///Get run scripts
  @Get(path: '/job/runscript')
  Future<chopper.Response<RunScriptOutputModel>> _jobRunscriptGet();

  ///Get all jobs
  ///@param FolderId ID of the job folder where job is stored.<br/>Folder ID can be retrieved using [`Get all Folders`](./#tag/Job-folders/paths/~1jobfolder~1all/get) api.<br>Note: <b>For home(default) folder ID is null</b>
  Future<chopper.Response<JobOutputModel>> jobGet({required String? folderId}) {
    generatedMapping.putIfAbsent(
        JobOutputModel, () => JobOutputModel.fromJsonFactory);

    return _jobGet(folderId: folderId);
  }

  ///Get all jobs
  ///@param FolderId ID of the job folder where job is stored.<br/>Folder ID can be retrieved using [`Get all Folders`](./#tag/Job-folders/paths/~1jobfolder~1all/get) api.<br>Note: <b>For home(default) folder ID is null</b>
  @Get(path: '/job')
  Future<chopper.Response<JobOutputModel>> _jobGet(
      {@Query('FolderId') required String? folderId});

  ///Create job
  Future<chopper.Response> jobPost() {
    return _jobPost();
  }

  ///Create job
  @Post(path: '/job')
  Future<chopper.Response> _jobPost();

  ///Edit job
  Future<chopper.Response> jobPut() {
    return _jobPut();
  }

  ///Edit job
  @Put(path: '/job')
  Future<chopper.Response> _jobPut();

  ///Delete job
  Future<chopper.Response<Object>> jobDelete({required JobDeleteModel? body}) {
    return _jobDelete(body: body);
  }

  ///Delete job
  @Delete(path: '/job')
  Future<chopper.Response<Object>> _jobDelete(
      {@Body() required JobDeleteModel? body});

  ///Upload files
  Future<chopper.Response<String>> uploadUploadfilePost(
      {required UploadFileModel? body}) {
    return _uploadUploadfilePost(body: body);
  }

  ///Upload files
  @Post(path: '/upload/uploadfile')
  Future<chopper.Response<String>> _uploadUploadfilePost(
      {@Body() required UploadFileModel? body});

  ///Get all folders
  Future<chopper.Response<GetJobFolderOutPutModel>> jobfolderAllGet() {
    generatedMapping.putIfAbsent(GetJobFolderOutPutModel$Item,
        () => GetJobFolderOutPutModel$Item.fromJsonFactory);

    return _jobfolderAllGet();
  }

  ///Get all folders
  @Get(path: '/jobfolder/all')
  Future<chopper.Response<GetJobFolderOutPutModel>> _jobfolderAllGet();

  ///Create folder
  Future<chopper.Response<CreateJobFolderOutPutModel>> jobfolderPost(
      {required CreateJobFolder? body}) {
    generatedMapping.putIfAbsent(CreateJobFolderOutPutModel,
        () => CreateJobFolderOutPutModel.fromJsonFactory);

    return _jobfolderPost(body: body);
  }

  ///Create folder
  @Post(path: '/jobfolder')
  Future<chopper.Response<CreateJobFolderOutPutModel>> _jobfolderPost(
      {@Body() required CreateJobFolder? body});

  ///Set folder name
  Future<chopper.Response<String>> jobfolderPut(
      {required EditJobFolder? body}) {
    return _jobfolderPut(body: body);
  }

  ///Set folder name
  @Put(path: '/jobfolder')
  Future<chopper.Response<String>> _jobfolderPut(
      {@Body() required EditJobFolder? body});

  ///Delete folder
  ///@param folderID ID of the job folder you want to delete
  Future<chopper.Response<String>> jobfolderFolderIDDelete(
      {required Object? folderID}) {
    return _jobfolderFolderIDDelete(folderID: folderID);
  }

  ///Delete folder
  ///@param folderID ID of the job folder you want to delete
  @Delete(path: '/jobfolder/{folderID}')
  Future<chopper.Response<String>> _jobfolderFolderIDDelete(
      {@Path('folderID') required Object? folderID});

  ///Get reports list
  Future<chopper.Response<ReportOutPutModel>> reportGet() {
    generatedMapping.putIfAbsent(
        ReportOutPutModel, () => ReportOutPutModel.fromJsonFactory);

    return _reportGet();
  }

  ///Get reports list
  @Get(path: '/report')
  Future<chopper.Response<ReportOutPutModel>> _reportGet();

  ///Request reports
  Future<chopper.Response<String>> reportPost() {
    return _reportPost();
  }

  ///Request reports
  @Post(path: '/report')
  Future<chopper.Response<String>> _reportPost();

  ///Get requested reports
  ///@param Type Type of the report<br/> 1: On-Demand Reports List<br/> 2: Scheduled Reports List
  Future<chopper.Response<ReportModel>> reportType1Get({required int? type}) {
    generatedMapping.putIfAbsent(
        ReportModel, () => ReportModel.fromJsonFactory);

    return _reportType1Get(type: type);
  }

  ///Get requested reports
  ///@param Type Type of the report<br/> 1: On-Demand Reports List<br/> 2: Scheduled Reports List
  @Get(path: '/report/{Type}/1')
  Future<chopper.Response<ReportModel>> _reportType1Get(
      {@Path('Type') required int? type});

  ///Delete scheduled report
  ///@param ReportID ID of the report
  Future<chopper.Response<String>> reportReportIDDelete(
      {required Object? reportID}) {
    return _reportReportIDDelete(reportID: reportID);
  }

  ///Delete scheduled report
  ///@param ReportID ID of the report
  @Delete(path: '/report/{ReportID}')
  Future<chopper.Response<String>> _reportReportIDDelete(
      {@Path('ReportID') required Object? reportID});

  ///Fetch all messages
  ///@param Offset Result offset value
  ///@param Limit Limit number of results
  ///@param Order Sorting order of results<br/><b>asc: </b>Ascending order<br/><b>desc: </b>Descending order
  ///@param SortColumn Column name on which sorting order will be applied<br/> <b>Available columns for sorting</b><br/>   - DeviceName   - Subject   - TimeStamp
  ///@param Search Search value<br/> Note: <b>It should be encoded in [Base64](https://en.wikipedia.org/wiki/Base64)</b><br/> <b>Example: </b><br/>null ➜ bnVsbA==
  Future<chopper.Response<AllMessageModel>>
      messageOffsetLimitOrderSortColumnSearchGet(
          {required String? offset,
          required String? limit,
          required String? order,
          required String? sortColumn,
          required String? search}) {
    generatedMapping.putIfAbsent(
        AllMessageModel, () => AllMessageModel.fromJsonFactory);

    return _messageOffsetLimitOrderSortColumnSearchGet(
        offset: offset,
        limit: limit,
        order: order,
        sortColumn: sortColumn,
        search: search);
  }

  ///Fetch all messages
  ///@param Offset Result offset value
  ///@param Limit Limit number of results
  ///@param Order Sorting order of results<br/><b>asc: </b>Ascending order<br/><b>desc: </b>Descending order
  ///@param SortColumn Column name on which sorting order will be applied<br/> <b>Available columns for sorting</b><br/>   - DeviceName   - Subject   - TimeStamp
  ///@param Search Search value<br/> Note: <b>It should be encoded in [Base64](https://en.wikipedia.org/wiki/Base64)</b><br/> <b>Example: </b><br/>null ➜ bnVsbA==
  @Get(path: '/message/{Offset}/{Limit}/{Order}/{SortColumn}/{Search}')
  Future<chopper.Response<AllMessageModel>>
      _messageOffsetLimitOrderSortColumnSearchGet(
          {@Path('Offset') required String? offset,
          @Path('Limit') required String? limit,
          @Path('Order') required String? order,
          @Path('SortColumn') required String? sortColumn,
          @Path('Search') required String? search});

  ///Get message details by ID
  ///@param messageId ID of the message
  Future<chopper.Response<MessageIdModel>> messageMessageIdGet(
      {required String? messageId}) {
    generatedMapping.putIfAbsent(
        MessageIdModel, () => MessageIdModel.fromJsonFactory);

    return _messageMessageIdGet(messageId: messageId);
  }

  ///Get message details by ID
  ///@param messageId ID of the message
  @Get(path: '/message/{messageId}')
  Future<chopper.Response<MessageIdModel>> _messageMessageIdGet(
      {@Path('messageId') required String? messageId});

  ///Fetch messages
  ///@param FetchRead <table><tr><th>Value</th><th>Description</th></tr><tr><td>true</td><td>Fetches read messages<br></td></tr><tr><td>false<br></td><td>Fetches unread messages<br></td></tr></table>
  Future<chopper.Response<MessageModel>> messageGet({bool? fetchRead}) {
    generatedMapping.putIfAbsent(
        MessageModel, () => MessageModel.fromJsonFactory);

    return _messageGet(fetchRead: fetchRead);
  }

  ///Fetch messages
  ///@param FetchRead <table><tr><th>Value</th><th>Description</th></tr><tr><td>true</td><td>Fetches read messages<br></td></tr><tr><td>false<br></td><td>Fetches unread messages<br></td></tr></table>
  @Get(path: '/message')
  Future<chopper.Response<MessageModel>> _messageGet(
      {@Query('FetchRead') bool? fetchRead});

  ///Mark messages
  Future<chopper.Response<String>> messagePut({required MarkMessage? body}) {
    return _messagePut(body: body);
  }

  ///Mark messages
  @Put(path: '/message')
  Future<chopper.Response<String>> _messagePut(
      {@Body() required MarkMessage? body});

  ///Delete message
  ///@param id ID(s) of message which you want to delete.<br/>  <b>sample:</b><br/>/message?id=["80833"]
  Future<chopper.Response<String>> messageDelete({required List<String>? id}) {
    return _messageDelete(id: id);
  }

  ///Delete message
  ///@param id ID(s) of message which you want to delete.<br/>  <b>sample:</b><br/>/message?id=["80833"]
  @Delete(path: '/message')
  Future<chopper.Response<String>> _messageDelete(
      {@Query('id') required List<String>? id});

  ///Custom delete message
  ///@param days Number of days
  Future<chopper.Response<String>> messageDaysCustomdeleteDelete(
      {required int? days}) {
    return _messageDaysCustomdeleteDelete(days: days);
  }

  ///Custom delete message
  ///@param days Number of days
  @Delete(path: '/Message/{days}/customdelete')
  Future<chopper.Response<String>> _messageDaysCustomdeleteDelete(
      {@Path('days') required int? days});

  ///Customer details
  Future<chopper.Response<CustomerOutputModel>> customerGet() {
    generatedMapping.putIfAbsent(
        CustomerOutputModel, () => CustomerOutputModel.fromJsonFactory);

    return _customerGet();
  }

  ///Customer details
  @Get(path: '/customer')
  Future<chopper.Response<CustomerOutputModel>> _customerGet();

  ///Get API version
  Future<chopper.Response<String>> versionGet() {
    return _versionGet();
  }

  ///Get API version
  @Get(path: '/version')
  Future<chopper.Response<String>> _versionGet();

  ///Get account details
  Future<chopper.Response<AccountDetailsModel>> accountGet() {
    generatedMapping.putIfAbsent(
        AccountDetailsModel, () => AccountDetailsModel.fromJsonFactory);

    return _accountGet();
  }

  ///Get account details
  @Get(path: '/account')
  Future<chopper.Response<AccountDetailsModel>> _accountGet();
}

typedef $JsonFactory<T> = T Function(Map<String, dynamic> json);

class $CustomJsonDecoder {
  $CustomJsonDecoder(this.factories);

  final Map<Type, $JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (isTypeOf<T, Map>()) {
      return entity;
    }

    if (isTypeOf<T, Iterable>()) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! $JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}

class $JsonSerializableConverter extends chopper.JsonConverter {
  @override
  chopper.Response<ResultType> convertResponse<ResultType, Item>(
      chopper.Response response) {
    if (response.bodyString.isEmpty) {
      // In rare cases, when let's say 204 (no content) is returned -
      // we cannot decode the missing json with the result type specified
      return chopper.Response(response.base, null, error: response.error);
    }

    final jsonRes = super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(
        body: $jsonDecoder.decode<Item>(jsonRes.body) as ResultType);
  }
}

final $jsonDecoder = $CustomJsonDecoder(generatedMapping);
