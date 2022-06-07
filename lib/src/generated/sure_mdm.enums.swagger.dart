import 'package:json_annotation/json_annotation.dart';

enum ReapplyJobModelStatus {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('Error')
  error,
  @JsonValue('Pending')
  pending,
  @JsonValue('Inprogress')
  inprogress,
  @JsonValue('Deployed')
  deployed
}

const $ReapplyJobModelStatusMap = {
  ReapplyJobModelStatus.error: 'Error',
  ReapplyJobModelStatus.pending: 'Pending',
  ReapplyJobModelStatus.inprogress: 'Inprogress',
  ReapplyJobModelStatus.deployed: 'Deployed'
};

enum RefreshDeviceJobType {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('Refresh_Device')
  refreshDevice
}

const $RefreshDeviceJobTypeMap = {
  RefreshDeviceJobType.refreshDevice: 'Refresh_Device'
};

enum GetDeviceAppsJobType {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('Get_Device_Apps')
  getDeviceApps
}

const $GetDeviceAppsJobTypeMap = {
  GetDeviceAppsJobType.getDeviceApps: 'Get_Device_Apps'
};

enum LockDeviceJobType {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('Lock')
  lock
}

const $LockDeviceJobTypeMap = {LockDeviceJobType.lock: 'Lock'};

enum RebootDeviceJobType {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('Reboot')
  reboot
}

const $RebootDeviceJobTypeMap = {RebootDeviceJobType.reboot: 'Reboot'};

enum BuzzJobType {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('Remote_Buzz')
  remoteBuzz
}

const $BuzzJobTypeMap = {BuzzJobType.remoteBuzz: 'Remote_Buzz'};

enum ChangePinJobType {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('Change_Pin')
  changePin
}

const $ChangePinJobTypeMap = {ChangePinJobType.changePin: 'Change_Pin'};

enum CallTrackingJobType {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('Apply_Call_Tracking')
  applyCallTracking
}

const $CallTrackingJobTypeMap = {
  CallTrackingJobType.applyCallTracking: 'Apply_Call_Tracking'
};

enum SMSTrackingJobType {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('Apply_SMS_Tracking')
  applySmsTracking
}

const $SMSTrackingJobTypeMap = {
  SMSTrackingJobType.applySmsTracking: 'Apply_SMS_Tracking'
};

enum WipeJobType {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('Wipe')
  wipe
}

const $WipeJobTypeMap = {WipeJobType.wipe: 'Wipe'};

enum ChangeDeviceNameJobType {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('Set_Devicename')
  setDevicename
}

const $ChangeDeviceNameJobTypeMap = {
  ChangeDeviceNameJobType.setDevicename: 'Set_Devicename'
};

enum SetBluetoothNameJobType {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('Set_RealDeviceName')
  setRealdevicename
}

const $SetBluetoothNameJobTypeMap = {
  SetBluetoothNameJobType.setRealdevicename: 'Set_RealDeviceName'
};

enum SetDeviceNotesJobType {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('Set_DeviceNotes')
  setDevicenotes
}

const $SetDeviceNotesJobTypeMap = {
  SetDeviceNotesJobType.setDevicenotes: 'Set_DeviceNotes'
};

enum ClearAppDataJobType {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('CLEAR_DATA')
  clearData
}

const $ClearAppDataJobTypeMap = {ClearAppDataJobType.clearData: 'CLEAR_DATA'};

enum UninstallApplicationJobType {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('Uninstall_Application')
  uninstallApplication
}

const $UninstallApplicationJobTypeMap = {
  UninstallApplicationJobType.uninstallApplication: 'Uninstall_Application'
};

enum LocationTrackingJobType {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('Location_Tracking')
  locationTracking
}

const $LocationTrackingJobTypeMap = {
  LocationTrackingJobType.locationTracking: 'Location_Tracking'
};

enum GeoFenceJobType {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('Geo_Fencing')
  geoFencing
}

const $GeoFenceJobTypeMap = {GeoFenceJobType.geoFencing: 'Geo_Fencing'};

enum TimeFenceJobType {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('Time_Fencing')
  timeFencing
}

const $TimeFenceJobTypeMap = {TimeFenceJobType.timeFencing: 'Time_Fencing'};

enum NetworkFenceJobType {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('Network_Fencing')
  networkFencing
}

const $NetworkFenceJobTypeMap = {
  NetworkFenceJobType.networkFencing: 'Network_Fencing'
};

enum DeleteDeviceAction {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('DELETE_DEVICE')
  deleteDevice
}

const $DeleteDeviceActionMap = {
  DeleteDeviceAction.deleteDevice: 'DELETE_DEVICE'
};

enum JobQueueDeviceJobqueueStatus {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('ERROR')
  error,
  @JsonValue('INPROGRESS')
  inprogress,
  @JsonValue('SCHEDULED')
  scheduled,
  @JsonValue('DEPLOYED')
  deployed,
  @JsonValue('SHOWALL')
  showall
}

const $JobQueueDeviceJobqueueStatusMap = {
  JobQueueDeviceJobqueueStatus.error: 'ERROR',
  JobQueueDeviceJobqueueStatus.inprogress: 'INPROGRESS',
  JobQueueDeviceJobqueueStatus.scheduled: 'SCHEDULED',
  JobQueueDeviceJobqueueStatus.deployed: 'DEPLOYED',
  JobQueueDeviceJobqueueStatus.showall: 'SHOWALL'
};

enum DeviceModel$ItemConnectionStatus {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('Online')
  online,
  @JsonValue('Offline')
  offline
}

const $DeviceModel$ItemConnectionStatusMap = {
  DeviceModel$ItemConnectionStatus.online: 'Online',
  DeviceModel$ItemConnectionStatus.offline: 'Offline'
};

enum DeviceModel$ItemBatteryChemistry {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('Li-ion')
  liIon,
  @JsonValue('Li-poly')
  liPoly,
  @JsonValue('Ni-Cd')
  niCd
}

const $DeviceModel$ItemBatteryChemistryMap = {
  DeviceModel$ItemBatteryChemistry.liIon: 'Li-ion',
  DeviceModel$ItemBatteryChemistry.liPoly: 'Li-poly',
  DeviceModel$ItemBatteryChemistry.niCd: 'Ni-Cd'
};

enum ActionCompliance$Itemtype {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('Move_To_Blacklist')
  moveToBlacklist,
  @JsonValue('Wipe_The_Device')
  wipeTheDevice,
  @JsonValue('Lock_Device')
  lockDevice,
  @JsonValue('Email_Notification')
  emailNotification,
  @JsonValue('Send_Sms')
  sendSms,
  @JsonValue('Apply_Job')
  applyJob,
  @JsonValue('Uninstall_App')
  uninstallApp
}

const $ActionCompliance$ItemtypeMap = {
  ActionCompliance$Itemtype.moveToBlacklist: 'Move_To_Blacklist',
  ActionCompliance$Itemtype.wipeTheDevice: 'Wipe_The_Device',
  ActionCompliance$Itemtype.lockDevice: 'Lock_Device',
  ActionCompliance$Itemtype.emailNotification: 'Email_Notification',
  ActionCompliance$Itemtype.sendSms: 'Send_Sms',
  ActionCompliance$Itemtype.applyJob: 'Apply_Job',
  ActionCompliance$Itemtype.uninstallApp: 'Uninstall_App'
};

enum ActionCompliance$Itemdelayunit {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('now')
  now,
  @JsonValue('Minutes')
  minutes,
  @JsonValue('Hours')
  hours,
  @JsonValue('Days')
  days
}

const $ActionCompliance$ItemdelayunitMap = {
  ActionCompliance$Itemdelayunit.now: 'now',
  ActionCompliance$Itemdelayunit.minutes: 'Minutes',
  ActionCompliance$Itemdelayunit.hours: 'Hours',
  ActionCompliance$Itemdelayunit.days: 'Days'
};

enum GetPreapprovedDevicePayLoadSortColumn {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('DeviceName')
  devicename,
  @JsonValue('IDType')
  idtype,
  @JsonValue('GroupPath')
  grouppath,
  @JsonValue('DeviceNotes')
  devicenotes,
  @JsonValue('TagName')
  tagname,
  @JsonValue('EnableEnroll')
  enableenroll,
  @JsonValue('PhoneNumber')
  phonenumber,
  @JsonValue('EmailId')
  emailid
}

const $GetPreapprovedDevicePayLoadSortColumnMap = {
  GetPreapprovedDevicePayLoadSortColumn.devicename: 'DeviceName',
  GetPreapprovedDevicePayLoadSortColumn.idtype: 'IDType',
  GetPreapprovedDevicePayLoadSortColumn.grouppath: 'GroupPath',
  GetPreapprovedDevicePayLoadSortColumn.devicenotes: 'DeviceNotes',
  GetPreapprovedDevicePayLoadSortColumn.tagname: 'TagName',
  GetPreapprovedDevicePayLoadSortColumn.enableenroll: 'EnableEnroll',
  GetPreapprovedDevicePayLoadSortColumn.phonenumber: 'PhoneNumber',
  GetPreapprovedDevicePayLoadSortColumn.emailid: 'EmailId'
};

enum SearchDeviceSortColumn {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('LastTimeStamp')
  lasttimestamp,
  @JsonValue('DeviceName')
  devicename,
  @JsonValue('DeviceModelName')
  devicemodelname,
  @JsonValue('PlatformType')
  platformtype,
  @JsonValue('Battery')
  battery,
  @JsonValue('AgentVersion')
  agentversion,
  @JsonValue('DeviceTimeZone')
  devicetimezone,
  @JsonValue('DeviceRegistered')
  deviceregistered,
  @JsonValue('DataUsage')
  datausage
}

const $SearchDeviceSortColumnMap = {
  SearchDeviceSortColumn.lasttimestamp: 'LastTimeStamp',
  SearchDeviceSortColumn.devicename: 'DeviceName',
  SearchDeviceSortColumn.devicemodelname: 'DeviceModelName',
  SearchDeviceSortColumn.platformtype: 'PlatformType',
  SearchDeviceSortColumn.battery: 'Battery',
  SearchDeviceSortColumn.agentversion: 'AgentVersion',
  SearchDeviceSortColumn.devicetimezone: 'DeviceTimeZone',
  SearchDeviceSortColumn.deviceregistered: 'DeviceRegistered',
  SearchDeviceSortColumn.datausage: 'DataUsage'
};

enum GetDevicePayLoadSortColumn {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('LastTimeStamp')
  lasttimestamp,
  @JsonValue('DeviceName')
  devicename,
  @JsonValue('DeviceModelName')
  devicemodelname,
  @JsonValue('PlatformType')
  platformtype,
  @JsonValue('Battery')
  battery,
  @JsonValue('AgentVersion')
  agentversion,
  @JsonValue('DeviceTimeZone')
  devicetimezone,
  @JsonValue('DeviceRegistered')
  deviceregistered,
  @JsonValue('DataUsage')
  datausage
}

const $GetDevicePayLoadSortColumnMap = {
  GetDevicePayLoadSortColumn.lasttimestamp: 'LastTimeStamp',
  GetDevicePayLoadSortColumn.devicename: 'DeviceName',
  GetDevicePayLoadSortColumn.devicemodelname: 'DeviceModelName',
  GetDevicePayLoadSortColumn.platformtype: 'PlatformType',
  GetDevicePayLoadSortColumn.battery: 'Battery',
  GetDevicePayLoadSortColumn.agentversion: 'AgentVersion',
  GetDevicePayLoadSortColumn.devicetimezone: 'DeviceTimeZone',
  GetDevicePayLoadSortColumn.deviceregistered: 'DeviceRegistered',
  GetDevicePayLoadSortColumn.datausage: 'DataUsage'
};

enum PostDeviceResponseModel$Rows$ItemConnectionStatus {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('Online')
  online,
  @JsonValue('Offline')
  offline
}

const $PostDeviceResponseModel$Rows$ItemConnectionStatusMap = {
  PostDeviceResponseModel$Rows$ItemConnectionStatus.online: 'Online',
  PostDeviceResponseModel$Rows$ItemConnectionStatus.offline: 'Offline'
};
