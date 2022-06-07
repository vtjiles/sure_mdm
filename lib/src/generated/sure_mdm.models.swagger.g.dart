// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sure_mdm.models.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UploadFileModel _$UploadFileModelFromJson(Map<String, dynamic> json) =>
    UploadFileModel(
      jobID: json['JobID'] as String,
      subJobID: json['SubJobID'] as String,
      fileName: json['FileName'] as String,
      fileSize: json['FileSize'] as int,
    );

Map<String, dynamic> _$UploadFileModelToJson(UploadFileModel instance) =>
    <String, dynamic>{
      'JobID': instance.jobID,
      'SubJobID': instance.subJobID,
      'FileName': instance.fileName,
      'FileSize': instance.fileSize,
    };

ReapplyJobModel _$ReapplyJobModelFromJson(Map<String, dynamic> json) =>
    ReapplyJobModel(
      deviceId: json['DeviceId'] as String?,
      jobID: json['JobID'] as String?,
      rowId: json['RowId'] as String?,
      status: reapplyJobModelStatusFromJson(json['Status']),
    );

Map<String, dynamic> _$ReapplyJobModelToJson(ReapplyJobModel instance) =>
    <String, dynamic>{
      'DeviceId': instance.deviceId,
      'JobID': instance.jobID,
      'RowId': instance.rowId,
      'Status': reapplyJobModelStatusToJson(instance.status),
    };

LastLocationModel _$LastLocationModelFromJson(Map<String, dynamic> json) =>
    LastLocationModel(
      deviceId: json['DeviceId'] as String?,
      location: (json['Location'] as List<dynamic>?)
              ?.map((e) => (e as List<dynamic>)
                  .map((e) => LastLocationModel$Location$Item.fromJson(
                      e as Map<String, dynamic>))
                  .toList())
              .toList() ??
          [],
    );

Map<String, dynamic> _$LastLocationModelToJson(LastLocationModel instance) =>
    <String, dynamic>{
      'DeviceId': instance.deviceId,
      'Location': instance.location
          ?.map((e) => e.map((e) => e.toJson()).toList())
          .toList(),
    };

AccountDetailsModel _$AccountDetailsModelFromJson(Map<String, dynamic> json) =>
    AccountDetailsModel(
      userID: json['UserID'] as String?,
      company: json['Company'] as String?,
      name: json['Name'] as String?,
      customerID: json['CustomerID'] as String?,
      maxDeviceCount: json['MaxDeviceCount'] as int?,
      deviceCount: json['DeviceCount'] as int?,
      totalStorageSize: json['TotalStorageSize'] as int?,
      usedStorageSize: json['UsedStorageSize'] as int?,
      isTrial: json['IsTrial'] as bool?,
      expiryDate: json['ExpiryDate'] as String?,
      isUsingChargify: json['IsUsingChargify'] as bool?,
      chatgifyUrl: json['ChatgifyUrl'] as String?,
      isOnPremise: json['isOnPremise'] as bool?,
      useLocationTracking: json['UseLocationTracking'] as bool?,
      showDashBoard: json['ShowDashBoard'] as bool?,
      isSsoUser: json['IsSsoUser'] as bool?,
      isS3Available: json['IsS3Available'] as bool?,
      isFTPAvailable: json['IsFTPAvailable'] as bool?,
      minLocationTrackingPeriodicity:
          json['MinLocationTrackingPeriodicity'] as int?,
      minTelecomMgmtTracPeriodicity:
          json['MinTelecomMgmtTracPeriodicity'] as int?,
      homeDeviceCount: json['HomeDeviceCount'] as int?,
      deviceCountForUser: json['DeviceCountForUser'] as String?,
      hideDynamicJob: json['HideDynamicJob'] as String?,
      isMarkedForDeletion: json['isMarkedForDeletion'] as bool?,
      licenseType: json['licenseType'] as int?,
      dateCreatedEpoch: json['DateCreatedEpoch'] as int?,
      useInfluxDB: json['UseInfluxDB'] as bool?,
      useIntercom: json['useIntercom'] as bool?,
      useRingCaptchaSms: json['useRingCaptchaSms'] as bool?,
      bOptedInForMail: json['bOptedInForMail'] as bool?,
      mspid: json['MSPID'] as String?,
      useMongoDB: json['useMongoDB'] as bool?,
    );

Map<String, dynamic> _$AccountDetailsModelToJson(
        AccountDetailsModel instance) =>
    <String, dynamic>{
      'UserID': instance.userID,
      'Company': instance.company,
      'Name': instance.name,
      'CustomerID': instance.customerID,
      'MaxDeviceCount': instance.maxDeviceCount,
      'DeviceCount': instance.deviceCount,
      'TotalStorageSize': instance.totalStorageSize,
      'UsedStorageSize': instance.usedStorageSize,
      'IsTrial': instance.isTrial,
      'ExpiryDate': instance.expiryDate,
      'IsUsingChargify': instance.isUsingChargify,
      'ChatgifyUrl': instance.chatgifyUrl,
      'isOnPremise': instance.isOnPremise,
      'UseLocationTracking': instance.useLocationTracking,
      'ShowDashBoard': instance.showDashBoard,
      'IsSsoUser': instance.isSsoUser,
      'IsS3Available': instance.isS3Available,
      'IsFTPAvailable': instance.isFTPAvailable,
      'MinLocationTrackingPeriodicity': instance.minLocationTrackingPeriodicity,
      'MinTelecomMgmtTracPeriodicity': instance.minTelecomMgmtTracPeriodicity,
      'HomeDeviceCount': instance.homeDeviceCount,
      'DeviceCountForUser': instance.deviceCountForUser,
      'HideDynamicJob': instance.hideDynamicJob,
      'isMarkedForDeletion': instance.isMarkedForDeletion,
      'licenseType': instance.licenseType,
      'DateCreatedEpoch': instance.dateCreatedEpoch,
      'UseInfluxDB': instance.useInfluxDB,
      'useIntercom': instance.useIntercom,
      'useRingCaptchaSms': instance.useRingCaptchaSms,
      'bOptedInForMail': instance.bOptedInForMail,
      'MSPID': instance.mspid,
      'useMongoDB': instance.useMongoDB,
    };

CallLogOutput$Item _$CallLogOutput$ItemFromJson(Map<String, dynamic> json) =>
    CallLogOutput$Item(
      id: json['ID'] as String?,
      callType: json['CallType'] as String?,
      name: json['Name'] as String?,
      phoneNumber: json['PhoneNumber'] as String?,
      date: json['Date'] as String?,
      duration: json['Duration'] as String?,
    );

Map<String, dynamic> _$CallLogOutput$ItemToJson(CallLogOutput$Item instance) =>
    <String, dynamic>{
      'ID': instance.id,
      'CallType': instance.callType,
      'Name': instance.name,
      'PhoneNumber': instance.phoneNumber,
      'Date': instance.date,
      'Duration': instance.duration,
    };

SMSLogOutput$Item _$SMSLogOutput$ItemFromJson(Map<String, dynamic> json) =>
    SMSLogOutput$Item(
      id: json['ID'] as String?,
      smsType: json['SmsType'] as String?,
      name: json['Name'] as String?,
      phoneNumber: json['PhoneNumber'] as String?,
      date: json['Date'] as String?,
      message: json['Message'] as String?,
    );

Map<String, dynamic> _$SMSLogOutput$ItemToJson(SMSLogOutput$Item instance) =>
    <String, dynamic>{
      'ID': instance.id,
      'SmsType': instance.smsType,
      'Name': instance.name,
      'PhoneNumber': instance.phoneNumber,
      'Date': instance.date,
      'Message': instance.message,
    };

BlacklistOutput$Item _$BlacklistOutput$ItemFromJson(
        Map<String, dynamic> json) =>
    BlacklistOutput$Item(
      deviceID: json['DeviceID'] as String?,
      name: json['Name'] as String?,
      model: json['Model'] as String?,
      platform: json['Platform'] as String?,
      lastConnected: json['LastConnected'] as String?,
    );

Map<String, dynamic> _$BlacklistOutput$ItemToJson(
        BlacklistOutput$Item instance) =>
    <String, dynamic>{
      'DeviceID': instance.deviceID,
      'Name': instance.name,
      'Model': instance.model,
      'Platform': instance.platform,
      'LastConnected': instance.lastConnected,
    };

UnapprovedOutput$Item _$UnapprovedOutput$ItemFromJson(
        Map<String, dynamic> json) =>
    UnapprovedOutput$Item(
      deviceID: json['DeviceID'] as String?,
      deviceName: json['DeviceName'] as String?,
      deviceModel: json['DeviceModel'] as String?,
      devicePlatform: json['DevicePlatform'] as String?,
      lastConnected: json['LastConnected'] as String?,
    );

Map<String, dynamic> _$UnapprovedOutput$ItemToJson(
        UnapprovedOutput$Item instance) =>
    <String, dynamic>{
      'DeviceID': instance.deviceID,
      'DeviceName': instance.deviceName,
      'DeviceModel': instance.deviceModel,
      'DevicePlatform': instance.devicePlatform,
      'LastConnected': instance.lastConnected,
    };

CustomerOutputModel _$CustomerOutputModelFromJson(Map<String, dynamic> json) =>
    CustomerOutputModel(
      customerId: json['CustomerId'] as String?,
      name: json['Name'] as String?,
      totalDeviceLicenseCount: json['TotalDeviceLicenseCount'] as String?,
      address: json['Address'] as String?,
      email: json['Email'] as String?,
      phone1: json['Phone1'] as String?,
      phone2: json['Phone2'] as String?,
      fax: json['Fax'] as String?,
    );

Map<String, dynamic> _$CustomerOutputModelToJson(
        CustomerOutputModel instance) =>
    <String, dynamic>{
      'CustomerId': instance.customerId,
      'Name': instance.name,
      'TotalDeviceLicenseCount': instance.totalDeviceLicenseCount,
      'Address': instance.address,
      'Email': instance.email,
      'Phone1': instance.phone1,
      'Phone2': instance.phone2,
      'Fax': instance.fax,
    };

CustomDynamicJobModel _$CustomDynamicJobModelFromJson(
        Map<String, dynamic> json) =>
    CustomDynamicJobModel(
      customjobname: json['customjobname'] as String,
      customiconclassname: json['customiconclassname'] as String,
      customjobid: json['customjobid'] as String,
      platFormType: json['PlatFormType'] as String?,
      idCustomJob: json['IdCustomJob'] as String?,
    );

Map<String, dynamic> _$CustomDynamicJobModelToJson(
        CustomDynamicJobModel instance) =>
    <String, dynamic>{
      'customjobname': instance.customjobname,
      'customiconclassname': instance.customiconclassname,
      'customjobid': instance.customjobid,
      'PlatFormType': instance.platFormType,
      'IdCustomJob': instance.idCustomJob,
    };

CustomDynamicJobOutPutModel$Item _$CustomDynamicJobOutPutModel$ItemFromJson(
        Map<String, dynamic> json) =>
    CustomDynamicJobOutPutModel$Item(
      idCustomJob: json['IdCustomJob'] as String?,
      customJobIconID: json['CustomJobIconID'] as String?,
      customJobName: json['CustomJobName'] as String?,
      customIconClassName: json['CustomIconClassName'] as String?,
      customJobId: json['CustomJobId'] as String?,
      platFormType: json['PlatFormType'] as String?,
      jobName: json['JobName'] as String?,
    );

Map<String, dynamic> _$CustomDynamicJobOutPutModel$ItemToJson(
        CustomDynamicJobOutPutModel$Item instance) =>
    <String, dynamic>{
      'IdCustomJob': instance.idCustomJob,
      'CustomJobIconID': instance.customJobIconID,
      'CustomJobName': instance.customJobName,
      'CustomIconClassName': instance.customIconClassName,
      'CustomJobId': instance.customJobId,
      'PlatFormType': instance.platFormType,
      'JobName': instance.jobName,
    };

GetTagsOutputModel$Item _$GetTagsOutputModel$ItemFromJson(
        Map<String, dynamic> json) =>
    GetTagsOutputModel$Item(
      tagName: json['TagName'] as String?,
      tagID: json['TagID'] as String?,
      defaultJobsCount: json['DefaultJobsCount'] as String?,
    );

Map<String, dynamic> _$GetTagsOutputModel$ItemToJson(
        GetTagsOutputModel$Item instance) =>
    <String, dynamic>{
      'TagName': instance.tagName,
      'TagID': instance.tagID,
      'DefaultJobsCount': instance.defaultJobsCount,
    };

TagCreateModel _$TagCreateModelFromJson(Map<String, dynamic> json) =>
    TagCreateModel(
      tagName: json['TagName'] as String,
    );

Map<String, dynamic> _$TagCreateModelToJson(TagCreateModel instance) =>
    <String, dynamic>{
      'TagName': instance.tagName,
    };

TagModifyModel _$TagModifyModelFromJson(Map<String, dynamic> json) =>
    TagModifyModel(
      tagName: json['TagName'] as String,
      tagID: json['TagID'] as String,
    );

Map<String, dynamic> _$TagModifyModelToJson(TagModifyModel instance) =>
    <String, dynamic>{
      'TagName': instance.tagName,
      'TagID': instance.tagID,
    };

TagsAssignToDeviceModel$Item _$TagsAssignToDeviceModel$ItemFromJson(
        Map<String, dynamic> json) =>
    TagsAssignToDeviceModel$Item(
      deviceId: json['DeviceId'] as String,
      tagId: json['TagId'] as String,
    );

Map<String, dynamic> _$TagsAssignToDeviceModel$ItemToJson(
        TagsAssignToDeviceModel$Item instance) =>
    <String, dynamic>{
      'DeviceId': instance.deviceId,
      'TagId': instance.tagId,
    };

SystemLog _$SystemLogFromJson(Map<String, dynamic> json) => SystemLog(
      reportID: json['ReportID'] as int?,
      queryParams: json['QueryParams'] == null
          ? null
          : ReportParamsSystemLogObject.fromJson(
              json['QueryParams'] as Map<String, dynamic>),
      emailID: json['EmailID'] as String?,
      groupName: json['GroupName'] as String?,
      timeZone: json['TimeZone'] as String?,
      reportType: json['ReportType'] as String?,
    );

Map<String, dynamic> _$SystemLogToJson(SystemLog instance) => <String, dynamic>{
      'ReportID': instance.reportID,
      'QueryParams': instance.queryParams?.toJson(),
      'EmailID': instance.emailID,
      'GroupName': instance.groupName,
      'TimeZone': instance.timeZone,
      'ReportType': instance.reportType,
    };

ReportParamsSystemLogObject _$ReportParamsSystemLogObjectFromJson(
        Map<String, dynamic> json) =>
    ReportParamsSystemLogObject(
      groupid: json['groupid'] as String?,
      groupName: json['GroupName'] as String?,
      showAllLogs: json['ShowAllLogs'] as bool?,
      showJobLogs: json['ShowJobLogs'] as bool?,
      showAppInstallLogs: json['ShowAppInstallLogs'] as bool?,
      dateStart: json['date_start'] as String?,
      dateEnd: json['date_end'] as String?,
    );

Map<String, dynamic> _$ReportParamsSystemLogObjectToJson(
        ReportParamsSystemLogObject instance) =>
    <String, dynamic>{
      'groupid': instance.groupid,
      'GroupName': instance.groupName,
      'ShowAllLogs': instance.showAllLogs,
      'ShowJobLogs': instance.showJobLogs,
      'ShowAppInstallLogs': instance.showAppInstallLogs,
      'date_start': instance.dateStart,
      'date_end': instance.dateEnd,
    };

OnDemandSystemLog _$OnDemandSystemLogFromJson(Map<String, dynamic> json) =>
    OnDemandSystemLog();

Map<String, dynamic> _$OnDemandSystemLogToJson(OnDemandSystemLog instance) =>
    <String, dynamic>{};

ScheduledSystemLog _$ScheduledSystemLogFromJson(Map<String, dynamic> json) =>
    ScheduledSystemLog(
      customScheduleTime: json['CustomScheduleTime'] as String?,
    );

Map<String, dynamic> _$ScheduledSystemLogToJson(ScheduledSystemLog instance) =>
    <String, dynamic>{
      'CustomScheduleTime': instance.customScheduleTime,
    };

AssetTracking _$AssetTrackingFromJson(Map<String, dynamic> json) =>
    AssetTracking(
      reportID: json['ReportID'] as int?,
      queryParams: json['QueryParams'] == null
          ? null
          : QueryParamsAssetTrackingObject.fromJson(
              json['QueryParams'] as Map<String, dynamic>),
      emailID: json['EmailID'] as String?,
      groupName: json['GroupName'] as String?,
      timeZone: json['TimeZone'] as String?,
      reportType: json['ReportType'] as String?,
    );

Map<String, dynamic> _$AssetTrackingToJson(AssetTracking instance) =>
    <String, dynamic>{
      'ReportID': instance.reportID,
      'QueryParams': instance.queryParams?.toJson(),
      'EmailID': instance.emailID,
      'GroupName': instance.groupName,
      'TimeZone': instance.timeZone,
      'ReportType': instance.reportType,
    };

QueryParamsAssetTrackingObject _$QueryParamsAssetTrackingObjectFromJson(
        Map<String, dynamic> json) =>
    QueryParamsAssetTrackingObject(
      groupid: json['groupid'] as String?,
      groupName: json['GroupName'] as String?,
    );

Map<String, dynamic> _$QueryParamsAssetTrackingObjectToJson(
        QueryParamsAssetTrackingObject instance) =>
    <String, dynamic>{
      'groupid': instance.groupid,
      'GroupName': instance.groupName,
    };

OnDemandAssetTracking _$OnDemandAssetTrackingFromJson(
        Map<String, dynamic> json) =>
    OnDemandAssetTracking();

Map<String, dynamic> _$OnDemandAssetTrackingToJson(
        OnDemandAssetTracking instance) =>
    <String, dynamic>{};

ScheduledAssetTracking _$ScheduledAssetTrackingFromJson(
        Map<String, dynamic> json) =>
    ScheduledAssetTracking(
      customScheduleTime: json['CustomScheduleTime'] as String?,
    );

Map<String, dynamic> _$ScheduledAssetTrackingToJson(
        ScheduledAssetTracking instance) =>
    <String, dynamic>{
      'CustomScheduleTime': instance.customScheduleTime,
    };

DeviceActivity _$DeviceActivityFromJson(Map<String, dynamic> json) =>
    DeviceActivity(
      reportID: json['ReportID'] as int?,
      queryParams: json['QueryParams'] == null
          ? null
          : ReportParamsDeviceActivityObject.fromJson(
              json['QueryParams'] as Map<String, dynamic>),
      emailID: json['EmailID'] as String?,
      groupName: json['GroupName'] as String?,
      timeZone: json['TimeZone'] as String?,
      reportType: json['ReportType'] as String?,
    );

Map<String, dynamic> _$DeviceActivityToJson(DeviceActivity instance) =>
    <String, dynamic>{
      'ReportID': instance.reportID,
      'QueryParams': instance.queryParams?.toJson(),
      'EmailID': instance.emailID,
      'GroupName': instance.groupName,
      'TimeZone': instance.timeZone,
      'ReportType': instance.reportType,
    };

ReportParamsDeviceActivityObject _$ReportParamsDeviceActivityObjectFromJson(
        Map<String, dynamic> json) =>
    ReportParamsDeviceActivityObject(
      groupid: json['groupid'] as String?,
      groupName: json['GroupName'] as String?,
      deviceName: json['DeviceName'] as String?,
      deviceid: json['deviceid'] as String?,
      dateStart: json['date_start'] as String?,
      dateEnd: json['date_end'] as String?,
    );

Map<String, dynamic> _$ReportParamsDeviceActivityObjectToJson(
        ReportParamsDeviceActivityObject instance) =>
    <String, dynamic>{
      'groupid': instance.groupid,
      'GroupName': instance.groupName,
      'DeviceName': instance.deviceName,
      'deviceid': instance.deviceid,
      'date_start': instance.dateStart,
      'date_end': instance.dateEnd,
    };

OnDemandDeviceActivity _$OnDemandDeviceActivityFromJson(
        Map<String, dynamic> json) =>
    OnDemandDeviceActivity();

Map<String, dynamic> _$OnDemandDeviceActivityToJson(
        OnDemandDeviceActivity instance) =>
    <String, dynamic>{};

ScheduledDeviceActivity _$ScheduledDeviceActivityFromJson(
        Map<String, dynamic> json) =>
    ScheduledDeviceActivity(
      customScheduleTime: json['CustomScheduleTime'] as String?,
    );

Map<String, dynamic> _$ScheduledDeviceActivityToJson(
        ScheduledDeviceActivity instance) =>
    <String, dynamic>{
      'CustomScheduleTime': instance.customScheduleTime,
    };

CallLogTracking _$CallLogTrackingFromJson(Map<String, dynamic> json) =>
    CallLogTracking(
      reportID: json['ReportID'] as int?,
      queryParams: json['QueryParams'] == null
          ? null
          : ReportParamsCallLogTrackingObject.fromJson(
              json['QueryParams'] as Map<String, dynamic>),
      emailID: json['EmailID'] as String?,
      groupName: json['GroupName'] as String?,
      timeZone: json['TimeZone'] as String?,
      reportType: json['ReportType'] as String?,
    );

Map<String, dynamic> _$CallLogTrackingToJson(CallLogTracking instance) =>
    <String, dynamic>{
      'ReportID': instance.reportID,
      'QueryParams': instance.queryParams?.toJson(),
      'EmailID': instance.emailID,
      'GroupName': instance.groupName,
      'TimeZone': instance.timeZone,
      'ReportType': instance.reportType,
    };

ReportParamsCallLogTrackingObject _$ReportParamsCallLogTrackingObjectFromJson(
        Map<String, dynamic> json) =>
    ReportParamsCallLogTrackingObject(
      groupid: json['groupid'] as String?,
      groupName: json['GroupName'] as String?,
      deviceName: json['DeviceName'] as String?,
      deviceid: json['deviceid'] as String?,
      dateStart: json['date_start'] as String?,
      dateEnd: json['date_end'] as String?,
      callType: json['CallType'] as String?,
    );

Map<String, dynamic> _$ReportParamsCallLogTrackingObjectToJson(
        ReportParamsCallLogTrackingObject instance) =>
    <String, dynamic>{
      'groupid': instance.groupid,
      'GroupName': instance.groupName,
      'DeviceName': instance.deviceName,
      'deviceid': instance.deviceid,
      'date_start': instance.dateStart,
      'date_end': instance.dateEnd,
      'CallType': instance.callType,
    };

OnDemandCallLogTracking _$OnDemandCallLogTrackingFromJson(
        Map<String, dynamic> json) =>
    OnDemandCallLogTracking();

Map<String, dynamic> _$OnDemandCallLogTrackingToJson(
        OnDemandCallLogTracking instance) =>
    <String, dynamic>{};

ScheduledCallLogTracking _$ScheduledCallLogTrackingFromJson(
        Map<String, dynamic> json) =>
    ScheduledCallLogTracking(
      customScheduleTime: json['CustomScheduleTime'] as String?,
    );

Map<String, dynamic> _$ScheduledCallLogTrackingToJson(
        ScheduledCallLogTracking instance) =>
    <String, dynamic>{
      'CustomScheduleTime': instance.customScheduleTime,
    };

DeviceHistory _$DeviceHistoryFromJson(Map<String, dynamic> json) =>
    DeviceHistory(
      reportID: json['ReportID'] as int?,
      queryParams: json['QueryParams'] == null
          ? null
          : ReportParamsDeviceHistoryObject.fromJson(
              json['QueryParams'] as Map<String, dynamic>),
      emailID: json['EmailID'] as String?,
      groupName: json['GroupName'] as String?,
      timeZone: json['TimeZone'] as String?,
      reportType: json['ReportType'] as String?,
    );

Map<String, dynamic> _$DeviceHistoryToJson(DeviceHistory instance) =>
    <String, dynamic>{
      'ReportID': instance.reportID,
      'QueryParams': instance.queryParams?.toJson(),
      'EmailID': instance.emailID,
      'GroupName': instance.groupName,
      'TimeZone': instance.timeZone,
      'ReportType': instance.reportType,
    };

ReportParamsDeviceHistoryObject _$ReportParamsDeviceHistoryObjectFromJson(
        Map<String, dynamic> json) =>
    ReportParamsDeviceHistoryObject(
      groupid: json['groupid'] as String?,
      groupName: json['GroupName'] as String?,
      deviceName: json['DeviceName'] as String?,
      deviceid: json['deviceid'] as String?,
      dateStart: json['date_start'] as String?,
      dateEnd: json['date_end'] as String?,
    );

Map<String, dynamic> _$ReportParamsDeviceHistoryObjectToJson(
        ReportParamsDeviceHistoryObject instance) =>
    <String, dynamic>{
      'groupid': instance.groupid,
      'GroupName': instance.groupName,
      'DeviceName': instance.deviceName,
      'deviceid': instance.deviceid,
      'date_start': instance.dateStart,
      'date_end': instance.dateEnd,
    };

OnDemandDeviceHistory _$OnDemandDeviceHistoryFromJson(
        Map<String, dynamic> json) =>
    OnDemandDeviceHistory();

Map<String, dynamic> _$OnDemandDeviceHistoryToJson(
        OnDemandDeviceHistory instance) =>
    <String, dynamic>{};

ScheduledDeviceHistory _$ScheduledDeviceHistoryFromJson(
        Map<String, dynamic> json) =>
    ScheduledDeviceHistory(
      customScheduleTime: json['CustomScheduleTime'] as String?,
    );

Map<String, dynamic> _$ScheduledDeviceHistoryToJson(
        ScheduledDeviceHistory instance) =>
    <String, dynamic>{
      'CustomScheduleTime': instance.customScheduleTime,
    };

JobsDeployed _$JobsDeployedFromJson(Map<String, dynamic> json) => JobsDeployed(
      reportID: json['ReportID'] as int?,
      queryParams: json['QueryParams'] == null
          ? null
          : ReportParamsJobsDeployedObject.fromJson(
              json['QueryParams'] as Map<String, dynamic>),
      emailID: json['EmailID'] as String?,
      groupName: json['GroupName'] as String?,
      timeZone: json['TimeZone'] as String?,
      reportType: json['ReportType'] as String?,
    );

Map<String, dynamic> _$JobsDeployedToJson(JobsDeployed instance) =>
    <String, dynamic>{
      'ReportID': instance.reportID,
      'QueryParams': instance.queryParams?.toJson(),
      'EmailID': instance.emailID,
      'GroupName': instance.groupName,
      'TimeZone': instance.timeZone,
      'ReportType': instance.reportType,
    };

ReportParamsJobsDeployedObject _$ReportParamsJobsDeployedObjectFromJson(
        Map<String, dynamic> json) =>
    ReportParamsJobsDeployedObject(
      groupid: json['groupid'] as String?,
      groupName: json['GroupName'] as String?,
      jobname: json['jobname'] as String?,
      jobId: json['JobId'] as String?,
      dateStart: json['date_start'] as String?,
      dateEnd: json['date_end'] as String?,
    );

Map<String, dynamic> _$ReportParamsJobsDeployedObjectToJson(
        ReportParamsJobsDeployedObject instance) =>
    <String, dynamic>{
      'groupid': instance.groupid,
      'GroupName': instance.groupName,
      'jobname': instance.jobname,
      'JobId': instance.jobId,
      'date_start': instance.dateStart,
      'date_end': instance.dateEnd,
    };

OnDemandJobsDeployed _$OnDemandJobsDeployedFromJson(
        Map<String, dynamic> json) =>
    OnDemandJobsDeployed();

Map<String, dynamic> _$OnDemandJobsDeployedToJson(
        OnDemandJobsDeployed instance) =>
    <String, dynamic>{};

ScheduledJobsDeployed _$ScheduledJobsDeployedFromJson(
        Map<String, dynamic> json) =>
    ScheduledJobsDeployed(
      customScheduleTime: json['CustomScheduleTime'] as String?,
    );

Map<String, dynamic> _$ScheduledJobsDeployedToJson(
        ScheduledJobsDeployed instance) =>
    <String, dynamic>{
      'CustomScheduleTime': instance.customScheduleTime,
    };

InstalledJobs _$InstalledJobsFromJson(Map<String, dynamic> json) =>
    InstalledJobs(
      reportID: json['ReportID'] as int?,
      queryParams: json['QueryParams'] == null
          ? null
          : ReportParamsInstalledJobsObject.fromJson(
              json['QueryParams'] as Map<String, dynamic>),
      emailID: json['EmailID'] as String?,
      groupName: json['GroupName'] as String?,
      timeZone: json['TimeZone'] as String?,
      reportType: json['ReportType'] as String?,
    );

Map<String, dynamic> _$InstalledJobsToJson(InstalledJobs instance) =>
    <String, dynamic>{
      'ReportID': instance.reportID,
      'QueryParams': instance.queryParams?.toJson(),
      'EmailID': instance.emailID,
      'GroupName': instance.groupName,
      'TimeZone': instance.timeZone,
      'ReportType': instance.reportType,
    };

ReportParamsInstalledJobsObject _$ReportParamsInstalledJobsObjectFromJson(
        Map<String, dynamic> json) =>
    ReportParamsInstalledJobsObject(
      groupid: json['groupid'] as String?,
      groupName: json['GroupName'] as String?,
      jobname: json['jobname'] as String?,
      jobId: json['JobId'] as String?,
      dateStart: json['date_start'] as String?,
      dateEnd: json['date_end'] as String?,
      applicationname: json['applicationname'] as String?,
    );

Map<String, dynamic> _$ReportParamsInstalledJobsObjectToJson(
        ReportParamsInstalledJobsObject instance) =>
    <String, dynamic>{
      'groupid': instance.groupid,
      'GroupName': instance.groupName,
      'jobname': instance.jobname,
      'JobId': instance.jobId,
      'date_start': instance.dateStart,
      'date_end': instance.dateEnd,
      'applicationname': instance.applicationname,
    };

OnDemandInstalledJobs _$OnDemandInstalledJobsFromJson(
        Map<String, dynamic> json) =>
    OnDemandInstalledJobs();

Map<String, dynamic> _$OnDemandInstalledJobsToJson(
        OnDemandInstalledJobs instance) =>
    <String, dynamic>{};

ScheduledInstalledJobs _$ScheduledInstalledJobsFromJson(
        Map<String, dynamic> json) =>
    ScheduledInstalledJobs(
      customScheduleTime: json['CustomScheduleTime'] as String?,
    );

Map<String, dynamic> _$ScheduledInstalledJobsToJson(
        ScheduledInstalledJobs instance) =>
    <String, dynamic>{
      'CustomScheduleTime': instance.customScheduleTime,
    };

DeviceHealth _$DeviceHealthFromJson(Map<String, dynamic> json) => DeviceHealth(
      reportID: json['ReportID'] as int?,
      queryParams: json['QueryParams'] == null
          ? null
          : ReportParamsDeviceHealthObject.fromJson(
              json['QueryParams'] as Map<String, dynamic>),
      emailID: json['EmailID'] as String?,
      groupName: json['GroupName'] as String?,
      timeZone: json['TimeZone'] as String?,
      reportType: json['ReportType'] as String?,
    );

Map<String, dynamic> _$DeviceHealthToJson(DeviceHealth instance) =>
    <String, dynamic>{
      'ReportID': instance.reportID,
      'QueryParams': instance.queryParams?.toJson(),
      'EmailID': instance.emailID,
      'GroupName': instance.groupName,
      'TimeZone': instance.timeZone,
      'ReportType': instance.reportType,
    };

ReportParamsDeviceHealthObject _$ReportParamsDeviceHealthObjectFromJson(
        Map<String, dynamic> json) =>
    ReportParamsDeviceHealthObject(
      groupid: json['groupid'] as String?,
      groupName: json['GroupName'] as String?,
      battery: json['battery'] as String?,
      storagemb: json['storagemb'] as String?,
      memorymb: json['memorymb'] as String?,
      dateStart: json['date_start'] as String?,
      dateEnd: json['date_end'] as String?,
    );

Map<String, dynamic> _$ReportParamsDeviceHealthObjectToJson(
        ReportParamsDeviceHealthObject instance) =>
    <String, dynamic>{
      'groupid': instance.groupid,
      'GroupName': instance.groupName,
      'battery': instance.battery,
      'storagemb': instance.storagemb,
      'memorymb': instance.memorymb,
      'date_start': instance.dateStart,
      'date_end': instance.dateEnd,
    };

OnDemandDeviceHealth _$OnDemandDeviceHealthFromJson(
        Map<String, dynamic> json) =>
    OnDemandDeviceHealth();

Map<String, dynamic> _$OnDemandDeviceHealthToJson(
        OnDemandDeviceHealth instance) =>
    <String, dynamic>{};

ScheduledDeviceHealth _$ScheduledDeviceHealthFromJson(
        Map<String, dynamic> json) =>
    ScheduledDeviceHealth(
      customScheduleTime: json['CustomScheduleTime'] as String?,
    );

Map<String, dynamic> _$ScheduledDeviceHealthToJson(
        ScheduledDeviceHealth instance) =>
    <String, dynamic>{
      'CustomScheduleTime': instance.customScheduleTime,
    };

DataUsage _$DataUsageFromJson(Map<String, dynamic> json) => DataUsage(
      reportID: json['ReportID'] as int?,
      queryParams: json['QueryParams'] == null
          ? null
          : ReportParamsDataUsageObject.fromJson(
              json['QueryParams'] as Map<String, dynamic>),
      emailID: json['EmailID'] as String?,
      groupName: json['GroupName'] as String?,
      timeZone: json['TimeZone'] as String?,
      reportType: json['ReportType'] as String?,
    );

Map<String, dynamic> _$DataUsageToJson(DataUsage instance) => <String, dynamic>{
      'ReportID': instance.reportID,
      'QueryParams': instance.queryParams?.toJson(),
      'EmailID': instance.emailID,
      'GroupName': instance.groupName,
      'TimeZone': instance.timeZone,
      'ReportType': instance.reportType,
    };

ReportParamsDataUsageObject _$ReportParamsDataUsageObjectFromJson(
        Map<String, dynamic> json) =>
    ReportParamsDataUsageObject(
      groupid: json['groupid'] as String?,
      groupName: json['GroupName'] as String?,
      tagid: json['tagid'] as String?,
    );

Map<String, dynamic> _$ReportParamsDataUsageObjectToJson(
        ReportParamsDataUsageObject instance) =>
    <String, dynamic>{
      'groupid': instance.groupid,
      'GroupName': instance.groupName,
      'tagid': instance.tagid,
    };

OnDemandDataUsage _$OnDemandDataUsageFromJson(Map<String, dynamic> json) =>
    OnDemandDataUsage();

Map<String, dynamic> _$OnDemandDataUsageToJson(OnDemandDataUsage instance) =>
    <String, dynamic>{};

ScheduledDataUsage _$ScheduledDataUsageFromJson(Map<String, dynamic> json) =>
    ScheduledDataUsage(
      customScheduleTime: json['CustomScheduleTime'] as String?,
    );

Map<String, dynamic> _$ScheduledDataUsageToJson(ScheduledDataUsage instance) =>
    <String, dynamic>{
      'CustomScheduleTime': instance.customScheduleTime,
    };

DataUsageLegacy _$DataUsageLegacyFromJson(Map<String, dynamic> json) =>
    DataUsageLegacy(
      reportID: json['ReportID'] as int?,
      queryParams: json['QueryParams'] == null
          ? null
          : ReportParamsDataUsageLegacyObject.fromJson(
              json['QueryParams'] as Map<String, dynamic>),
      emailID: json['EmailID'] as String?,
      groupName: json['GroupName'] as String?,
      timeZone: json['TimeZone'] as String?,
      reportType: json['ReportType'] as String?,
    );

Map<String, dynamic> _$DataUsageLegacyToJson(DataUsageLegacy instance) =>
    <String, dynamic>{
      'ReportID': instance.reportID,
      'QueryParams': instance.queryParams?.toJson(),
      'EmailID': instance.emailID,
      'GroupName': instance.groupName,
      'TimeZone': instance.timeZone,
      'ReportType': instance.reportType,
    };

ReportParamsDataUsageLegacyObject _$ReportParamsDataUsageLegacyObjectFromJson(
        Map<String, dynamic> json) =>
    ReportParamsDataUsageLegacyObject(
      groupid: json['groupid'] as String?,
      groupName: json['GroupName'] as String?,
      dateStart: json['date_start'] as String?,
      dateEnd: json['date_end'] as String?,
    );

Map<String, dynamic> _$ReportParamsDataUsageLegacyObjectToJson(
        ReportParamsDataUsageLegacyObject instance) =>
    <String, dynamic>{
      'groupid': instance.groupid,
      'GroupName': instance.groupName,
      'date_start': instance.dateStart,
      'date_end': instance.dateEnd,
    };

OnDemandDataUsageLegacy _$OnDemandDataUsageLegacyFromJson(
        Map<String, dynamic> json) =>
    OnDemandDataUsageLegacy();

Map<String, dynamic> _$OnDemandDataUsageLegacyToJson(
        OnDemandDataUsageLegacy instance) =>
    <String, dynamic>{};

ScheduledDataUsageLegacy _$ScheduledDataUsageLegacyFromJson(
        Map<String, dynamic> json) =>
    ScheduledDataUsageLegacy(
      customScheduleTime: json['CustomScheduleTime'] as String?,
    );

Map<String, dynamic> _$ScheduledDataUsageLegacyToJson(
        ScheduledDataUsageLegacy instance) =>
    <String, dynamic>{
      'CustomScheduleTime': instance.customScheduleTime,
    };

DeviceConnected _$DeviceConnectedFromJson(Map<String, dynamic> json) =>
    DeviceConnected(
      reportID: json['ReportID'] as int?,
      queryParams: json['QueryParams'] == null
          ? null
          : ReportParamsDeviceConnectedObject.fromJson(
              json['QueryParams'] as Map<String, dynamic>),
      emailID: json['EmailID'] as String?,
      groupName: json['GroupName'] as String?,
      timeZone: json['TimeZone'] as String?,
      reportType: json['ReportType'] as String?,
    );

Map<String, dynamic> _$DeviceConnectedToJson(DeviceConnected instance) =>
    <String, dynamic>{
      'ReportID': instance.reportID,
      'QueryParams': instance.queryParams?.toJson(),
      'EmailID': instance.emailID,
      'GroupName': instance.groupName,
      'TimeZone': instance.timeZone,
      'ReportType': instance.reportType,
    };

ReportParamsDeviceConnectedObject _$ReportParamsDeviceConnectedObjectFromJson(
        Map<String, dynamic> json) =>
    ReportParamsDeviceConnectedObject(
      groupid: json['groupid'] as String?,
      groupName: json['GroupName'] as String?,
      dateStart: json['date_start'] as String?,
      dateEnd: json['date_end'] as String?,
    );

Map<String, dynamic> _$ReportParamsDeviceConnectedObjectToJson(
        ReportParamsDeviceConnectedObject instance) =>
    <String, dynamic>{
      'groupid': instance.groupid,
      'GroupName': instance.groupName,
      'date_start': instance.dateStart,
      'date_end': instance.dateEnd,
    };

OnDemandDeviceConnected _$OnDemandDeviceConnectedFromJson(
        Map<String, dynamic> json) =>
    OnDemandDeviceConnected();

Map<String, dynamic> _$OnDemandDeviceConnectedToJson(
        OnDemandDeviceConnected instance) =>
    <String, dynamic>{};

ScheduledDeviceConnected _$ScheduledDeviceConnectedFromJson(
        Map<String, dynamic> json) =>
    ScheduledDeviceConnected(
      customScheduleTime: json['CustomScheduleTime'] as String?,
    );

Map<String, dynamic> _$ScheduledDeviceConnectedToJson(
        ScheduledDeviceConnected instance) =>
    <String, dynamic>{
      'CustomScheduleTime': instance.customScheduleTime,
    };

ComplianceReport _$ComplianceReportFromJson(Map<String, dynamic> json) =>
    ComplianceReport(
      reportID: json['ReportID'] as int?,
      queryParams: json['QueryParams'] == null
          ? null
          : ReportParamsComplianceReportObject.fromJson(
              json['QueryParams'] as Map<String, dynamic>),
      emailID: json['EmailID'] as String?,
      groupName: json['GroupName'] as String?,
      timeZone: json['TimeZone'] as String?,
      reportType: json['ReportType'] as String?,
    );

Map<String, dynamic> _$ComplianceReportToJson(ComplianceReport instance) =>
    <String, dynamic>{
      'ReportID': instance.reportID,
      'QueryParams': instance.queryParams?.toJson(),
      'EmailID': instance.emailID,
      'GroupName': instance.groupName,
      'TimeZone': instance.timeZone,
      'ReportType': instance.reportType,
    };

ReportParamsComplianceReportObject _$ReportParamsComplianceReportObjectFromJson(
        Map<String, dynamic> json) =>
    ReportParamsComplianceReportObject(
      groupid: json['groupid'] as String?,
      groupName: json['GroupName'] as String?,
      showAllCompliance: json['ShowAllCompliance'] as bool?,
      oSVersion: json['OSVersion'] as bool?,
      jailbrokenOrRooted: json['JailbrokenOrRooted'] as bool?,
      onlineDeviceConnectivity: json['OnlineDeviceConnectivity'] as bool?,
      sIMChange: json['SIMChange'] as bool?,
      passwordPolicy: json['PasswordPolicy'] as String?,
    );

Map<String, dynamic> _$ReportParamsComplianceReportObjectToJson(
        ReportParamsComplianceReportObject instance) =>
    <String, dynamic>{
      'groupid': instance.groupid,
      'GroupName': instance.groupName,
      'ShowAllCompliance': instance.showAllCompliance,
      'OSVersion': instance.oSVersion,
      'JailbrokenOrRooted': instance.jailbrokenOrRooted,
      'OnlineDeviceConnectivity': instance.onlineDeviceConnectivity,
      'SIMChange': instance.sIMChange,
      'PasswordPolicy': instance.passwordPolicy,
    };

OnDemandComplianceReport _$OnDemandComplianceReportFromJson(
        Map<String, dynamic> json) =>
    OnDemandComplianceReport();

Map<String, dynamic> _$OnDemandComplianceReportToJson(
        OnDemandComplianceReport instance) =>
    <String, dynamic>{};

ScheduledComplianceReport _$ScheduledComplianceReportFromJson(
        Map<String, dynamic> json) =>
    ScheduledComplianceReport(
      customScheduleTime: json['CustomScheduleTime'] as String?,
    );

Map<String, dynamic> _$ScheduledComplianceReportToJson(
        ScheduledComplianceReport instance) =>
    <String, dynamic>{
      'CustomScheduleTime': instance.customScheduleTime,
    };

AppVersion _$AppVersionFromJson(Map<String, dynamic> json) => AppVersion(
      reportID: json['ReportID'] as int?,
      queryParams: json['QueryParams'] == null
          ? null
          : ReportParamsAppVersionObject.fromJson(
              json['QueryParams'] as Map<String, dynamic>),
      emailID: json['EmailID'] as String?,
      groupName: json['GroupName'] as String?,
      timeZone: json['TimeZone'] as String?,
      reportType: json['ReportType'] as String?,
    );

Map<String, dynamic> _$AppVersionToJson(AppVersion instance) =>
    <String, dynamic>{
      'ReportID': instance.reportID,
      'QueryParams': instance.queryParams?.toJson(),
      'EmailID': instance.emailID,
      'GroupName': instance.groupName,
      'TimeZone': instance.timeZone,
      'ReportType': instance.reportType,
    };

ReportParamsAppVersionObject _$ReportParamsAppVersionObjectFromJson(
        Map<String, dynamic> json) =>
    ReportParamsAppVersionObject(
      groupid: json['groupid'] as String?,
      groupName: json['GroupName'] as String?,
      applicationType: json['ApplicationType'] as bool?,
      applicationname: json['applicationname'] as bool?,
    );

Map<String, dynamic> _$ReportParamsAppVersionObjectToJson(
        ReportParamsAppVersionObject instance) =>
    <String, dynamic>{
      'groupid': instance.groupid,
      'GroupName': instance.groupName,
      'ApplicationType': instance.applicationType,
      'applicationname': instance.applicationname,
    };

OnDemandAppVersion _$OnDemandAppVersionFromJson(Map<String, dynamic> json) =>
    OnDemandAppVersion();

Map<String, dynamic> _$OnDemandAppVersionToJson(OnDemandAppVersion instance) =>
    <String, dynamic>{};

ScheduledAppVersion _$ScheduledAppVersionFromJson(Map<String, dynamic> json) =>
    ScheduledAppVersion(
      customScheduleTime: json['CustomScheduleTime'] as String?,
    );

Map<String, dynamic> _$ScheduledAppVersionToJson(
        ScheduledAppVersion instance) =>
    <String, dynamic>{
      'CustomScheduleTime': instance.customScheduleTime,
    };

LocationModel _$LocationModelFromJson(Map<String, dynamic> json) =>
    LocationModel(
      deviceId: json['DeviceId'] as String?,
      location: (json['Location'] as List<dynamic>?)
              ?.map((e) => (e as List<dynamic>)
                  .map((e) => LocationModel$Location$Item.fromJson(
                      e as Map<String, dynamic>))
                  .toList())
              .toList() ??
          [],
    );

Map<String, dynamic> _$LocationModelToJson(LocationModel instance) =>
    <String, dynamic>{
      'DeviceId': instance.deviceId,
      'Location': instance.location
          ?.map((e) => e.map((e) => e.toJson()).toList())
          .toList(),
    };

AllMessageModel _$AllMessageModelFromJson(Map<String, dynamic> json) =>
    AllMessageModel(
      total: json['total'] as String?,
      rows: (json['rows'] as List<dynamic>?)
              ?.map((e) => (e as List<dynamic>)
                  .map((e) => AllMessageModel$Rows$Item.fromJson(
                      e as Map<String, dynamic>))
                  .toList())
              .toList() ??
          [],
    );

Map<String, dynamic> _$AllMessageModelToJson(AllMessageModel instance) =>
    <String, dynamic>{
      'total': instance.total,
      'rows':
          instance.rows?.map((e) => e.map((e) => e.toJson()).toList()).toList(),
    };

MessageModel _$MessageModelFromJson(Map<String, dynamic> json) => MessageModel(
      messageId: json['MessageId'] as String?,
      deviceId: json['DeviceId'] as String?,
      deviceName: json['DeviceName'] as String?,
      subject: json['Subject'] as String?,
      timeStamp: json['TimeStamp'] as String?,
      status: json['Status'] as String?,
      platformType: json['PlatformType'] as String?,
    );

Map<String, dynamic> _$MessageModelToJson(MessageModel instance) =>
    <String, dynamic>{
      'MessageId': instance.messageId,
      'DeviceId': instance.deviceId,
      'DeviceName': instance.deviceName,
      'Subject': instance.subject,
      'TimeStamp': instance.timeStamp,
      'Status': instance.status,
      'PlatformType': instance.platformType,
    };

MessageIdModel _$MessageIdModelFromJson(Map<String, dynamic> json) =>
    MessageIdModel(
      subject: json['Subject'] as String?,
      body: json['Body'] as String?,
      date: json['Date'] as String?,
      time: json['Time'] as String?,
      sentTimeOnDevice: json['SentTimeOnDevice'] as String?,
      sentBy: json['SentBy'] as String?,
      deviceID: json['DeviceID'] as String?,
      status: json['Status'] as String?,
    );

Map<String, dynamic> _$MessageIdModelToJson(MessageIdModel instance) =>
    <String, dynamic>{
      'Subject': instance.subject,
      'Body': instance.body,
      'Date': instance.date,
      'Time': instance.time,
      'SentTimeOnDevice': instance.sentTimeOnDevice,
      'SentBy': instance.sentBy,
      'DeviceID': instance.deviceID,
      'Status': instance.status,
    };

Job _$JobFromJson(Map<String, dynamic> json) => Job(
      deviceID: json['DeviceID'] as String,
    );

Map<String, dynamic> _$JobToJson(Job instance) => <String, dynamic>{
      'DeviceID': instance.deviceID,
    };

RefreshDevice _$RefreshDeviceFromJson(Map<String, dynamic> json) =>
    RefreshDevice(
      jobType: refreshDeviceJobTypeFromJson(json['JobType']),
      deviceID: json['DeviceID'] as String?,
    );

Map<String, dynamic> _$RefreshDeviceToJson(RefreshDevice instance) =>
    <String, dynamic>{
      'JobType': refreshDeviceJobTypeToJson(instance.jobType),
      'DeviceID': instance.deviceID,
    };

GetDeviceApps _$GetDeviceAppsFromJson(Map<String, dynamic> json) =>
    GetDeviceApps(
      jobType: getDeviceAppsJobTypeFromJson(json['JobType']),
      deviceID: json['DeviceID'] as String?,
    );

Map<String, dynamic> _$GetDeviceAppsToJson(GetDeviceApps instance) =>
    <String, dynamic>{
      'JobType': getDeviceAppsJobTypeToJson(instance.jobType),
      'DeviceID': instance.deviceID,
    };

LockDevice _$LockDeviceFromJson(Map<String, dynamic> json) => LockDevice(
      jobType: lockDeviceJobTypeFromJson(json['JobType']),
      deviceID: json['DeviceID'] as String?,
    );

Map<String, dynamic> _$LockDeviceToJson(LockDevice instance) =>
    <String, dynamic>{
      'JobType': lockDeviceJobTypeToJson(instance.jobType),
      'DeviceID': instance.deviceID,
    };

RebootDevice _$RebootDeviceFromJson(Map<String, dynamic> json) => RebootDevice(
      jobType: rebootDeviceJobTypeFromJson(json['JobType']),
      deviceID: json['DeviceID'] as String?,
    );

Map<String, dynamic> _$RebootDeviceToJson(RebootDevice instance) =>
    <String, dynamic>{
      'JobType': rebootDeviceJobTypeToJson(instance.jobType),
      'DeviceID': instance.deviceID,
    };

Buzz _$BuzzFromJson(Map<String, dynamic> json) => Buzz(
      jobType: buzzJobTypeFromJson(json['JobType']),
      payLoad: json['PayLoad'] as String?,
      deviceID: json['DeviceID'] as String?,
    );

Map<String, dynamic> _$BuzzToJson(Buzz instance) => <String, dynamic>{
      'JobType': buzzJobTypeToJson(instance.jobType),
      'PayLoad': instance.payLoad,
      'DeviceID': instance.deviceID,
    };

ChangePin _$ChangePinFromJson(Map<String, dynamic> json) => ChangePin(
      jobType: changePinJobTypeFromJson(json['JobType']),
      payLoad: json['PayLoad'] as String?,
      deviceID: json['DeviceID'] as String?,
    );

Map<String, dynamic> _$ChangePinToJson(ChangePin instance) => <String, dynamic>{
      'JobType': changePinJobTypeToJson(instance.jobType),
      'PayLoad': instance.payLoad,
      'DeviceID': instance.deviceID,
    };

CallTracking _$CallTrackingFromJson(Map<String, dynamic> json) => CallTracking(
      jobType: callTrackingJobTypeFromJson(json['JobType']),
      payLoad: json['PayLoad'] as String?,
      deviceID: json['DeviceID'] as String?,
    );

Map<String, dynamic> _$CallTrackingToJson(CallTracking instance) =>
    <String, dynamic>{
      'JobType': callTrackingJobTypeToJson(instance.jobType),
      'PayLoad': instance.payLoad,
      'DeviceID': instance.deviceID,
    };

SMSTracking _$SMSTrackingFromJson(Map<String, dynamic> json) => SMSTracking(
      jobType: sMSTrackingJobTypeFromJson(json['JobType']),
      payLoad: json['PayLoad'] as String?,
      deviceID: json['DeviceID'] as String?,
    );

Map<String, dynamic> _$SMSTrackingToJson(SMSTracking instance) =>
    <String, dynamic>{
      'JobType': sMSTrackingJobTypeToJson(instance.jobType),
      'PayLoad': instance.payLoad,
      'DeviceID': instance.deviceID,
    };

Wipe _$WipeFromJson(Map<String, dynamic> json) => Wipe(
      jobType: wipeJobTypeFromJson(json['JobType']),
      deviceID: json['DeviceID'] as String?,
    );

Map<String, dynamic> _$WipeToJson(Wipe instance) => <String, dynamic>{
      'JobType': wipeJobTypeToJson(instance.jobType),
      'DeviceID': instance.deviceID,
    };

ChangeDeviceName _$ChangeDeviceNameFromJson(Map<String, dynamic> json) =>
    ChangeDeviceName(
      jobType: changeDeviceNameJobTypeFromJson(json['JobType']),
      payLoad: json['PayLoad'] as String?,
      deviceID: json['DeviceID'] as String?,
    );

Map<String, dynamic> _$ChangeDeviceNameToJson(ChangeDeviceName instance) =>
    <String, dynamic>{
      'JobType': changeDeviceNameJobTypeToJson(instance.jobType),
      'PayLoad': instance.payLoad,
      'DeviceID': instance.deviceID,
    };

SetBluetoothName _$SetBluetoothNameFromJson(Map<String, dynamic> json) =>
    SetBluetoothName(
      jobType: setBluetoothNameJobTypeFromJson(json['JobType']),
      payLoad: json['PayLoad'] as String?,
      deviceID: json['DeviceID'] as String?,
    );

Map<String, dynamic> _$SetBluetoothNameToJson(SetBluetoothName instance) =>
    <String, dynamic>{
      'JobType': setBluetoothNameJobTypeToJson(instance.jobType),
      'PayLoad': instance.payLoad,
      'DeviceID': instance.deviceID,
    };

SetDeviceNotes _$SetDeviceNotesFromJson(Map<String, dynamic> json) =>
    SetDeviceNotes(
      jobType: setDeviceNotesJobTypeFromJson(json['JobType']),
      payLoad: json['PayLoad'] as String?,
      deviceID: json['DeviceID'] as String?,
    );

Map<String, dynamic> _$SetDeviceNotesToJson(SetDeviceNotes instance) =>
    <String, dynamic>{
      'JobType': setDeviceNotesJobTypeToJson(instance.jobType),
      'PayLoad': instance.payLoad,
      'DeviceID': instance.deviceID,
    };

ClearAppData _$ClearAppDataFromJson(Map<String, dynamic> json) => ClearAppData(
      jobType: clearAppDataJobTypeFromJson(json['JobType']),
      payLoad: json['PayLoad'] as String?,
      deviceID: json['DeviceID'] as String?,
    );

Map<String, dynamic> _$ClearAppDataToJson(ClearAppData instance) =>
    <String, dynamic>{
      'JobType': clearAppDataJobTypeToJson(instance.jobType),
      'PayLoad': instance.payLoad,
      'DeviceID': instance.deviceID,
    };

UninstallApplication _$UninstallApplicationFromJson(
        Map<String, dynamic> json) =>
    UninstallApplication(
      jobType: uninstallApplicationJobTypeFromJson(json['JobType']),
      payLoad: json['PayLoad'] as String?,
      deviceID: json['DeviceID'] as String?,
    );

Map<String, dynamic> _$UninstallApplicationToJson(
        UninstallApplication instance) =>
    <String, dynamic>{
      'JobType': uninstallApplicationJobTypeToJson(instance.jobType),
      'PayLoad': instance.payLoad,
      'DeviceID': instance.deviceID,
    };

LocationTracking _$LocationTrackingFromJson(Map<String, dynamic> json) =>
    LocationTracking(
      jobType: locationTrackingJobTypeFromJson(json['JobType']),
      payLoad: json['PayLoad'] as String?,
      deviceID: json['DeviceID'] as String?,
    );

Map<String, dynamic> _$LocationTrackingToJson(LocationTracking instance) =>
    <String, dynamic>{
      'JobType': locationTrackingJobTypeToJson(instance.jobType),
      'PayLoad': instance.payLoad,
      'DeviceID': instance.deviceID,
    };

GeoFence _$GeoFenceFromJson(Map<String, dynamic> json) => GeoFence(
      jobType: geoFenceJobTypeFromJson(json['JobType']),
      payLoad: json['PayLoad'] == null
          ? null
          : DynamicGeoFencingPayLoad.fromJson(
              json['PayLoad'] as Map<String, dynamic>),
      deviceID: json['DeviceID'] as String?,
    );

Map<String, dynamic> _$GeoFenceToJson(GeoFence instance) => <String, dynamic>{
      'JobType': geoFenceJobTypeToJson(instance.jobType),
      'PayLoad': instance.payLoad?.toJson(),
      'DeviceID': instance.deviceID,
    };

DynamicGeoFencingPayLoad _$DynamicGeoFencingPayLoadFromJson(
        Map<String, dynamic> json) =>
    DynamicGeoFencingPayLoad(
      enableFence: json['EnableFence'] as bool?,
      fence: (json['Fence'] as List<dynamic>?)
              ?.map((e) => (e as List<dynamic>)
                  .map((e) => DynamicGeoFencingPayLoad$Fence$Item.fromJson(
                      e as Map<String, dynamic>))
                  .toList())
              .toList() ??
          [],
      jobOut: (json['JobOut'] as List<dynamic>?)
              ?.map((e) => (e as List<dynamic>)
                  .map((e) => DynamicGeoFencingPayLoad$JobOut$Item.fromJson(
                      e as Map<String, dynamic>))
                  .toList())
              .toList() ??
          [],
      jobIn: (json['JobIn'] as List<dynamic>?)
              ?.map((e) => (e as List<dynamic>)
                  .map((e) => DynamicGeoFencingPayLoad$JobIn$Item.fromJson(
                      e as Map<String, dynamic>))
                  .toList())
              .toList() ??
          [],
      fenceJobInDeployDelay: json['FenceJobInDeployDelay'] as int?,
      fenceJobOutDeployDelay: json['FenceJobOutDeployDelay'] as int?,
      fenceJobInDeviceAlert: json['FenceJobInDeviceAlert'] as bool?,
      fenceJobInMDMAlert: json['FenceJobInMDMAlert'] as bool?,
      fenceJobInEmailAlert: json['FenceJobInEmailAlert'] as bool?,
      fenceJobInEmailId: json['FenceJobInEmailId'] as String?,
      fenceJobOutDeviceAlert: json['FenceJobOutDeviceAlert'] as bool?,
      fenceJobOutMDMAlert: json['FenceJobOutMDMAlert'] as bool?,
      fenceJobOutEmailAlert: json['FenceJobOutEmailAlert'] as bool?,
      fenceJobOutEmailId: json['FenceJobOutEmailId'] as String?,
    );

Map<String, dynamic> _$DynamicGeoFencingPayLoadToJson(
        DynamicGeoFencingPayLoad instance) =>
    <String, dynamic>{
      'EnableFence': instance.enableFence,
      'Fence': instance.fence
          ?.map((e) => e.map((e) => e.toJson()).toList())
          .toList(),
      'JobOut': instance.jobOut
          ?.map((e) => e.map((e) => e.toJson()).toList())
          .toList(),
      'JobIn': instance.jobIn
          ?.map((e) => e.map((e) => e.toJson()).toList())
          .toList(),
      'FenceJobInDeployDelay': instance.fenceJobInDeployDelay,
      'FenceJobOutDeployDelay': instance.fenceJobOutDeployDelay,
      'FenceJobInDeviceAlert': instance.fenceJobInDeviceAlert,
      'FenceJobInMDMAlert': instance.fenceJobInMDMAlert,
      'FenceJobInEmailAlert': instance.fenceJobInEmailAlert,
      'FenceJobInEmailId': instance.fenceJobInEmailId,
      'FenceJobOutDeviceAlert': instance.fenceJobOutDeviceAlert,
      'FenceJobOutMDMAlert': instance.fenceJobOutMDMAlert,
      'FenceJobOutEmailAlert': instance.fenceJobOutEmailAlert,
      'FenceJobOutEmailId': instance.fenceJobOutEmailId,
    };

TimeFence _$TimeFenceFromJson(Map<String, dynamic> json) => TimeFence(
      jobType: timeFenceJobTypeFromJson(json['JobType']),
      payLoad: json['PayLoad'] == null
          ? null
          : DynamicTimeFencingPayLoad.fromJson(
              json['PayLoad'] as Map<String, dynamic>),
      deviceID: json['DeviceID'] as String?,
    );

Map<String, dynamic> _$TimeFenceToJson(TimeFence instance) => <String, dynamic>{
      'JobType': timeFenceJobTypeToJson(instance.jobType),
      'PayLoad': instance.payLoad?.toJson(),
      'DeviceID': instance.deviceID,
    };

DynamicTimeFencingPayLoad _$DynamicTimeFencingPayLoadFromJson(
        Map<String, dynamic> json) =>
    DynamicTimeFencingPayLoad(
      enableFence: json['EnableFence'] as bool?,
      jobIn: (json['JobIn'] as List<dynamic>?)
              ?.map((e) => (e as List<dynamic>)
                  .map((e) => DynamicTimeFencingPayLoad$JobIn$Item.fromJson(
                      e as Map<String, dynamic>))
                  .toList())
              .toList() ??
          [],
      jobOut: (json['JobOut'] as List<dynamic>?)
              ?.map((e) => (e as List<dynamic>)
                  .map((e) => DynamicTimeFencingPayLoad$JobOut$Item.fromJson(
                      e as Map<String, dynamic>))
                  .toList())
              .toList() ??
          [],
      selectFence: json['SelectFence'] == null
          ? null
          : DynamicTimeFencingPayLoad$SelectFence.fromJson(
              json['SelectFence'] as Map<String, dynamic>),
      fenceJobInDeviceAlert: json['FenceJobInDeviceAlert'] as bool?,
      fenceJobInMDMAlert: json['FenceJobInMDMAlert'] as bool?,
      fenceJobInEmailAlert: json['FenceJobInEmailAlert'] as bool?,
      fenceJobInEmailId: json['FenceJobInEmailId'] as String?,
      fenceJobOutDeviceAlert: json['FenceJobOutDeviceAlert'] as bool?,
      fenceJobOutMDMAlert: json['FenceJobOutMDMAlert'] as bool?,
      fenceJobOutEmailAlert: json['FenceJobOutEmailAlert'] as bool?,
      fenceJobOutEmailId: json['FenceJobOutEmailId'] as String?,
    );

Map<String, dynamic> _$DynamicTimeFencingPayLoadToJson(
        DynamicTimeFencingPayLoad instance) =>
    <String, dynamic>{
      'EnableFence': instance.enableFence,
      'JobIn': instance.jobIn
          ?.map((e) => e.map((e) => e.toJson()).toList())
          .toList(),
      'JobOut': instance.jobOut
          ?.map((e) => e.map((e) => e.toJson()).toList())
          .toList(),
      'SelectFence': instance.selectFence?.toJson(),
      'FenceJobInDeviceAlert': instance.fenceJobInDeviceAlert,
      'FenceJobInMDMAlert': instance.fenceJobInMDMAlert,
      'FenceJobInEmailAlert': instance.fenceJobInEmailAlert,
      'FenceJobInEmailId': instance.fenceJobInEmailId,
      'FenceJobOutDeviceAlert': instance.fenceJobOutDeviceAlert,
      'FenceJobOutMDMAlert': instance.fenceJobOutMDMAlert,
      'FenceJobOutEmailAlert': instance.fenceJobOutEmailAlert,
      'FenceJobOutEmailId': instance.fenceJobOutEmailId,
    };

NetworkFence _$NetworkFenceFromJson(Map<String, dynamic> json) => NetworkFence(
      jobType: networkFenceJobTypeFromJson(json['JobType']),
      payLoad: json['PayLoad'] == null
          ? null
          : DynamicNetworkFencingPayLoad.fromJson(
              json['PayLoad'] as Map<String, dynamic>),
      deviceID: json['DeviceID'] as String?,
    );

Map<String, dynamic> _$NetworkFenceToJson(NetworkFence instance) =>
    <String, dynamic>{
      'JobType': networkFenceJobTypeToJson(instance.jobType),
      'PayLoad': instance.payLoad?.toJson(),
      'DeviceID': instance.deviceID,
    };

DynamicNetworkFencingPayLoad _$DynamicNetworkFencingPayLoadFromJson(
        Map<String, dynamic> json) =>
    DynamicNetworkFencingPayLoad(
      enableFence: json['EnableFence'] as String?,
      jobIn: json['JobIn'] == null
          ? null
          : DynamicNetworkFencingPayLoad$JobIn.fromJson(
              json['JobIn'] as Map<String, dynamic>),
      jobOut: json['JobOut'] == null
          ? null
          : DynamicNetworkFencingPayLoad$JobOut.fromJson(
              json['JobOut'] as Map<String, dynamic>),
      fenceJobInDeployDelay: json['FenceJobInDeployDelay'] as String?,
      fenceJobOutDeployDelay: json['FenceJobOutDeployDelay'] as String?,
      selectFence: json['SelectFence'] == null
          ? null
          : DynamicNetworkFencingPayLoad$SelectFence.fromJson(
              json['SelectFence'] as Map<String, dynamic>),
      fenceJobInDeviceAlert: json['FenceJobInDeviceAlert'] as bool?,
      fenceJobInMDMAlert: json['FenceJobInMDMAlert'] as bool?,
      fenceJobInEmailAlert: json['FenceJobInEmailAlert'] as bool?,
      fenceJobInEmailId: json['FenceJobInEmailId'] as String?,
      fenceJobOutDeviceAlert: json['FenceJobOutDeviceAlert'] as bool?,
      fenceJobOutMDMAlert: json['FenceJobOutMDMAlert'] as bool?,
      fenceJobOutEmailAlert: json['FenceJobOutEmailAlert'] as bool?,
      fenceJobOutEmailId: json['FenceJobOutEmailId'] as String?,
    );

Map<String, dynamic> _$DynamicNetworkFencingPayLoadToJson(
        DynamicNetworkFencingPayLoad instance) =>
    <String, dynamic>{
      'EnableFence': instance.enableFence,
      'JobIn': instance.jobIn?.toJson(),
      'JobOut': instance.jobOut?.toJson(),
      'FenceJobInDeployDelay': instance.fenceJobInDeployDelay,
      'FenceJobOutDeployDelay': instance.fenceJobOutDeployDelay,
      'SelectFence': instance.selectFence?.toJson(),
      'FenceJobInDeviceAlert': instance.fenceJobInDeviceAlert,
      'FenceJobInMDMAlert': instance.fenceJobInMDMAlert,
      'FenceJobInEmailAlert': instance.fenceJobInEmailAlert,
      'FenceJobInEmailId': instance.fenceJobInEmailId,
      'FenceJobOutDeviceAlert': instance.fenceJobOutDeviceAlert,
      'FenceJobOutMDMAlert': instance.fenceJobOutMDMAlert,
      'FenceJobOutEmailAlert': instance.fenceJobOutEmailAlert,
      'FenceJobOutEmailId': instance.fenceJobOutEmailId,
    };

ImmediateGroup _$ImmediateGroupFromJson(Map<String, dynamic> json) =>
    ImmediateGroup(
      groupId: json['GroupId'] as String,
      jobId: json['JobId'] as String,
      downloadType: json['DownloadType'] as int?,
      deviceChargingState: json['DeviceChargingState'] as String,
    );

Map<String, dynamic> _$ImmediateGroupToJson(ImmediateGroup instance) =>
    <String, dynamic>{
      'GroupId': instance.groupId,
      'JobId': instance.jobId,
      'DownloadType': instance.downloadType,
      'DeviceChargingState': instance.deviceChargingState,
    };

PeriodicallyGroup _$PeriodicallyGroupFromJson(Map<String, dynamic> json) =>
    PeriodicallyGroup(
      recursiveScheduleTime: json['RecursiveScheduleTime'] as String?,
      groupId: json['GroupId'] as String?,
      jobId: json['JobId'] as String?,
      downloadType: json['DownloadType'] as int?,
      deviceChargingState: json['DeviceChargingState'] as String?,
    );

Map<String, dynamic> _$PeriodicallyGroupToJson(PeriodicallyGroup instance) =>
    <String, dynamic>{
      'RecursiveScheduleTime': instance.recursiveScheduleTime,
      'GroupId': instance.groupId,
      'JobId': instance.jobId,
      'DownloadType': instance.downloadType,
      'DeviceChargingState': instance.deviceChargingState,
    };

DaysTimeGroup _$DaysTimeGroupFromJson(Map<String, dynamic> json) =>
    DaysTimeGroup(
      recursiveScheduleTime: json['RecursiveScheduleTime'] as String?,
      groupId: json['GroupId'] as String?,
      jobId: json['JobId'] as String?,
      downloadType: json['DownloadType'] as int?,
      deviceChargingState: json['DeviceChargingState'] as String?,
    );

Map<String, dynamic> _$DaysTimeGroupToJson(DaysTimeGroup instance) =>
    <String, dynamic>{
      'RecursiveScheduleTime': instance.recursiveScheduleTime,
      'GroupId': instance.groupId,
      'JobId': instance.jobId,
      'DownloadType': instance.downloadType,
      'DeviceChargingState': instance.deviceChargingState,
    };

DateTimeGroup _$DateTimeGroupFromJson(Map<String, dynamic> json) =>
    DateTimeGroup(
      serverScheduleTime: json['ServerScheduleTime'] as String?,
      groupId: json['GroupId'] as String?,
      jobId: json['JobId'] as String?,
      downloadType: json['DownloadType'] as int?,
      deviceChargingState: json['DeviceChargingState'] as String?,
    );

Map<String, dynamic> _$DateTimeGroupToJson(DateTimeGroup instance) =>
    <String, dynamic>{
      'ServerScheduleTime': instance.serverScheduleTime,
      'GroupId': instance.groupId,
      'JobId': instance.jobId,
      'DownloadType': instance.downloadType,
      'DeviceChargingState': instance.deviceChargingState,
    };

ImmediateTag _$ImmediateTagFromJson(Map<String, dynamic> json) => ImmediateTag(
      tagId: json['TagId'] as String,
      jobId: json['JobId'] as String,
      downloadType: json['DownloadType'] as int?,
      deviceChargingState: json['DeviceChargingState'] as String?,
    );

Map<String, dynamic> _$ImmediateTagToJson(ImmediateTag instance) =>
    <String, dynamic>{
      'TagId': instance.tagId,
      'JobId': instance.jobId,
      'DownloadType': instance.downloadType,
      'DeviceChargingState': instance.deviceChargingState,
    };

PeriodicallyTag _$PeriodicallyTagFromJson(Map<String, dynamic> json) =>
    PeriodicallyTag(
      recursiveScheduleTime: json['RecursiveScheduleTime'] as String?,
      tagId: json['TagId'] as String?,
      jobId: json['JobId'] as String?,
      downloadType: json['DownloadType'] as int?,
      deviceChargingState: json['DeviceChargingState'] as String?,
    );

Map<String, dynamic> _$PeriodicallyTagToJson(PeriodicallyTag instance) =>
    <String, dynamic>{
      'RecursiveScheduleTime': instance.recursiveScheduleTime,
      'TagId': instance.tagId,
      'JobId': instance.jobId,
      'DownloadType': instance.downloadType,
      'DeviceChargingState': instance.deviceChargingState,
    };

DaysTimeTag _$DaysTimeTagFromJson(Map<String, dynamic> json) => DaysTimeTag(
      recursiveScheduleTime: json['RecursiveScheduleTime'] as String?,
      tagId: json['TagId'] as String?,
      jobId: json['JobId'] as String?,
      downloadType: json['DownloadType'] as int?,
      deviceChargingState: json['DeviceChargingState'] as String?,
    );

Map<String, dynamic> _$DaysTimeTagToJson(DaysTimeTag instance) =>
    <String, dynamic>{
      'RecursiveScheduleTime': instance.recursiveScheduleTime,
      'TagId': instance.tagId,
      'JobId': instance.jobId,
      'DownloadType': instance.downloadType,
      'DeviceChargingState': instance.deviceChargingState,
    };

DateTimeTag _$DateTimeTagFromJson(Map<String, dynamic> json) => DateTimeTag(
      serverScheduleTime: json['ServerScheduleTime'] as String?,
      tagId: json['TagId'] as String?,
      jobId: json['JobId'] as String?,
      downloadType: json['DownloadType'] as int?,
      deviceChargingState: json['DeviceChargingState'] as String?,
    );

Map<String, dynamic> _$DateTimeTagToJson(DateTimeTag instance) =>
    <String, dynamic>{
      'ServerScheduleTime': instance.serverScheduleTime,
      'TagId': instance.tagId,
      'JobId': instance.jobId,
      'DownloadType': instance.downloadType,
      'DeviceChargingState': instance.deviceChargingState,
    };

Immediate _$ImmediateFromJson(Map<String, dynamic> json) => Immediate(
      deviceIds: (json['DeviceIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      jobId: json['JobId'] as String,
      downloadType: json['DownloadType'] as int?,
      deviceChargingState: json['DeviceChargingState'] as String,
    );

Map<String, dynamic> _$ImmediateToJson(Immediate instance) => <String, dynamic>{
      'DeviceIds': instance.deviceIds,
      'JobId': instance.jobId,
      'DownloadType': instance.downloadType,
      'DeviceChargingState': instance.deviceChargingState,
    };

Periodically _$PeriodicallyFromJson(Map<String, dynamic> json) => Periodically(
      recursiveScheduleTime: json['RecursiveScheduleTime'] as String?,
      deviceIds: (json['DeviceIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      jobId: json['JobId'] as String?,
      downloadType: json['DownloadType'] as int?,
      deviceChargingState: json['DeviceChargingState'] as String?,
    );

Map<String, dynamic> _$PeriodicallyToJson(Periodically instance) =>
    <String, dynamic>{
      'RecursiveScheduleTime': instance.recursiveScheduleTime,
      'DeviceIds': instance.deviceIds,
      'JobId': instance.jobId,
      'DownloadType': instance.downloadType,
      'DeviceChargingState': instance.deviceChargingState,
    };

DaysTime _$DaysTimeFromJson(Map<String, dynamic> json) => DaysTime(
      recursiveScheduleTime: json['RecursiveScheduleTime'] as String?,
      deviceIds: (json['DeviceIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      jobId: json['JobId'] as String?,
      downloadType: json['DownloadType'] as int?,
      deviceChargingState: json['DeviceChargingState'] as String?,
    );

Map<String, dynamic> _$DaysTimeToJson(DaysTime instance) => <String, dynamic>{
      'RecursiveScheduleTime': instance.recursiveScheduleTime,
      'DeviceIds': instance.deviceIds,
      'JobId': instance.jobId,
      'DownloadType': instance.downloadType,
      'DeviceChargingState': instance.deviceChargingState,
    };

DateTime _$DateTimeFromJson(Map<String, dynamic> json) => DateTime(
      serverScheduleTime: json['ServerScheduleTime'] as String?,
      deviceIds: (json['DeviceIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      jobId: json['JobId'] as String?,
      downloadType: json['DownloadType'] as int?,
      deviceChargingState: json['DeviceChargingState'] as String?,
    );

Map<String, dynamic> _$DateTimeToJson(DateTime instance) => <String, dynamic>{
      'ServerScheduleTime': instance.serverScheduleTime,
      'DeviceIds': instance.deviceIds,
      'JobId': instance.jobId,
      'DownloadType': instance.downloadType,
      'DeviceChargingState': instance.deviceChargingState,
    };

DeleteDevice _$DeleteDeviceFromJson(Map<String, dynamic> json) => DeleteDevice(
      deviceId: json['DeviceId'] as String,
      action: deleteDeviceActionFromJson(json['Action']),
    );

Map<String, dynamic> _$DeleteDeviceToJson(DeleteDevice instance) =>
    <String, dynamic>{
      'DeviceId': instance.deviceId,
      'Action': deleteDeviceActionToJson(instance.action),
    };

DataUsageOutput _$DataUsageOutputFromJson(Map<String, dynamic> json) =>
    DataUsageOutput(
      deviceId: json['DeviceId'] as String?,
      deviceName: json['DeviceName'] as String?,
      deviceTotalWifiDataUsage: json['DeviceTotalWifiDataUsage'] as int?,
      deviceTotalMobileDataUsage: json['DeviceTotalMobileDataUsage'] as int?,
      appsDataUsage: (json['AppsDataUsage'] as List<dynamic>?)
              ?.map((e) => (e as List<dynamic>)
                  .map((e) => DataUsageOutput$AppsDataUsage$Item.fromJson(
                      e as Map<String, dynamic>))
                  .toList())
              .toList() ??
          [],
      dataUsage: (json['DataUsage'] as List<dynamic>?)
              ?.map((e) => (e as List<dynamic>)
                  .map((e) => DataUsageOutput$DataUsage$Item.fromJson(
                      e as Map<String, dynamic>))
                  .toList())
              .toList() ??
          [],
      currentCycleStartDate: json['CurrentCycleStartDate'] as String?,
      currentCycleEndDate: json['CurrentCycleEndDate'] as String?,
      prevCycleStartDate: json['PrevCycleStartDate'] as String?,
      prevCycleEndDate: json['PrevCycleEndDate'] as String?,
    );

Map<String, dynamic> _$DataUsageOutputToJson(DataUsageOutput instance) =>
    <String, dynamic>{
      'DeviceId': instance.deviceId,
      'DeviceName': instance.deviceName,
      'DeviceTotalWifiDataUsage': instance.deviceTotalWifiDataUsage,
      'DeviceTotalMobileDataUsage': instance.deviceTotalMobileDataUsage,
      'AppsDataUsage': instance.appsDataUsage
          ?.map((e) => e.map((e) => e.toJson()).toList())
          .toList(),
      'DataUsage': instance.dataUsage
          ?.map((e) => e.map((e) => e.toJson()).toList())
          .toList(),
      'CurrentCycleStartDate': instance.currentCycleStartDate,
      'CurrentCycleEndDate': instance.currentCycleEndDate,
      'PrevCycleStartDate': instance.prevCycleStartDate,
      'PrevCycleEndDate': instance.prevCycleEndDate,
    };

DeviceLogOutput$Item _$DeviceLogOutput$ItemFromJson(
        Map<String, dynamic> json) =>
    DeviceLogOutput$Item(
      time: json['Time'] as String?,
      message: json['Message'] as String?,
      type: json['Type'] as String?,
    );

Map<String, dynamic> _$DeviceLogOutput$ItemToJson(
        DeviceLogOutput$Item instance) =>
    <String, dynamic>{
      'Time': instance.time,
      'Message': instance.message,
      'Type': instance.type,
    };

ReportOutPutModel _$ReportOutPutModelFromJson(Map<String, dynamic> json) =>
    ReportOutPutModel(
      reportID: json['ReportID'] as int?,
      reportName: json['ReportName'] as String?,
      reportDescription: json['ReportDescription'] as String?,
      useInfluxQueryReports: json['UseInfluxQueryReports'] as String?,
    );

Map<String, dynamic> _$ReportOutPutModelToJson(ReportOutPutModel instance) =>
    <String, dynamic>{
      'ReportID': instance.reportID,
      'ReportName': instance.reportName,
      'ReportDescription': instance.reportDescription,
      'UseInfluxQueryReports': instance.useInfluxQueryReports,
    };

ReportModel _$ReportModelFromJson(Map<String, dynamic> json) => ReportModel(
      offlineReportId: json['OfflineReportId'] as String?,
      queryParams: json['QueryParams'] as String?,
      reportType: json['ReportType'] as String?,
      timeZone: json['TimeZone'] as String?,
      uRLReports: json['URLReports'] as String?,
      reportParams: json['ReportParams'] as String?,
      reportID: json['ReportID'] as String?,
      sendMail: json['SendMail'] as bool?,
      emailID: json['EmailID'] as String?,
      statusOfflineReports: json['StatusOfflineReports'] as String?,
      timeStamp: json['TimeStamp'] as String?,
      isReadReports: json['isReadReports'] as bool?,
      statusReports: json['StatusReports'] as bool?,
      markDelete: json['MarkDelete'] as String?,
      groupName: json['GroupName'] as String?,
    );

Map<String, dynamic> _$ReportModelToJson(ReportModel instance) =>
    <String, dynamic>{
      'OfflineReportId': instance.offlineReportId,
      'QueryParams': instance.queryParams,
      'ReportType': instance.reportType,
      'TimeZone': instance.timeZone,
      'URLReports': instance.uRLReports,
      'ReportParams': instance.reportParams,
      'ReportID': instance.reportID,
      'SendMail': instance.sendMail,
      'EmailID': instance.emailID,
      'StatusOfflineReports': instance.statusOfflineReports,
      'TimeStamp': instance.timeStamp,
      'isReadReports': instance.isReadReports,
      'StatusReports': instance.statusReports,
      'MarkDelete': instance.markDelete,
      'GroupName': instance.groupName,
    };

JobQueueDevice _$JobQueueDeviceFromJson(Map<String, dynamic> json) =>
    JobQueueDevice(
      deviceIds: json['DeviceIds'] as String,
      showHistory: json['ShowHistory'] as bool?,
      bShowAll: json['bShowAll'] as bool?,
      jobqueueStatus:
          jobQueueDeviceJobqueueStatusFromJson(json['JobqueueStatus']),
    );

Map<String, dynamic> _$JobQueueDeviceToJson(JobQueueDevice instance) =>
    <String, dynamic>{
      'DeviceIds': instance.deviceIds,
      'ShowHistory': instance.showHistory,
      'bShowAll': instance.bShowAll,
      'JobqueueStatus':
          jobQueueDeviceJobqueueStatusToJson(instance.jobqueueStatus),
    };

DynamicJobQueueDevice _$DynamicJobQueueDeviceFromJson(
        Map<String, dynamic> json) =>
    DynamicJobQueueDevice(
      payLoad: json['PayLoad'] as String?,
    );

Map<String, dynamic> _$DynamicJobQueueDeviceToJson(
        DynamicJobQueueDevice instance) =>
    <String, dynamic>{
      'PayLoad': instance.payLoad,
    };

DeviceAssignment$Item _$DeviceAssignment$ItemFromJson(
        Map<String, dynamic> json) =>
    DeviceAssignment$Item(
      deviceId: json['DeviceId'] as String,
      groupId: json['GroupId'] as String,
    );

Map<String, dynamic> _$DeviceAssignment$ItemToJson(
        DeviceAssignment$Item instance) =>
    <String, dynamic>{
      'DeviceId': instance.deviceId,
      'GroupId': instance.groupId,
    };

JobOutputModel _$JobOutputModelFromJson(Map<String, dynamic> json) =>
    JobOutputModel(
      jobID: json['JobID'] as String?,
      jobFolderID: json['JobFolderID'] as String?,
      jobName: json['JobName'] as String?,
      platform: json['Platform'] as String?,
      type: json['Type'] as String?,
      size: json['Size'] as String?,
      lastModified: json['LastModified'] as String?,
      usesRemoteStorageJobtable: json['UsesRemoteStorageJobtable'] as String?,
    );

Map<String, dynamic> _$JobOutputModelToJson(JobOutputModel instance) =>
    <String, dynamic>{
      'JobID': instance.jobID,
      'JobFolderID': instance.jobFolderID,
      'JobName': instance.jobName,
      'Platform': instance.platform,
      'Type': instance.type,
      'Size': instance.size,
      'LastModified': instance.lastModified,
      'UsesRemoteStorageJobtable': instance.usesRemoteStorageJobtable,
    };

EditGroupModel$Item _$EditGroupModel$ItemFromJson(Map<String, dynamic> json) =>
    EditGroupModel$Item(
      groupName: json['GroupName'] as String,
      groupID: json['GroupID'] as String,
    );

Map<String, dynamic> _$EditGroupModel$ItemToJson(
        EditGroupModel$Item instance) =>
    <String, dynamic>{
      'GroupName': instance.groupName,
      'GroupID': instance.groupID,
    };

GroupByIDModel _$GroupByIDModelFromJson(Map<String, dynamic> json) =>
    GroupByIDModel(
      online: json['Online'] as int?,
      offline: json['Offline'] as int?,
      totalDevicesExcludingSubGroups:
          json['TotalDevicesExcludingSubGroups'] as int?,
      groups: json['Groups'] as List<dynamic>? ?? [],
      totalSubgroups: json['TotalSubgroups'] as int?,
    );

Map<String, dynamic> _$GroupByIDModelToJson(GroupByIDModel instance) =>
    <String, dynamic>{
      'Online': instance.online,
      'Offline': instance.offline,
      'TotalDevicesExcludingSubGroups': instance.totalDevicesExcludingSubGroups,
      'Groups': instance.groups,
      'TotalSubgroups': instance.totalSubgroups,
    };

GroupGetModel _$GroupGetModelFromJson(Map<String, dynamic> json) =>
    GroupGetModel(
      totalDevices: json['TotalDevices'] as int?,
      devices: json['Devices'] as int?,
      groups: json['Groups'] as List<dynamic>? ?? [],
      totalSubgroups: json['TotalSubgroups'] as int?,
    );

Map<String, dynamic> _$GroupGetModelToJson(GroupGetModel instance) =>
    <String, dynamic>{
      'TotalDevices': instance.totalDevices,
      'Devices': instance.devices,
      'Groups': instance.groups,
      'TotalSubgroups': instance.totalSubgroups,
    };

GroupGetAllModel _$GroupGetAllModelFromJson(Map<String, dynamic> json) =>
    GroupGetAllModel(
      groups: (json['Groups'] as List<dynamic>?)
              ?.map((e) => (e as List<dynamic>)
                  .map((e) => GroupGetAllModel$Groups$Item.fromJson(
                      e as Map<String, dynamic>))
                  .toList())
              .toList() ??
          [],
      totalSubgroups: json['TotalSubgroups'] as int?,
    );

Map<String, dynamic> _$GroupGetAllModelToJson(GroupGetAllModel instance) =>
    <String, dynamic>{
      'Groups': instance.groups
          ?.map((e) => e.map((e) => e.toJson()).toList())
          .toList(),
      'TotalSubgroups': instance.totalSubgroups,
    };

GroupPostOutputModel _$GroupPostOutputModelFromJson(
        Map<String, dynamic> json) =>
    GroupPostOutputModel();

Map<String, dynamic> _$GroupPostOutputModelToJson(
        GroupPostOutputModel instance) =>
    <String, dynamic>{};

GroupModel _$GroupModelFromJson(Map<String, dynamic> json) => GroupModel(
      groupName: json['GroupName'] as String,
      groupID: json['GroupID'] as String,
    );

Map<String, dynamic> _$GroupModelToJson(GroupModel instance) =>
    <String, dynamic>{
      'GroupName': instance.groupName,
      'GroupID': instance.groupID,
    };

JobDeleteModel _$JobDeleteModelFromJson(Map<String, dynamic> json) =>
    JobDeleteModel(
      folderId: json['FolderId'] as String,
      jobID: json['JobID'] as String,
      jobType: json['JobType'] as String?,
    );

Map<String, dynamic> _$JobDeleteModelToJson(JobDeleteModel instance) =>
    <String, dynamic>{
      'FolderId': instance.folderId,
      'JobID': instance.jobID,
      'JobType': instance.jobType,
    };

SetDeviceName _$SetDeviceNameFromJson(Map<String, dynamic> json) =>
    SetDeviceName(
      deviceId: json['DeviceId'] as String,
      deviceName: json['DeviceName'] as String,
    );

Map<String, dynamic> _$SetDeviceNameToJson(SetDeviceName instance) =>
    <String, dynamic>{
      'DeviceId': instance.deviceId,
      'DeviceName': instance.deviceName,
    };

DeviceModel$Item _$DeviceModel$ItemFromJson(Map<String, dynamic> json) =>
    DeviceModel$Item(
      deviceID: json['DeviceID'] as String?,
      connectionStatus:
          deviceModel$ItemConnectionStatusFromJson(json['ConnectionStatus']),
      groupID: json['GroupID'] as String?,
      deviceIPAddress: json['DeviceIPAddress'] as String?,
      deviceName: json['DeviceName'] as String?,
      userID: json['UserID'] as String?,
      lastTimeStamp: json['LastTimeStamp'] as String?,
      deviceModelName: json['DeviceModelName'] as String?,
      platformType: json['PlatformType'] as String?,
      $Operator: json['Operator'] as String?,
      battery: json['Battery'] as String?,
      phoneSignal: json['PhoneSignal'] as String?,
      agentVersion: json['AgentVersion'] as String?,
      sureLockVersion: json['SureLockVersion'] as String?,
      sureFoxVersion: json['SureFoxVersion'] as String?,
      sureVideoVersion: json['SureVideoVersion'] as String?,
      defaultHome: json['DefaultHome'] as String?,
      notes: json['Notes'] as String?,
      imei: json['IMEI'] as String?,
      imsi: json['IMSI'] as String?,
      phoneNumber: json['PhoneNumber'] as String?,
      serialNumber: json['SerialNumber'] as String?,
      trackingOn: json['TrackingOn'] as String?,
      trackingInterval: json['TrackingInterval'] as String?,
      callLogTrackingOn: json['CallLogTrackingOn'] as String?,
      callLogTrackingInterval: json['CallLogTrackingInterval'] as String?,
      protocol: json['Protocol'] as String?,
      jobsFailed: json['JobsFailed'] as String?,
      rootStatus: json['RootStatus'] as String?,
      macAddress: json['MacAddress'] as String?,
      securityPolicyPickedByDevice:
          json['SecurityPolicyPickedByDevice'] as String?,
      securityPolicyEnablePassword:
          json['SecurityPolicyEnablePassword'] as String?,
      securityPolicyMinPasswordLength:
          json['SecurityPolicyMinPasswordLength'] as String?,
      securityPolicyPasswordQuality:
          json['SecurityPolicyPasswordQuality'] as String?,
      securityPolicyPasswordTimeout:
          json['SecurityPolicyPasswordTimeout'] as String?,
      securityPolicyPasswordMaxAttempts:
          json['SecurityPolicyPasswordMaxAttempts'] as String?,
      enablePeripheralPolicy: json['EnablePeripheralPolicy'] as String?,
      disableWifi: json['DisableWifi'] as String?,
      disableBluetooth: json['DisableBluetooth'] as String?,
      disableCamera: json['DisableCamera'] as String?,
      enforceEncrypyion: json['EnforceEncrypyion'] as String?,
      disableGPS: json['DisableGPS'] as String?,
      disableMobileData: json['DisableMobileData'] as String?,
      jobsInQueue: json['JobsInQueue'] as String?,
      jobsDeployed: json['JobsDeployed'] as String?,
      deviceTimeStamp: json['DeviceTimeStamp'] as String?,
      wifiSignal: json['WifiSignal'] as String?,
      wifiSSID: json['WifiSSID'] as String?,
      deviceLocalIPAddress: json['DeviceLocalIPAddress'] as String?,
      totalPhysicalMemory: json['TotalPhysicalMemory'] as String?,
      totalStorageMemory: json['TotalStorageMemory'] as String?,
      availableStorageMemory: json['AvailableStorageMemory'] as String?,
      knoxStatus: json['KnoxStatus'] as String?,
      phoneRoaming: json['PhoneRoaming'] as String?,
      batteryChemistry:
          deviceModel$ItemBatteryChemistryFromJson(json['BatteryChemistry']),
      backupBatteryPercent: json['BackupBatteryPercent'] as String?,
      oSVersion: json['OSVersion'] as String?,
      dataUsage: json['DataUsage'] as String?,
      securityPolicyPickedByDeviceApplied:
          json['SecurityPolicyPickedByDeviceApplied'] as String?,
      securityPolicyEnablePasswordApplied:
          json['SecurityPolicyEnablePasswordApplied'] as String?,
      securityPolicyMinPasswordLengthApplied:
          json['SecurityPolicyMinPasswordLengthApplied'] as String?,
      securityPolicyPasswordQualityApplied:
          json['SecurityPolicyPasswordQualityApplied'] as String?,
      securityPolicyPasswordTimeoutApplied:
          json['SecurityPolicyPasswordTimeoutApplied'] as String?,
      securityPolicyPasswordMaxAttemptsApplied:
          json['SecurityPolicyPasswordMaxAttemptsApplied'] as String?,
      enablePeripheralPolicyApplied:
          json['EnablePeripheralPolicyApplied'] as String?,
      disableWifiApplied: json['DisableWifiApplied'] as String?,
      disableBluetoothApplied: json['DisableBluetoothApplied'] as String?,
      disableCameraApplied: json['DisableCameraApplied'] as String?,
      enforceEncrypyionApplied: json['EnforceEncrypyionApplied'] as String?,
      disableGPSApplied: json['DisableGPSApplied'] as String?,
      disableMobileDataApplied: json['DisableMobileDataApplied'] as String?,
      releaseVersion: json['ReleaseVersion'] as String?,
      deviceRegistered: json['DeviceRegistered'] as String?,
      cpuUsage: json['CpuUsage'] as String?,
      gpuUsage: json['GpuUsage'] as String?,
      temperature: json['Temperature'] as String?,
      smsLogTrackingOn: json['SmsLogTrackingOn'] as String?,
      smsLogTrackingInterval: json['SmsLogTrackingInterval'] as String?,
      afwProfile: json['AfwProfile'] as String?,
      isenrolled: json['Isenrolled'] as String?,
      isSupervised: json['IsSupervised'] as String?,
      currentWorkProfile: json['CurrentWorkProfile'] as String?,
      mobileDataUsageTrackingOn: json['MobileDataUsageTrackingOn'] as String?,
      batteryState: json['batteryState'] as String?,
      iOsVendorId: json['iOsVendorId'] as String?,
      enrollmentMode: json['EnrollmentMode'] as String?,
      additionalMAC: json['AdditionalMAC'] as String?,
      sureLockLicense: json['SureLockLicense'] as String?,
      sureFoxLicense: json['SureFoxLicense'] as String?,
      sureVideoLicense: json['SureVideoLicense'] as String?,
      sureLockAdmin: json['SureLockAdmin'] as String?,
      sureFoxAdmin: json['SureFoxAdmin'] as String?,
      sureVideoAdmin: json['SureVideoAdmin'] as String?,
      sureMDMNixAdmin: json['SureMDMNixAdmin'] as String?,
      nixPollingType: json['NixPollingType'] as String?,
      networkType: json['NetworkType'] as String?,
      locationTimeStamp: json['LocationTimeStamp'] as String?,
      geoFence: json['GeoFence'] as String?,
      timeFence: json['TimeFence'] as String?,
      networkFence: json['NetworkFence'] as String?,
      applicationVersionList: json['ApplicationVersionList'] as String?,
      customColumnsList: json['CustomColumnsList'] as String?,
      gPSEnabled: json['GPSEnabled'] as String?,
      bluetoothEnabled: json['BluetoothEnabled'] as String?,
      uSBPluggedIn: json['USBPluggedIn'] as String?,
      sureLockSettingsVersionCode:
          json['SureLockSettingsVersionCode'] as String?,
      osBuildNumber: json['OsBuildNumber'] as String?,
      memoryStorageAvailable: json['MemoryStorageAvailable'] as String?,
      availablePhysicalMemory: json['AvailablePhysicalMemory'] as String?,
      realDeviceName: json['RealDeviceName'] as String?,
      bssid: json['BSSID'] as String?,
      simSerialNumber: json['SimSerialNumber'] as String?,
      deviceUserName: json['DeviceUserName'] as String?,
      deviceApprovedStatus: json['DeviceApprovedStatus'] as String?,
      securityPatchDate: json['SecurityPatchDate'] as String?,
      deviceGroupPath: json['DeviceGroupPath'] as String?,
      organizationUnit: json['OrganizationUnit'] as String?,
      assetId: json['AssetId'] as String?,
      locationInfo: json['LocationInfo'] as String?,
      activationLockBypassCode: json['ActivationLockBypassCode'] as String?,
      sureLockPermissionData: json['SureLockPermissionData'] as String?,
      mTPSystemScanTimeStamp: json['MTPSystemScanTimeStamp'] as String?,
      mTPSystemScanThreatCount: json['MTPSystemScanThreatCount'] as String?,
      isMobileHotSpotEnabled: json['IsMobileHotSpotEnabled'] as String?,
      isEncryptionEnabled: json['IsEncryptionEnabled'] as String?,
      imei2: json['IMEI2'] as String?,
      ctsProfileMatch: json['CtsProfileMatch'] as String?,
      basicIntegrity: json['BasicIntegrity'] as String?,
      verifyAppEnable: json['VerifyAppEnable'] as String?,
      aDBEnable: json['ADBEnable'] as String?,
      allowUnknownSource: json['AllowUnknownSource'] as String?,
      deviceTimeZone: json['DeviceTimeZone'] as String?,
      thingsData: json['ThingsData'] as String?,
      jobsInProgress: json['JobsInProgress'] as String?,
      androidID: json['AndroidID'] as String?,
      hashCode: json['HashCode'] as String?,
      efotaRegistrationStatus: json['EfotaRegistrationStatus'] as String?,
      currentFirmwareVersion: json['CurrentFirmwareVersion'] as String?,
      currentUserWorkProfile: json['CurrentUserWorkProfile'] as String?,
      isLostModeEnabled: json['IsLostModeEnabled'] as String?,
    );

Map<String, dynamic> _$DeviceModel$ItemToJson(DeviceModel$Item instance) =>
    <String, dynamic>{
      'DeviceID': instance.deviceID,
      'ConnectionStatus':
          deviceModel$ItemConnectionStatusToJson(instance.connectionStatus),
      'GroupID': instance.groupID,
      'DeviceIPAddress': instance.deviceIPAddress,
      'DeviceName': instance.deviceName,
      'UserID': instance.userID,
      'LastTimeStamp': instance.lastTimeStamp,
      'DeviceModelName': instance.deviceModelName,
      'PlatformType': instance.platformType,
      'Operator': instance.$Operator,
      'Battery': instance.battery,
      'PhoneSignal': instance.phoneSignal,
      'AgentVersion': instance.agentVersion,
      'SureLockVersion': instance.sureLockVersion,
      'SureFoxVersion': instance.sureFoxVersion,
      'SureVideoVersion': instance.sureVideoVersion,
      'DefaultHome': instance.defaultHome,
      'Notes': instance.notes,
      'IMEI': instance.imei,
      'IMSI': instance.imsi,
      'PhoneNumber': instance.phoneNumber,
      'SerialNumber': instance.serialNumber,
      'TrackingOn': instance.trackingOn,
      'TrackingInterval': instance.trackingInterval,
      'CallLogTrackingOn': instance.callLogTrackingOn,
      'CallLogTrackingInterval': instance.callLogTrackingInterval,
      'Protocol': instance.protocol,
      'JobsFailed': instance.jobsFailed,
      'RootStatus': instance.rootStatus,
      'MacAddress': instance.macAddress,
      'SecurityPolicyPickedByDevice': instance.securityPolicyPickedByDevice,
      'SecurityPolicyEnablePassword': instance.securityPolicyEnablePassword,
      'SecurityPolicyMinPasswordLength':
          instance.securityPolicyMinPasswordLength,
      'SecurityPolicyPasswordQuality': instance.securityPolicyPasswordQuality,
      'SecurityPolicyPasswordTimeout': instance.securityPolicyPasswordTimeout,
      'SecurityPolicyPasswordMaxAttempts':
          instance.securityPolicyPasswordMaxAttempts,
      'EnablePeripheralPolicy': instance.enablePeripheralPolicy,
      'DisableWifi': instance.disableWifi,
      'DisableBluetooth': instance.disableBluetooth,
      'DisableCamera': instance.disableCamera,
      'EnforceEncrypyion': instance.enforceEncrypyion,
      'DisableGPS': instance.disableGPS,
      'DisableMobileData': instance.disableMobileData,
      'JobsInQueue': instance.jobsInQueue,
      'JobsDeployed': instance.jobsDeployed,
      'DeviceTimeStamp': instance.deviceTimeStamp,
      'WifiSignal': instance.wifiSignal,
      'WifiSSID': instance.wifiSSID,
      'DeviceLocalIPAddress': instance.deviceLocalIPAddress,
      'TotalPhysicalMemory': instance.totalPhysicalMemory,
      'TotalStorageMemory': instance.totalStorageMemory,
      'AvailableStorageMemory': instance.availableStorageMemory,
      'KnoxStatus': instance.knoxStatus,
      'PhoneRoaming': instance.phoneRoaming,
      'BatteryChemistry':
          deviceModel$ItemBatteryChemistryToJson(instance.batteryChemistry),
      'BackupBatteryPercent': instance.backupBatteryPercent,
      'OSVersion': instance.oSVersion,
      'DataUsage': instance.dataUsage,
      'SecurityPolicyPickedByDeviceApplied':
          instance.securityPolicyPickedByDeviceApplied,
      'SecurityPolicyEnablePasswordApplied':
          instance.securityPolicyEnablePasswordApplied,
      'SecurityPolicyMinPasswordLengthApplied':
          instance.securityPolicyMinPasswordLengthApplied,
      'SecurityPolicyPasswordQualityApplied':
          instance.securityPolicyPasswordQualityApplied,
      'SecurityPolicyPasswordTimeoutApplied':
          instance.securityPolicyPasswordTimeoutApplied,
      'SecurityPolicyPasswordMaxAttemptsApplied':
          instance.securityPolicyPasswordMaxAttemptsApplied,
      'EnablePeripheralPolicyApplied': instance.enablePeripheralPolicyApplied,
      'DisableWifiApplied': instance.disableWifiApplied,
      'DisableBluetoothApplied': instance.disableBluetoothApplied,
      'DisableCameraApplied': instance.disableCameraApplied,
      'EnforceEncrypyionApplied': instance.enforceEncrypyionApplied,
      'DisableGPSApplied': instance.disableGPSApplied,
      'DisableMobileDataApplied': instance.disableMobileDataApplied,
      'ReleaseVersion': instance.releaseVersion,
      'DeviceRegistered': instance.deviceRegistered,
      'CpuUsage': instance.cpuUsage,
      'GpuUsage': instance.gpuUsage,
      'Temperature': instance.temperature,
      'SmsLogTrackingOn': instance.smsLogTrackingOn,
      'SmsLogTrackingInterval': instance.smsLogTrackingInterval,
      'AfwProfile': instance.afwProfile,
      'Isenrolled': instance.isenrolled,
      'IsSupervised': instance.isSupervised,
      'CurrentWorkProfile': instance.currentWorkProfile,
      'MobileDataUsageTrackingOn': instance.mobileDataUsageTrackingOn,
      'batteryState': instance.batteryState,
      'iOsVendorId': instance.iOsVendorId,
      'EnrollmentMode': instance.enrollmentMode,
      'AdditionalMAC': instance.additionalMAC,
      'SureLockLicense': instance.sureLockLicense,
      'SureFoxLicense': instance.sureFoxLicense,
      'SureVideoLicense': instance.sureVideoLicense,
      'SureLockAdmin': instance.sureLockAdmin,
      'SureFoxAdmin': instance.sureFoxAdmin,
      'SureVideoAdmin': instance.sureVideoAdmin,
      'SureMDMNixAdmin': instance.sureMDMNixAdmin,
      'NixPollingType': instance.nixPollingType,
      'NetworkType': instance.networkType,
      'LocationTimeStamp': instance.locationTimeStamp,
      'GeoFence': instance.geoFence,
      'TimeFence': instance.timeFence,
      'NetworkFence': instance.networkFence,
      'ApplicationVersionList': instance.applicationVersionList,
      'CustomColumnsList': instance.customColumnsList,
      'GPSEnabled': instance.gPSEnabled,
      'BluetoothEnabled': instance.bluetoothEnabled,
      'USBPluggedIn': instance.uSBPluggedIn,
      'SureLockSettingsVersionCode': instance.sureLockSettingsVersionCode,
      'OsBuildNumber': instance.osBuildNumber,
      'MemoryStorageAvailable': instance.memoryStorageAvailable,
      'AvailablePhysicalMemory': instance.availablePhysicalMemory,
      'RealDeviceName': instance.realDeviceName,
      'BSSID': instance.bssid,
      'SimSerialNumber': instance.simSerialNumber,
      'DeviceUserName': instance.deviceUserName,
      'DeviceApprovedStatus': instance.deviceApprovedStatus,
      'SecurityPatchDate': instance.securityPatchDate,
      'DeviceGroupPath': instance.deviceGroupPath,
      'OrganizationUnit': instance.organizationUnit,
      'AssetId': instance.assetId,
      'LocationInfo': instance.locationInfo,
      'ActivationLockBypassCode': instance.activationLockBypassCode,
      'SureLockPermissionData': instance.sureLockPermissionData,
      'MTPSystemScanTimeStamp': instance.mTPSystemScanTimeStamp,
      'MTPSystemScanThreatCount': instance.mTPSystemScanThreatCount,
      'IsMobileHotSpotEnabled': instance.isMobileHotSpotEnabled,
      'IsEncryptionEnabled': instance.isEncryptionEnabled,
      'IMEI2': instance.imei2,
      'CtsProfileMatch': instance.ctsProfileMatch,
      'BasicIntegrity': instance.basicIntegrity,
      'VerifyAppEnable': instance.verifyAppEnable,
      'ADBEnable': instance.aDBEnable,
      'AllowUnknownSource': instance.allowUnknownSource,
      'DeviceTimeZone': instance.deviceTimeZone,
      'ThingsData': instance.thingsData,
      'JobsInProgress': instance.jobsInProgress,
      'AndroidID': instance.androidID,
      'HashCode': instance.hashCode,
      'EfotaRegistrationStatus': instance.efotaRegistrationStatus,
      'CurrentFirmwareVersion': instance.currentFirmwareVersion,
      'CurrentUserWorkProfile': instance.currentUserWorkProfile,
      'IsLostModeEnabled': instance.isLostModeEnabled,
    };

JobCreateModel _$JobCreateModelFromJson(Map<String, dynamic> json) =>
    JobCreateModel(
      jobName: json['JobName'] as String,
      folderId: json['FolderId'] as String,
    );

Map<String, dynamic> _$JobCreateModelToJson(JobCreateModel instance) =>
    <String, dynamic>{
      'JobName': instance.jobName,
      'FolderId': instance.folderId,
    };

ThirdPartyAppSettingsJob _$ThirdPartyAppSettingsJobFromJson(
        Map<String, dynamic> json) =>
    ThirdPartyAppSettingsJob(
      jobType: json['JobType'] as String?,
      platform: json['Platform'] as String?,
      payLoad: json['PayLoad'] == null
          ? null
          : ThirdPartyAppSettingsPayLoad.fromJson(
              json['PayLoad'] as Map<String, dynamic>),
      jobName: json['JobName'] as String?,
      folderId: json['FolderId'] as String?,
    );

Map<String, dynamic> _$ThirdPartyAppSettingsJobToJson(
        ThirdPartyAppSettingsJob instance) =>
    <String, dynamic>{
      'JobType': instance.jobType,
      'Platform': instance.platform,
      'PayLoad': instance.payLoad?.toJson(),
      'JobName': instance.jobName,
      'FolderId': instance.folderId,
    };

ThirdPartyAppSettingsPayLoad _$ThirdPartyAppSettingsPayLoadFromJson(
        Map<String, dynamic> json) =>
    ThirdPartyAppSettingsPayLoad(
      settingsXML: json['SettingsXML'] as String?,
      password: json['Password'] as String?,
      type: json['Type'] as int?,
    );

Map<String, dynamic> _$ThirdPartyAppSettingsPayLoadToJson(
        ThirdPartyAppSettingsPayLoad instance) =>
    <String, dynamic>{
      'SettingsXML': instance.settingsXML,
      'Password': instance.password,
      'Type': instance.type,
    };

AndroidThirdPartyAppSettings _$AndroidThirdPartyAppSettingsFromJson(
        Map<String, dynamic> json) =>
    AndroidThirdPartyAppSettings(
      minimumVersion: json['MinimumVersion'] as String?,
      versionCompare: json['VersionCompare'] as String?,
      jobName: json['JobName'] as String?,
      folderId: json['FolderId'] as String?,
    );

Map<String, dynamic> _$AndroidThirdPartyAppSettingsToJson(
        AndroidThirdPartyAppSettings instance) =>
    <String, dynamic>{
      'MinimumVersion': instance.minimumVersion,
      'VersionCompare': instance.versionCompare,
      'JobName': instance.jobName,
      'FolderId': instance.folderId,
    };

OthersThirdPartyAppSettings _$OthersThirdPartyAppSettingsFromJson(
        Map<String, dynamic> json) =>
    OthersThirdPartyAppSettings();

Map<String, dynamic> _$OthersThirdPartyAppSettingsToJson(
        OthersThirdPartyAppSettings instance) =>
    <String, dynamic>{};

CompliancePolicyJob _$CompliancePolicyJobFromJson(Map<String, dynamic> json) =>
    CompliancePolicyJob(
      jobType: json['JobType'] as String?,
      payLoad: (json['PayLoad'] as List<dynamic>?)
          ?.map((e) =>
              CompliancePolicyPayLoad$Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      platform: json['Platform'] as String?,
      jobName: json['JobName'] as String?,
      folderId: json['FolderId'] as String?,
    );

Map<String, dynamic> _$CompliancePolicyJobToJson(
        CompliancePolicyJob instance) =>
    <String, dynamic>{
      'JobType': instance.jobType,
      'PayLoad': instance.payLoad?.map((e) => e.toJson()).toList(),
      'Platform': instance.platform,
      'JobName': instance.jobName,
      'FolderId': instance.folderId,
    };

CompliancePolicyPayLoad$Item _$CompliancePolicyPayLoad$ItemFromJson(
        Map<String, dynamic> json) =>
    CompliancePolicyPayLoad$Item(
      oSVersionRule: json['OSVersionRule'],
      jailBrokenRootedRule: json['JailBrokenRootedRule'],
      onlineConnectivityRule: json['OnlineConnectivityRule'],
      simChangeRule: json['SimChangeRule'],
      passcodePolicyRule: json['PasscodePolicyRule'],
      batteryRule: json['BatteryRule'],
      applicationPolicyRule: json['ApplicationPolicyRule'],
      isEnable: json['IsEnable'] as bool?,
    );

Map<String, dynamic> _$CompliancePolicyPayLoad$ItemToJson(
        CompliancePolicyPayLoad$Item instance) =>
    <String, dynamic>{
      'OSVersionRule': instance.oSVersionRule,
      'JailBrokenRootedRule': instance.jailBrokenRootedRule,
      'OnlineConnectivityRule': instance.onlineConnectivityRule,
      'SimChangeRule': instance.simChangeRule,
      'PasscodePolicyRule': instance.passcodePolicyRule,
      'BatteryRule': instance.batteryRule,
      'ApplicationPolicyRule': instance.applicationPolicyRule,
      'IsEnable': instance.isEnable,
    };

ActionCompliance$Item _$ActionCompliance$ItemFromJson(
        Map<String, dynamic> json) =>
    ActionCompliance$Item(
      type: actionCompliance$ItemTypeFromJson(json['type']),
      delayTime: json['delayTime'] as String?,
      delayunit: actionCompliance$ItemDelayunitFromJson(json['delayunit']),
      phonenumber: json['phonenumber'] as String?,
      emailids: json['emailids'] as String?,
      jobids: (json['jobids'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
    );

Map<String, dynamic> _$ActionCompliance$ItemToJson(
        ActionCompliance$Item instance) =>
    <String, dynamic>{
      'type': actionCompliance$ItemTypeToJson(instance.type),
      'delayTime': instance.delayTime,
      'delayunit': actionCompliance$ItemDelayunitToJson(instance.delayunit),
      'phonenumber': instance.phonenumber,
      'emailids': instance.emailids,
      'jobids': instance.jobids,
    };

SecurityPolicyJob _$SecurityPolicyJobFromJson(Map<String, dynamic> json) =>
    SecurityPolicyJob(
      jobType: json['JobType'] as String?,
      payLoad: (json['PayLoad'] as List<dynamic>?)
          ?.map((e) =>
              SecurityPolicyPayLoad$Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      platform: json['Platform'] as String?,
      jobName: json['JobName'] as String?,
      folderId: json['FolderId'] as String?,
    );

Map<String, dynamic> _$SecurityPolicyJobToJson(SecurityPolicyJob instance) =>
    <String, dynamic>{
      'JobType': instance.jobType,
      'PayLoad': instance.payLoad?.map((e) => e.toJson()).toList(),
      'Platform': instance.platform,
      'JobName': instance.jobName,
      'FolderId': instance.folderId,
    };

SecurityPolicyPayLoad$Item _$SecurityPolicyPayLoad$ItemFromJson(
        Map<String, dynamic> json) =>
    SecurityPolicyPayLoad$Item(
      passwordPolicy: json['PasswordPolicy'],
      peripheralSettings: json['PeripheralSettings'],
    );

Map<String, dynamic> _$SecurityPolicyPayLoad$ItemToJson(
        SecurityPolicyPayLoad$Item instance) =>
    <String, dynamic>{
      'PasswordPolicy': instance.passwordPolicy,
      'PeripheralSettings': instance.peripheralSettings,
    };

RemoteBuzzJob _$RemoteBuzzJobFromJson(Map<String, dynamic> json) =>
    RemoteBuzzJob(
      jobType: json['JobType'] as String?,
      payLoad: (json['PayLoad'] as List<dynamic>?)
          ?.map(
              (e) => RemoteBuzzPayLoad$Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      platform: json['Platform'] as String?,
      jobName: json['JobName'] as String?,
      folderId: json['FolderId'] as String?,
    );

Map<String, dynamic> _$RemoteBuzzJobToJson(RemoteBuzzJob instance) =>
    <String, dynamic>{
      'JobType': instance.jobType,
      'PayLoad': instance.payLoad?.map((e) => e.toJson()).toList(),
      'Platform': instance.platform,
      'JobName': instance.jobName,
      'FolderId': instance.folderId,
    };

RemoteBuzzPayLoad$Item _$RemoteBuzzPayLoad$ItemFromJson(
        Map<String, dynamic> json) =>
    RemoteBuzzPayLoad$Item(
      periodicity: json['Periodicity'] as String?,
    );

Map<String, dynamic> _$RemoteBuzzPayLoad$ItemToJson(
        RemoteBuzzPayLoad$Item instance) =>
    <String, dynamic>{
      'Periodicity': instance.periodicity,
    };

LockDeviceJob _$LockDeviceJobFromJson(Map<String, dynamic> json) =>
    LockDeviceJob(
      jobType: json['JobType'] as String?,
      payLoad: (json['PayLoad'] as List<dynamic>?)
          ?.map(
              (e) => LockDevicePayLoad$Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      platform: json['Platform'] as String?,
      jobName: json['JobName'] as String?,
      folderId: json['FolderId'] as String?,
    );

Map<String, dynamic> _$LockDeviceJobToJson(LockDeviceJob instance) =>
    <String, dynamic>{
      'JobType': instance.jobType,
      'PayLoad': instance.payLoad?.map((e) => e.toJson()).toList(),
      'Platform': instance.platform,
      'JobName': instance.jobName,
      'FolderId': instance.folderId,
    };

LockDevicePayLoad$Item _$LockDevicePayLoad$ItemFromJson(
        Map<String, dynamic> json) =>
    LockDevicePayLoad$Item(
      lockDevice: json['LockDevice'] as bool?,
      changeDevicePassword: json['ChangeDevicePassword'] as bool?,
      password: json['Password'] as String?,
      token: json['Token'] as String?,
    );

Map<String, dynamic> _$LockDevicePayLoad$ItemToJson(
        LockDevicePayLoad$Item instance) =>
    <String, dynamic>{
      'LockDevice': instance.lockDevice,
      'ChangeDevicePassword': instance.changeDevicePassword,
      'Password': instance.password,
      'Token': instance.token,
    };

DelayJob _$DelayJobFromJson(Map<String, dynamic> json) => DelayJob(
      jobType: json['JobType'] as String?,
      payLoad: json['PayLoad'] == null
          ? null
          : DelayJobPayLoad.fromJson(json['PayLoad'] as Map<String, dynamic>),
      platform: json['Platform'] as String?,
      jobName: json['JobName'] as String?,
      folderId: json['FolderId'] as String?,
    );

Map<String, dynamic> _$DelayJobToJson(DelayJob instance) => <String, dynamic>{
      'JobType': instance.jobType,
      'PayLoad': instance.payLoad?.toJson(),
      'Platform': instance.platform,
      'JobName': instance.jobName,
      'FolderId': instance.folderId,
    };

DelayJobPayLoad _$DelayJobPayLoadFromJson(Map<String, dynamic> json) =>
    DelayJobPayLoad(
      delayInterval: json['DelayInterval'] as String?,
    );

Map<String, dynamic> _$DelayJobPayLoadToJson(DelayJobPayLoad instance) =>
    <String, dynamic>{
      'DelayInterval': instance.delayInterval,
    };

RunScriptJob _$RunScriptJobFromJson(Map<String, dynamic> json) => RunScriptJob(
      jobType: json['JobType'] as String?,
      platform: json['Platform'] as String?,
      payLoad:
          (json['PayLoad'] as List<dynamic>?)?.map((e) => e as Object).toList(),
      jobName: json['JobName'] as String?,
      folderId: json['FolderId'] as String?,
    );

Map<String, dynamic> _$RunScriptJobToJson(RunScriptJob instance) =>
    <String, dynamic>{
      'JobType': instance.jobType,
      'Platform': instance.platform,
      'PayLoad': instance.payLoad,
      'JobName': instance.jobName,
      'FolderId': instance.folderId,
    };

FileTransferJob _$FileTransferJobFromJson(Map<String, dynamic> json) =>
    FileTransferJob(
      jobType: json['JobType'] as String?,
      payLoad: (json['PayLoad'] as List<dynamic>?)
          ?.map((e) =>
              FileTransferPayLoad$Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      platform: json['Platform'] as String?,
      jobName: json['JobName'] as String?,
      folderId: json['FolderId'] as String?,
    );

Map<String, dynamic> _$FileTransferJobToJson(FileTransferJob instance) =>
    <String, dynamic>{
      'JobType': instance.jobType,
      'PayLoad': instance.payLoad?.map((e) => e.toJson()).toList(),
      'Platform': instance.platform,
      'JobName': instance.jobName,
      'FolderId': instance.folderId,
    };

FileTransferPayLoad$Item _$FileTransferPayLoad$ItemFromJson(
        Map<String, dynamic> json) =>
    FileTransferPayLoad$Item(
      localPath: json['LocalPath'] as String?,
      devicePath: json['DevicePath'] as String?,
      install: json['Install'] as bool?,
      isHttpUrl: json['IsHttpUrl'] as bool?,
      useBasicAuthentication: json['UseBasicAuthentication'] as bool?,
      httpUserName: json['HttpUserName'] as String?,
      httpPassword: json['HttpPassword'] as String?,
      isSilent: json['IsSilent'] as bool?,
      executePath: json['ExecutePath'] as String?,
      currentUser: json['CurrentUser'] as bool?,
      jobNameXML: json['JobNameXML'] as String?,
      fromAppStore: json['FromAppStore'] as bool?,
    );

Map<String, dynamic> _$FileTransferPayLoad$ItemToJson(
        FileTransferPayLoad$Item instance) =>
    <String, dynamic>{
      'LocalPath': instance.localPath,
      'DevicePath': instance.devicePath,
      'Install': instance.install,
      'IsHttpUrl': instance.isHttpUrl,
      'UseBasicAuthentication': instance.useBasicAuthentication,
      'HttpUserName': instance.httpUserName,
      'HttpPassword': instance.httpPassword,
      'IsSilent': instance.isSilent,
      'ExecutePath': instance.executePath,
      'CurrentUser': instance.currentUser,
      'JobNameXML': instance.jobNameXML,
      'FromAppStore': instance.fromAppStore,
    };

CompositeJob _$CompositeJobFromJson(Map<String, dynamic> json) => CompositeJob(
      jobType: json['JobType'] as String?,
      payLoad:
          (json['PayLoad'] as List<dynamic>?)?.map((e) => e as Object).toList(),
      platform: json['Platform'] as String?,
      jobName: json['JobName'] as String?,
      folderId: json['FolderId'] as String?,
    );

Map<String, dynamic> _$CompositeJobToJson(CompositeJob instance) =>
    <String, dynamic>{
      'JobType': instance.jobType,
      'PayLoad': instance.payLoad,
      'Platform': instance.platform,
      'JobName': instance.jobName,
      'FolderId': instance.folderId,
    };

AndroidComposite _$AndroidCompositeFromJson(Map<String, dynamic> json) =>
    AndroidComposite(
      minimumVersion: json['MinimumVersion'] as String?,
      versionCompare: json['VersionCompare'] as String?,
      jobName: json['JobName'] as String?,
      folderId: json['FolderId'] as String?,
    );

Map<String, dynamic> _$AndroidCompositeToJson(AndroidComposite instance) =>
    <String, dynamic>{
      'MinimumVersion': instance.minimumVersion,
      'VersionCompare': instance.versionCompare,
      'JobName': instance.jobName,
      'FolderId': instance.folderId,
    };

OthersComposite _$OthersCompositeFromJson(Map<String, dynamic> json) =>
    OthersComposite();

Map<String, dynamic> _$OthersCompositeToJson(OthersComposite instance) =>
    <String, dynamic>{};

InstallJob _$InstallJobFromJson(Map<String, dynamic> json) => InstallJob(
      jobType: json['JobType'] as String?,
      payLoad: (json['PayLoad'] as List<dynamic>?)
          ?.map((e) => InstallPayLoad$Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      platform: json['Platform'] as String?,
      jobName: json['JobName'] as String?,
      folderId: json['FolderId'] as String?,
    );

Map<String, dynamic> _$InstallJobToJson(InstallJob instance) =>
    <String, dynamic>{
      'JobType': instance.jobType,
      'PayLoad': instance.payLoad?.map((e) => e.toJson()).toList(),
      'Platform': instance.platform,
      'JobName': instance.jobName,
      'FolderId': instance.folderId,
    };

InstallPayLoad$Item _$InstallPayLoad$ItemFromJson(Map<String, dynamic> json) =>
    InstallPayLoad$Item(
      localPath: json['LocalPath'] as String?,
      devicePath: json['DevicePath'] as String?,
      install: json['Install'] as bool?,
      isHttpUrl: json['IsHttpUrl'] as bool?,
      useBasicAuthentication: json['UseBasicAuthentication'] as bool?,
      httpUserName: json['HttpUserName'] as String?,
      httpPassword: json['HttpPassword'] as String?,
      isSilent: json['IsSilent'] as bool?,
      executePath: json['ExecutePath'] as String?,
      currentUser: json['CurrentUser'] as bool?,
      jobNameXML: json['JobNameXML'] as String?,
      fromAppStore: json['FromAppStore'] as bool?,
    );

Map<String, dynamic> _$InstallPayLoad$ItemToJson(
        InstallPayLoad$Item instance) =>
    <String, dynamic>{
      'LocalPath': instance.localPath,
      'DevicePath': instance.devicePath,
      'Install': instance.install,
      'IsHttpUrl': instance.isHttpUrl,
      'UseBasicAuthentication': instance.useBasicAuthentication,
      'HttpUserName': instance.httpUserName,
      'HttpPassword': instance.httpPassword,
      'IsSilent': instance.isSilent,
      'ExecutePath': instance.executePath,
      'CurrentUser': instance.currentUser,
      'JobNameXML': instance.jobNameXML,
      'FromAppStore': instance.fromAppStore,
    };

AndroidFileTransfer _$AndroidFileTransferFromJson(Map<String, dynamic> json) =>
    AndroidFileTransfer(
      minimumVersion: json['MinimumVersion'] as String?,
      versionCompare: json['VersionCompare'] as String?,
      jobName: json['JobName'] as String?,
      folderId: json['FolderId'] as String?,
    );

Map<String, dynamic> _$AndroidFileTransferToJson(
        AndroidFileTransfer instance) =>
    <String, dynamic>{
      'MinimumVersion': instance.minimumVersion,
      'VersionCompare': instance.versionCompare,
      'JobName': instance.jobName,
      'FolderId': instance.folderId,
    };

OthersInstall _$OthersInstallFromJson(Map<String, dynamic> json) =>
    OthersInstall();

Map<String, dynamic> _$OthersInstallToJson(OthersInstall instance) =>
    <String, dynamic>{};

NotificationPolicyJob _$NotificationPolicyJobFromJson(
        Map<String, dynamic> json) =>
    NotificationPolicyJob(
      jobType: json['JobType'] as String?,
      payLoad: (json['PayLoad'] as List<dynamic>?)
          ?.map((e) => NotificationPolicyPayLoad$Item.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      platform: json['Platform'] as String?,
      jobName: json['JobName'] as String?,
      folderId: json['FolderId'] as String?,
    );

Map<String, dynamic> _$NotificationPolicyJobToJson(
        NotificationPolicyJob instance) =>
    <String, dynamic>{
      'JobType': instance.jobType,
      'PayLoad': instance.payLoad?.map((e) => e.toJson()).toList(),
      'Platform': instance.platform,
      'JobName': instance.jobName,
      'FolderId': instance.folderId,
    };

NotificationPolicyPayLoad$Item _$NotificationPolicyPayLoad$ItemFromJson(
        Map<String, dynamic> json) =>
    NotificationPolicyPayLoad$Item(
      policySettings: json['PolicySettings'],
    );

Map<String, dynamic> _$NotificationPolicyPayLoad$ItemToJson(
        NotificationPolicyPayLoad$Item instance) =>
    <String, dynamic>{
      'PolicySettings': instance.policySettings,
    };

GeoFencingJob _$GeoFencingJobFromJson(Map<String, dynamic> json) =>
    GeoFencingJob(
      jobType: json['JobType'] as String?,
      payLoad: (json['PayLoad'] as List<dynamic>?)
          ?.map(
              (e) => GeoFencingPayLoad$Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      platform: json['Platform'] as String?,
      jobName: json['JobName'] as String?,
      folderId: json['FolderId'] as String?,
    );

Map<String, dynamic> _$GeoFencingJobToJson(GeoFencingJob instance) =>
    <String, dynamic>{
      'JobType': instance.jobType,
      'PayLoad': instance.payLoad?.map((e) => e.toJson()).toList(),
      'Platform': instance.platform,
      'JobName': instance.jobName,
      'FolderId': instance.folderId,
    };

GeoFencingPayLoad$Item _$GeoFencingPayLoad$ItemFromJson(
        Map<String, dynamic> json) =>
    GeoFencingPayLoad$Item(
      enableFence: json['EnableFence'] as bool?,
      fence:
          (json['Fence'] as List<dynamic>?)?.map((e) => e as Object).toList() ??
              [],
      jobOut: (json['JobOut'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
      jobIn:
          (json['JobIn'] as List<dynamic>?)?.map((e) => e as Object).toList() ??
              [],
      fenceJobInDeployDelay: json['FenceJobInDeployDelay'] as int?,
      fenceJobOutDeployDelay: json['FenceJobOutDeployDelay'] as int?,
      fenceJobInDeviceAlert: json['FenceJobInDeviceAlert'] as bool?,
      fenceJobInMDMAlert: json['FenceJobInMDMAlert'] as bool?,
      fenceJobInEmailAlert: json['FenceJobInEmailAlert'] as bool?,
      fenceJobInEmailId: json['FenceJobInEmailId'] as String?,
      fenceJobOutDeviceAlert: json['FenceJobOutDeviceAlert'] as bool?,
      fenceJobOutMDMAlert: json['FenceJobOutMDMAlert'] as bool?,
      fenceJobOutEmailAlert: json['FenceJobOutEmailAlert'] as bool?,
      fenceJobOutEmailId: json['FenceJobOutEmailId'] as String?,
    );

Map<String, dynamic> _$GeoFencingPayLoad$ItemToJson(
        GeoFencingPayLoad$Item instance) =>
    <String, dynamic>{
      'EnableFence': instance.enableFence,
      'Fence': instance.fence,
      'JobOut': instance.jobOut,
      'JobIn': instance.jobIn,
      'FenceJobInDeployDelay': instance.fenceJobInDeployDelay,
      'FenceJobOutDeployDelay': instance.fenceJobOutDeployDelay,
      'FenceJobInDeviceAlert': instance.fenceJobInDeviceAlert,
      'FenceJobInMDMAlert': instance.fenceJobInMDMAlert,
      'FenceJobInEmailAlert': instance.fenceJobInEmailAlert,
      'FenceJobInEmailId': instance.fenceJobInEmailId,
      'FenceJobOutDeviceAlert': instance.fenceJobOutDeviceAlert,
      'FenceJobOutMDMAlert': instance.fenceJobOutMDMAlert,
      'FenceJobOutEmailAlert': instance.fenceJobOutEmailAlert,
      'FenceJobOutEmailId': instance.fenceJobOutEmailId,
    };

NixAgentSettingJob _$NixAgentSettingJobFromJson(Map<String, dynamic> json) =>
    NixAgentSettingJob(
      jobType: json['JobType'] as String?,
      payLoad: (json['PayLoad'] as List<dynamic>?)
          ?.map((e) =>
              NixAgentSettingPayLoad$Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      platform: json['Platform'] as String?,
      jobName: json['JobName'] as String?,
      folderId: json['FolderId'] as String?,
    );

Map<String, dynamic> _$NixAgentSettingJobToJson(NixAgentSettingJob instance) =>
    <String, dynamic>{
      'JobType': instance.jobType,
      'PayLoad': instance.payLoad?.map((e) => e.toJson()).toList(),
      'Platform': instance.platform,
      'JobName': instance.jobName,
      'FolderId': instance.folderId,
    };

NixAgentSettingPayLoad$Item _$NixAgentSettingPayLoad$ItemFromJson(
        Map<String, dynamic> json) =>
    NixAgentSettingPayLoad$Item(
      timeSynchronizationSettings: json['TimeSynchronizationSettings'],
      periodicUpdateSettings: json['PeriodicUpdateSettings'],
      scheduledRebootSettings: json['ScheduledRebootSettings'],
      scheduledShutDownSettings: json['ScheduledShutDownSettings'],
      connectionType: json['ConnectionType'] as String?,
      nixPassword: json['NixPassword'] as bool?,
      password: json['Password'] as String?,
    );

Map<String, dynamic> _$NixAgentSettingPayLoad$ItemToJson(
        NixAgentSettingPayLoad$Item instance) =>
    <String, dynamic>{
      'TimeSynchronizationSettings': instance.timeSynchronizationSettings,
      'PeriodicUpdateSettings': instance.periodicUpdateSettings,
      'ScheduledRebootSettings': instance.scheduledRebootSettings,
      'ScheduledShutDownSettings': instance.scheduledShutDownSettings,
      'ConnectionType': instance.connectionType,
      'NixPassword': instance.nixPassword,
      'Password': instance.password,
    };

TimeFencingJob _$TimeFencingJobFromJson(Map<String, dynamic> json) =>
    TimeFencingJob(
      jobType: json['JobType'] as String?,
      payLoad: (json['PayLoad'] as List<dynamic>?)
          ?.map((e) =>
              TimeFencingPayLoad$Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      platform: json['Platform'] as String?,
      jobName: json['JobName'] as String?,
      folderId: json['FolderId'] as String?,
    );

Map<String, dynamic> _$TimeFencingJobToJson(TimeFencingJob instance) =>
    <String, dynamic>{
      'JobType': instance.jobType,
      'PayLoad': instance.payLoad?.map((e) => e.toJson()).toList(),
      'Platform': instance.platform,
      'JobName': instance.jobName,
      'FolderId': instance.folderId,
    };

TimeFencingPayLoad$Item _$TimeFencingPayLoad$ItemFromJson(
        Map<String, dynamic> json) =>
    TimeFencingPayLoad$Item(
      enableFence: json['EnableFence'] as bool?,
      jobIn:
          (json['JobIn'] as List<dynamic>?)?.map((e) => e as Object).toList() ??
              [],
      jobOut: (json['JobOut'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
      selectFence: json['SelectFence'],
      fenceJobInDeviceAlert: json['FenceJobInDeviceAlert'] as bool?,
      fenceJobInMDMAlert: json['FenceJobInMDMAlert'] as bool?,
      fenceJobInEmailAlert: json['FenceJobInEmailAlert'] as bool?,
      fenceJobInEmailId: json['FenceJobInEmailId'] as String?,
      fenceJobOutDeviceAlert: json['FenceJobOutDeviceAlert'] as bool?,
      fenceJobOutMDMAlert: json['FenceJobOutMDMAlert'] as bool?,
      fenceJobOutEmailAlert: json['FenceJobOutEmailAlert'] as bool?,
      fenceJobOutEmailId: json['FenceJobOutEmailId'] as String?,
    );

Map<String, dynamic> _$TimeFencingPayLoad$ItemToJson(
        TimeFencingPayLoad$Item instance) =>
    <String, dynamic>{
      'EnableFence': instance.enableFence,
      'JobIn': instance.jobIn,
      'JobOut': instance.jobOut,
      'SelectFence': instance.selectFence,
      'FenceJobInDeviceAlert': instance.fenceJobInDeviceAlert,
      'FenceJobInMDMAlert': instance.fenceJobInMDMAlert,
      'FenceJobInEmailAlert': instance.fenceJobInEmailAlert,
      'FenceJobInEmailId': instance.fenceJobInEmailId,
      'FenceJobOutDeviceAlert': instance.fenceJobOutDeviceAlert,
      'FenceJobOutMDMAlert': instance.fenceJobOutMDMAlert,
      'FenceJobOutEmailAlert': instance.fenceJobOutEmailAlert,
      'FenceJobOutEmailId': instance.fenceJobOutEmailId,
    };

NetworkFencingJob _$NetworkFencingJobFromJson(Map<String, dynamic> json) =>
    NetworkFencingJob(
      jobType: json['JobType'] as String?,
      payLoad: (json['PayLoad'] as List<dynamic>?)
          ?.map((e) =>
              NetworkFencingPayLoad$Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      platform: json['Platform'] as String?,
      jobName: json['JobName'] as String?,
      folderId: json['FolderId'] as String?,
    );

Map<String, dynamic> _$NetworkFencingJobToJson(NetworkFencingJob instance) =>
    <String, dynamic>{
      'JobType': instance.jobType,
      'PayLoad': instance.payLoad?.map((e) => e.toJson()).toList(),
      'Platform': instance.platform,
      'JobName': instance.jobName,
      'FolderId': instance.folderId,
    };

NetworkFencingPayLoad$Item _$NetworkFencingPayLoad$ItemFromJson(
        Map<String, dynamic> json) =>
    NetworkFencingPayLoad$Item(
      enableFence: json['EnableFence'] as String?,
      jobIn: json['JobIn'],
      jobOut: json['JobOut'],
      fenceJobInDeployDelay: json['FenceJobInDeployDelay'] as String?,
      fenceJobOutDeployDelay: json['FenceJobOutDeployDelay'] as String?,
      selectFence: json['SelectFence'],
      fenceJobInDeviceAlert: json['FenceJobInDeviceAlert'] as bool?,
      fenceJobInMDMAlert: json['FenceJobInMDMAlert'] as bool?,
      fenceJobInEmailAlert: json['FenceJobInEmailAlert'] as bool?,
      fenceJobInEmailId: json['FenceJobInEmailId'] as String?,
      fenceJobOutDeviceAlert: json['FenceJobOutDeviceAlert'] as bool?,
      fenceJobOutMDMAlert: json['FenceJobOutMDMAlert'] as bool?,
      fenceJobOutEmailAlert: json['FenceJobOutEmailAlert'] as bool?,
      fenceJobOutEmailId: json['FenceJobOutEmailId'] as String?,
    );

Map<String, dynamic> _$NetworkFencingPayLoad$ItemToJson(
        NetworkFencingPayLoad$Item instance) =>
    <String, dynamic>{
      'EnableFence': instance.enableFence,
      'JobIn': instance.jobIn,
      'JobOut': instance.jobOut,
      'FenceJobInDeployDelay': instance.fenceJobInDeployDelay,
      'FenceJobOutDeployDelay': instance.fenceJobOutDeployDelay,
      'SelectFence': instance.selectFence,
      'FenceJobInDeviceAlert': instance.fenceJobInDeviceAlert,
      'FenceJobInMDMAlert': instance.fenceJobInMDMAlert,
      'FenceJobInEmailAlert': instance.fenceJobInEmailAlert,
      'FenceJobInEmailId': instance.fenceJobInEmailId,
      'FenceJobOutDeviceAlert': instance.fenceJobOutDeviceAlert,
      'FenceJobOutMDMAlert': instance.fenceJobOutMDMAlert,
      'FenceJobOutEmailAlert': instance.fenceJobOutEmailAlert,
      'FenceJobOutEmailId': instance.fenceJobOutEmailId,
    };

WiFiConfigJob _$WiFiConfigJobFromJson(Map<String, dynamic> json) =>
    WiFiConfigJob(
      jobType: json['JobType'] as String?,
      payLoad: (json['PayLoad'] as List<dynamic>?)
          ?.map(
              (e) => WiFiConfigPayLoad$Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      platform: json['Platform'] as String?,
      jobName: json['JobName'] as String?,
      folderId: json['FolderId'] as String?,
    );

Map<String, dynamic> _$WiFiConfigJobToJson(WiFiConfigJob instance) =>
    <String, dynamic>{
      'JobType': instance.jobType,
      'PayLoad': instance.payLoad?.map((e) => e.toJson()).toList(),
      'Platform': instance.platform,
      'JobName': instance.jobName,
      'FolderId': instance.folderId,
    };

WiFiConfigPayLoad$Item _$WiFiConfigPayLoad$ItemFromJson(
        Map<String, dynamic> json) =>
    WiFiConfigPayLoad$Item(
      ssid: json['SSID'] as String?,
      securityType: json['SecurityType'] as int?,
      password: json['Password'] as String?,
      autoConnect: json['AutoConnect'] as bool?,
      portableHotspot: json['PortableHotspot'] as bool?,
      hiddenNetwork: json['HiddenNetwork'] as bool?,
    );

Map<String, dynamic> _$WiFiConfigPayLoad$ItemToJson(
        WiFiConfigPayLoad$Item instance) =>
    <String, dynamic>{
      'SSID': instance.ssid,
      'SecurityType': instance.securityType,
      'Password': instance.password,
      'AutoConnect': instance.autoConnect,
      'PortableHotspot': instance.portableHotspot,
      'HiddenNetwork': instance.hiddenNetwork,
    };

DeviceMigrationJob _$DeviceMigrationJobFromJson(Map<String, dynamic> json) =>
    DeviceMigrationJob(
      jobType: json['JobType'] as String?,
      payLoad: (json['PayLoad'] as List<dynamic>?)
          ?.map((e) =>
              DeviceMigrationPayLoad$Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      platform: json['Platform'] as String?,
      jobName: json['JobName'] as String?,
      folderId: json['FolderId'] as String?,
    );

Map<String, dynamic> _$DeviceMigrationJobToJson(DeviceMigrationJob instance) =>
    <String, dynamic>{
      'JobType': instance.jobType,
      'PayLoad': instance.payLoad?.map((e) => e.toJson()).toList(),
      'Platform': instance.platform,
      'JobName': instance.jobName,
      'FolderId': instance.folderId,
    };

DeviceMigrationPayLoad$Item _$DeviceMigrationPayLoad$ItemFromJson(
        Map<String, dynamic> json) =>
    DeviceMigrationPayLoad$Item(
      selectedGrpId: json['SelectedGrpId'] as String?,
    );

Map<String, dynamic> _$DeviceMigrationPayLoad$ItemToJson(
        DeviceMigrationPayLoad$Item instance) =>
    <String, dynamic>{
      'SelectedGrpId': instance.selectedGrpId,
    };

SMSTrackingJob _$SMSTrackingJobFromJson(Map<String, dynamic> json) =>
    SMSTrackingJob(
      jobType: json['JobType'] as String?,
      payLoad: (json['PayLoad'] as List<dynamic>?)
          ?.map((e) =>
              SMSTrackingPayLoad$Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      platform: json['Platform'] as String?,
      jobName: json['JobName'] as String?,
      folderId: json['FolderId'] as String?,
    );

Map<String, dynamic> _$SMSTrackingJobToJson(SMSTrackingJob instance) =>
    <String, dynamic>{
      'JobType': instance.jobType,
      'PayLoad': instance.payLoad?.map((e) => e.toJson()).toList(),
      'Platform': instance.platform,
      'JobName': instance.jobName,
      'FolderId': instance.folderId,
    };

SMSTrackingPayLoad$Item _$SMSTrackingPayLoad$ItemFromJson(
        Map<String, dynamic> json) =>
    SMSTrackingPayLoad$Item(
      sMSTracking: json['SMSTracking'] as String?,
      periodicity: json['Periodicity'] as String?,
    );

Map<String, dynamic> _$SMSTrackingPayLoad$ItemToJson(
        SMSTrackingPayLoad$Item instance) =>
    <String, dynamic>{
      'SMSTracking': instance.sMSTracking,
      'Periodicity': instance.periodicity,
    };

CallTrackingJob _$CallTrackingJobFromJson(Map<String, dynamic> json) =>
    CallTrackingJob(
      jobType: json['JobType'] as String?,
      payLoad: (json['PayLoad'] as List<dynamic>?)
          ?.map((e) =>
              CallTrackingPayLoad$Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      platform: json['Platform'] as String?,
      jobName: json['JobName'] as String?,
      folderId: json['FolderId'] as String?,
    );

Map<String, dynamic> _$CallTrackingJobToJson(CallTrackingJob instance) =>
    <String, dynamic>{
      'JobType': instance.jobType,
      'PayLoad': instance.payLoad?.map((e) => e.toJson()).toList(),
      'Platform': instance.platform,
      'JobName': instance.jobName,
      'FolderId': instance.folderId,
    };

CallTrackingPayLoad$Item _$CallTrackingPayLoad$ItemFromJson(
        Map<String, dynamic> json) =>
    CallTrackingPayLoad$Item(
      callTracking: json['CallTracking'] as String?,
      periodicity: json['Periodicity'] as String?,
    );

Map<String, dynamic> _$CallTrackingPayLoad$ItemToJson(
        CallTrackingPayLoad$Item instance) =>
    <String, dynamic>{
      'CallTracking': instance.callTracking,
      'Periodicity': instance.periodicity,
    };

AppSettingsJob _$AppSettingsJobFromJson(Map<String, dynamic> json) =>
    AppSettingsJob(
      jobType: json['JobType'] as String?,
      payLoad: (json['PayLoad'] as List<dynamic>?)
          ?.map((e) =>
              AppSettingsPayLoad$Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      platform: json['Platform'] as String?,
      jobName: json['JobName'] as String?,
      folderId: json['FolderId'] as String?,
    );

Map<String, dynamic> _$AppSettingsJobToJson(AppSettingsJob instance) =>
    <String, dynamic>{
      'JobType': instance.jobType,
      'PayLoad': instance.payLoad?.map((e) => e.toJson()).toList(),
      'Platform': instance.platform,
      'JobName': instance.jobName,
      'FolderId': instance.folderId,
    };

AppSettingsPayLoad$Item _$AppSettingsPayLoad$ItemFromJson(
        Map<String, dynamic> json) =>
    AppSettingsPayLoad$Item(
      appName: (json['AppName'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
      packages: (json['Packages'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
      startUpDelay: (json['StartUpDelay'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
      action: json['Action'] as String?,
      phonePin: json['PhonePin'] as String?,
    );

Map<String, dynamic> _$AppSettingsPayLoad$ItemToJson(
        AppSettingsPayLoad$Item instance) =>
    <String, dynamic>{
      'AppName': instance.appName,
      'Packages': instance.packages,
      'StartUpDelay': instance.startUpDelay,
      'Action': instance.action,
      'PhonePin': instance.phonePin,
    };

RemoteWipeJob _$RemoteWipeJobFromJson(Map<String, dynamic> json) =>
    RemoteWipeJob(
      jobType: json['JobType'] as String?,
      payLoad: (json['PayLoad'] as List<dynamic>?)
          ?.map(
              (e) => RemoteWipePayLoad$Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      platform: json['Platform'] as String?,
      jobName: json['JobName'] as String?,
      folderId: json['FolderId'] as String?,
    );

Map<String, dynamic> _$RemoteWipeJobToJson(RemoteWipeJob instance) =>
    <String, dynamic>{
      'JobType': instance.jobType,
      'PayLoad': instance.payLoad?.map((e) => e.toJson()).toList(),
      'Platform': instance.platform,
      'JobName': instance.jobName,
      'FolderId': instance.folderId,
    };

RemoteWipePayLoad$Item _$RemoteWipePayLoad$ItemFromJson(
        Map<String, dynamic> json) =>
    RemoteWipePayLoad$Item(
      wipeAllData: json['WipeAllData'] as bool?,
      isScheduleWipe: json['IsScheduleWipe'] as bool?,
      gracePeriod: json['GracePeriod'] as int?,
      isWipeOnRoot: json['IsWipeOnRoot'] as int?,
    );

Map<String, dynamic> _$RemoteWipePayLoad$ItemToJson(
        RemoteWipePayLoad$Item instance) =>
    <String, dynamic>{
      'WipeAllData': instance.wipeAllData,
      'IsScheduleWipe': instance.isScheduleWipe,
      'GracePeriod': instance.gracePeriod,
      'IsWipeOnRoot': instance.isWipeOnRoot,
    };

LocationTrackingJob _$LocationTrackingJobFromJson(Map<String, dynamic> json) =>
    LocationTrackingJob(
      jobType: json['JobType'] as String?,
      payLoad: (json['PayLoad'] as List<dynamic>?)
          ?.map((e) =>
              LocationTrackingPayLoad$Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      platform: json['Platform'] as String?,
      jobName: json['JobName'] as String?,
      folderId: json['FolderId'] as String?,
    );

Map<String, dynamic> _$LocationTrackingJobToJson(
        LocationTrackingJob instance) =>
    <String, dynamic>{
      'JobType': instance.jobType,
      'PayLoad': instance.payLoad?.map((e) => e.toJson()).toList(),
      'Platform': instance.platform,
      'JobName': instance.jobName,
      'FolderId': instance.folderId,
    };

LocationTrackingPayLoad$Item _$LocationTrackingPayLoad$ItemFromJson(
        Map<String, dynamic> json) =>
    LocationTrackingPayLoad$Item(
      locationTracking: json['LocationTracking'] as bool?,
      periodicity: json['Periodicity'] as int?,
    );

Map<String, dynamic> _$LocationTrackingPayLoad$ItemToJson(
        LocationTrackingPayLoad$Item instance) =>
    <String, dynamic>{
      'LocationTracking': instance.locationTracking,
      'Periodicity': instance.periodicity,
    };

TextMessageJob _$TextMessageJobFromJson(Map<String, dynamic> json) =>
    TextMessageJob(
      jobType: json['JobType'] as String?,
      payLoad: (json['PayLoad'] as List<dynamic>?)
          ?.map((e) =>
              TextMessagePayLoad$Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      platform: json['Platform'] as String?,
      jobName: json['JobName'] as String?,
      folderId: json['FolderId'] as String?,
    );

Map<String, dynamic> _$TextMessageJobToJson(TextMessageJob instance) =>
    <String, dynamic>{
      'JobType': instance.jobType,
      'PayLoad': instance.payLoad?.map((e) => e.toJson()).toList(),
      'Platform': instance.platform,
      'JobName': instance.jobName,
      'FolderId': instance.folderId,
    };

TextMessagePayLoad$Item _$TextMessagePayLoad$ItemFromJson(
        Map<String, dynamic> json) =>
    TextMessagePayLoad$Item(
      subject: json['Subject'] as String?,
      body: json['Body'] as String?,
      readNotification: json['Read Notification'] as bool?,
      forceRead: json['ForceRead'] as bool?,
      enableBuzz: json['EnableBuzz'] as bool?,
      buzzInterval: json['BuzzInterval'] as String?,
      closeDurationEnable: json['CloseDurationEnable'] as bool?,
      interval: json['Interval'] as String?,
      richTextBody: json['RichTextBody'] as String?,
      richTextHTML: json['RichTextHTML'] as String?,
    );

Map<String, dynamic> _$TextMessagePayLoad$ItemToJson(
        TextMessagePayLoad$Item instance) =>
    <String, dynamic>{
      'Subject': instance.subject,
      'Body': instance.body,
      'Read Notification': instance.readNotification,
      'ForceRead': instance.forceRead,
      'EnableBuzz': instance.enableBuzz,
      'BuzzInterval': instance.buzzInterval,
      'CloseDurationEnable': instance.closeDurationEnable,
      'Interval': instance.interval,
      'RichTextBody': instance.richTextBody,
      'RichTextHTML': instance.richTextHTML,
    };

GetPreapprovedDevicePayLoad _$GetPreapprovedDevicePayLoadFromJson(
        Map<String, dynamic> json) =>
    GetPreapprovedDevicePayLoad(
      limit: json['Limit'] as String,
      offset: json['Offset'] as String,
      isSearch: json['IsSearch'] as bool,
      searchValue: json['SearchValue'] as String?,
      sortOrder: json['SortOrder'] as String?,
      sortColumn:
          getPreapprovedDevicePayLoadSortColumnFromJson(json['SortColumn']),
    );

Map<String, dynamic> _$GetPreapprovedDevicePayLoadToJson(
        GetPreapprovedDevicePayLoad instance) =>
    <String, dynamic>{
      'Limit': instance.limit,
      'Offset': instance.offset,
      'IsSearch': instance.isSearch,
      'SearchValue': instance.searchValue,
      'SortOrder': instance.sortOrder,
      'SortColumn':
          getPreapprovedDevicePayLoadSortColumnToJson(instance.sortColumn),
    };

PreapprovedDeviceResponseModel _$PreapprovedDeviceResponseModelFromJson(
        Map<String, dynamic> json) =>
    PreapprovedDeviceResponseModel(
      total: json['total'] as String?,
      rows: (json['rows'] as List<dynamic>?)
              ?.map((e) => (e as List<dynamic>)
                  .map((e) => PreapprovedDeviceResponseModel$Rows$Item.fromJson(
                      e as Map<String, dynamic>))
                  .toList())
              .toList() ??
          [],
    );

Map<String, dynamic> _$PreapprovedDeviceResponseModelToJson(
        PreapprovedDeviceResponseModel instance) =>
    <String, dynamic>{
      'total': instance.total,
      'rows':
          instance.rows?.map((e) => e.map((e) => e.toJson()).toList()).toList(),
    };

AddDevicePreapprovedModel$Item _$AddDevicePreapprovedModel$ItemFromJson(
        Map<String, dynamic> json) =>
    AddDevicePreapprovedModel$Item(
      deviceID: json['DeviceID'] as String?,
      deviceName: json['DeviceName'] as String?,
      id: json['ID'] as String?,
      iDType: json['IDType'] as String?,
      groupPath: json['GroupPath'] as String?,
      groupID: json['GroupID'] as String?,
      tagName: json['TagName'] as String?,
      deviceNotes: json['DeviceNotes'] as String?,
      serialNumber: json['SerialNumber'] as String?,
      phoneNumber: json['PhoneNumber'] as String?,
      emailId: json['EmailId'] as String?,
    );

Map<String, dynamic> _$AddDevicePreapprovedModel$ItemToJson(
        AddDevicePreapprovedModel$Item instance) =>
    <String, dynamic>{
      'DeviceID': instance.deviceID,
      'DeviceName': instance.deviceName,
      'ID': instance.id,
      'IDType': instance.iDType,
      'GroupPath': instance.groupPath,
      'GroupID': instance.groupID,
      'TagName': instance.tagName,
      'DeviceNotes': instance.deviceNotes,
      'SerialNumber': instance.serialNumber,
      'PhoneNumber': instance.phoneNumber,
      'EmailId': instance.emailId,
    };

GetJobFolderOutPutModel$Item _$GetJobFolderOutPutModel$ItemFromJson(
        Map<String, dynamic> json) =>
    GetJobFolderOutPutModel$Item(
      folderID: json['FolderID'] as String?,
      folderName: json['FolderName'] as String?,
      parentFolderID: json['ParentFolderID'] as String?,
      lastModified: json['LastModified'] as String?,
      type: json['Type'] as String?,
    );

Map<String, dynamic> _$GetJobFolderOutPutModel$ItemToJson(
        GetJobFolderOutPutModel$Item instance) =>
    <String, dynamic>{
      'FolderID': instance.folderID,
      'FolderName': instance.folderName,
      'ParentFolderID': instance.parentFolderID,
      'LastModified': instance.lastModified,
      'Type': instance.type,
    };

CreateJobFolder _$CreateJobFolderFromJson(Map<String, dynamic> json) =>
    CreateJobFolder(
      parentFolderID: json['ParentFolderID'] as String,
      folderName: json['FolderName'] as String,
    );

Map<String, dynamic> _$CreateJobFolderToJson(CreateJobFolder instance) =>
    <String, dynamic>{
      'ParentFolderID': instance.parentFolderID,
      'FolderName': instance.folderName,
    };

EditJobFolder _$EditJobFolderFromJson(Map<String, dynamic> json) =>
    EditJobFolder(
      folderName: json['FolderName'] as String,
      folderID: json['FolderID'] as String,
      parentFolderID: json['ParentFolderID'] as String,
    );

Map<String, dynamic> _$EditJobFolderToJson(EditJobFolder instance) =>
    <String, dynamic>{
      'FolderName': instance.folderName,
      'FolderID': instance.folderID,
      'ParentFolderID': instance.parentFolderID,
    };

CreateJobFolderOutPutModel _$CreateJobFolderOutPutModelFromJson(
        Map<String, dynamic> json) =>
    CreateJobFolderOutPutModel(
      folderID: json['FolderID'] as String?,
      parentFolderID: json['ParentFolderID'] as String?,
      folderName: json['FolderName'] as String?,
      folderType: json['FolderType'] as String?,
    );

Map<String, dynamic> _$CreateJobFolderOutPutModelToJson(
        CreateJobFolderOutPutModel instance) =>
    <String, dynamic>{
      'FolderID': instance.folderID,
      'ParentFolderID': instance.parentFolderID,
      'FolderName': instance.folderName,
      'FolderType': instance.folderType,
    };

InstalledAppsModel _$InstalledAppsModelFromJson(Map<String, dynamic> json) =>
    InstalledAppsModel(
      name: json['Name'] as String?,
      status: json['Status'] as String?,
      type: json['Type'] as String?,
      id: json['Id'] as String?,
      version: json['Version'] as String?,
      startupDelay: json['StartupDelay'] as String?,
      className: json['ClassName'] as String?,
      appIcon: json['AppIcon'] as String?,
      visibilityStatus: json['VisibilityStatus'] as String?,
      appSize: json['AppSize'] as String?,
    );

Map<String, dynamic> _$InstalledAppsModelToJson(InstalledAppsModel instance) =>
    <String, dynamic>{
      'Name': instance.name,
      'Status': instance.status,
      'Type': instance.type,
      'Id': instance.id,
      'Version': instance.version,
      'StartupDelay': instance.startupDelay,
      'ClassName': instance.className,
      'AppIcon': instance.appIcon,
      'VisibilityStatus': instance.visibilityStatus,
      'AppSize': instance.appSize,
    };

MarkMessage _$MarkMessageFromJson(Map<String, dynamic> json) => MarkMessage(
      selectedMessgIds: json['SelectedMessgIds'] as String,
      isRead: json['IsRead'] as bool,
    );

Map<String, dynamic> _$MarkMessageToJson(MarkMessage instance) =>
    <String, dynamic>{
      'SelectedMessgIds': instance.selectedMessgIds,
      'IsRead': instance.isRead,
    };

PostDeviceResponseModel _$PostDeviceResponseModelFromJson(
        Map<String, dynamic> json) =>
    PostDeviceResponseModel(
      rows: (json['rows'] as List<dynamic>?)
              ?.map((e) => (e as List<dynamic>)
                  .map((e) => PostDeviceResponseModel$Rows$Item.fromJson(
                      e as Map<String, dynamic>))
                  .toList())
              .toList() ??
          [],
      total: json['total'] as String?,
      extraInfoDetails: json['extraInfoDetails'] == null
          ? null
          : PostDeviceResponseModel$ExtraInfoDetails.fromJson(
              json['extraInfoDetails'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PostDeviceResponseModelToJson(
        PostDeviceResponseModel instance) =>
    <String, dynamic>{
      'rows':
          instance.rows?.map((e) => e.map((e) => e.toJson()).toList()).toList(),
      'total': instance.total,
      'extraInfoDetails': instance.extraInfoDetails?.toJson(),
    };

SearchDevice _$SearchDeviceFromJson(Map<String, dynamic> json) => SearchDevice(
      searchValue: json['SearchValue'] as String?,
      advanceSearch: json['AdvanceSearch'] as bool?,
      searchColumns: (json['SearchColumns'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      advSearchValue: (json['AdvSearchValue'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      id: json['ID'] as String?,
      isTag: json['IsTag'] as bool?,
      isIncludedBlackListed: json['IsIncludedBlackListed'] as bool?,
      enableDeviceGlobalSearch: json['EnableDeviceGlobalSearch'] as bool?,
      sortColumn: searchDeviceSortColumnFromJson(json['SortColumn']),
      sortOrder: json['SortOrder'] as String?,
      limit: json['Limit'] as int?,
      offset: json['Offset'] as int?,
      isSearch: json['IsSearch'] as bool?,
    );

Map<String, dynamic> _$SearchDeviceToJson(SearchDevice instance) =>
    <String, dynamic>{
      'SearchValue': instance.searchValue,
      'AdvanceSearch': instance.advanceSearch,
      'SearchColumns': instance.searchColumns,
      'AdvSearchValue': instance.advSearchValue,
      'ID': instance.id,
      'IsTag': instance.isTag,
      'IsIncludedBlackListed': instance.isIncludedBlackListed,
      'EnableDeviceGlobalSearch': instance.enableDeviceGlobalSearch,
      'SortColumn': searchDeviceSortColumnToJson(instance.sortColumn),
      'SortOrder': instance.sortOrder,
      'Limit': instance.limit,
      'Offset': instance.offset,
      'IsSearch': instance.isSearch,
    };

GetDevicePayLoad _$GetDevicePayLoadFromJson(Map<String, dynamic> json) =>
    GetDevicePayLoad(
      id: json['ID'] as String,
      isTag: json['IsTag'] as bool,
      isIncludedBlackListed: json['IsIncludedBlackListed'] as bool,
      enableDeviceGlobalSearch: json['EnableDeviceGlobalSearch'] as bool,
      sortColumn: getDevicePayLoadSortColumnFromJson(json['SortColumn']),
      sortOrder: json['SortOrder'] as String,
      limit: json['Limit'] as int,
      offset: json['Offset'] as int?,
      isSearch: json['IsSearch'] as bool,
      searchValue: json['SearchValue'] as String,
    );

Map<String, dynamic> _$GetDevicePayLoadToJson(GetDevicePayLoad instance) =>
    <String, dynamic>{
      'ID': instance.id,
      'IsTag': instance.isTag,
      'IsIncludedBlackListed': instance.isIncludedBlackListed,
      'EnableDeviceGlobalSearch': instance.enableDeviceGlobalSearch,
      'SortColumn': getDevicePayLoadSortColumnToJson(instance.sortColumn),
      'SortOrder': instance.sortOrder,
      'Limit': instance.limit,
      'Offset': instance.offset,
      'IsSearch': instance.isSearch,
      'SearchValue': instance.searchValue,
    };

RunScriptOutputModel _$RunScriptOutputModelFromJson(
        Map<String, dynamic> json) =>
    RunScriptOutputModel(
      retALL: (json['retALL'] as List<dynamic>?)
              ?.map((e) => (e as List<dynamic>)
                  .map((e) => RunScriptOutputModel$RetALL$Item.fromJson(
                      e as Map<String, dynamic>))
                  .toList())
              .toList() ??
          [],
      retKNOX: (json['retKNOX'] as List<dynamic>?)
              ?.map((e) => (e as List<dynamic>)
                  .map((e) => RunScriptOutputModel$RetKNOX$Item.fromJson(
                      e as Map<String, dynamic>))
                  .toList())
              .toList() ??
          [],
      retSHELL: (json['retSHELL'] as List<dynamic>?)
              ?.map((e) => (e as List<dynamic>)
                  .map((e) => RunScriptOutputModel$RetSHELL$Item.fromJson(
                      e as Map<String, dynamic>))
                  .toList())
              .toList() ??
          [],
      retEA: (json['retEA'] as List<dynamic>?)
              ?.map((e) => (e as List<dynamic>)
                  .map((e) => RunScriptOutputModel$RetEA$Item.fromJson(
                      e as Map<String, dynamic>))
                  .toList())
              .toList() ??
          [],
      retIOS: (json['retIOS'] as List<dynamic>?)
              ?.map((e) => (e as List<dynamic>)
                  .map((e) => RunScriptOutputModel$RetIOS$Item.fromJson(
                      e as Map<String, dynamic>))
                  .toList())
              .toList() ??
          [],
      retWINDOWS: (json['retWINDOWS'] as List<dynamic>?)
              ?.map((e) => (e as List<dynamic>)
                  .map((e) => RunScriptOutputModel$RetWINDOWS$Item.fromJson(
                      e as Map<String, dynamic>))
                  .toList())
              .toList() ??
          [],
      retANDROIDVR: (json['retANDROIDVR'] as List<dynamic>?)
              ?.map((e) => (e as List<dynamic>)
                  .map((e) => RunScriptOutputModel$RetANDROIDVR$Item.fromJson(
                      e as Map<String, dynamic>))
                  .toList())
              .toList() ??
          [],
    );

Map<String, dynamic> _$RunScriptOutputModelToJson(
        RunScriptOutputModel instance) =>
    <String, dynamic>{
      'retALL': instance.retALL
          ?.map((e) => e.map((e) => e.toJson()).toList())
          .toList(),
      'retKNOX': instance.retKNOX
          ?.map((e) => e.map((e) => e.toJson()).toList())
          .toList(),
      'retSHELL': instance.retSHELL
          ?.map((e) => e.map((e) => e.toJson()).toList())
          .toList(),
      'retEA': instance.retEA
          ?.map((e) => e.map((e) => e.toJson()).toList())
          .toList(),
      'retIOS': instance.retIOS
          ?.map((e) => e.map((e) => e.toJson()).toList())
          .toList(),
      'retWINDOWS': instance.retWINDOWS
          ?.map((e) => e.map((e) => e.toJson()).toList())
          .toList(),
      'retANDROIDVR': instance.retANDROIDVR
          ?.map((e) => e.map((e) => e.toJson()).toList())
          .toList(),
    };

JobEditModel _$JobEditModelFromJson(Map<String, dynamic> json) => JobEditModel(
      jobID: json['JobID'] as String,
      jobName: json['JobName'] as String,
    );

Map<String, dynamic> _$JobEditModelToJson(JobEditModel instance) =>
    <String, dynamic>{
      'JobID': instance.jobID,
      'JobName': instance.jobName,
    };

FileTransferJobEdit _$FileTransferJobEditFromJson(Map<String, dynamic> json) =>
    FileTransferJobEdit(
      jobType: json['JobType'] as String?,
      payLoad: (json['PayLoad'] as List<dynamic>?)
          ?.map((e) =>
              FileTransferPayLoad$Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      platform: json['Platform'] as String?,
      jobID: json['JobID'] as String?,
      jobName: json['JobName'] as String?,
    );

Map<String, dynamic> _$FileTransferJobEditToJson(
        FileTransferJobEdit instance) =>
    <String, dynamic>{
      'JobType': instance.jobType,
      'PayLoad': instance.payLoad?.map((e) => e.toJson()).toList(),
      'Platform': instance.platform,
      'JobID': instance.jobID,
      'JobName': instance.jobName,
    };

InstallJobEdit _$InstallJobEditFromJson(Map<String, dynamic> json) =>
    InstallJobEdit(
      jobType: json['JobType'] as String?,
      payLoad: (json['PayLoad'] as List<dynamic>?)
          ?.map((e) => InstallPayLoad$Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      platform: json['Platform'] as String?,
      jobID: json['JobID'] as String?,
      jobName: json['JobName'] as String?,
    );

Map<String, dynamic> _$InstallJobEditToJson(InstallJobEdit instance) =>
    <String, dynamic>{
      'JobType': instance.jobType,
      'PayLoad': instance.payLoad?.map((e) => e.toJson()).toList(),
      'Platform': instance.platform,
      'JobID': instance.jobID,
      'JobName': instance.jobName,
    };

WiFiConfigJobEdit _$WiFiConfigJobEditFromJson(Map<String, dynamic> json) =>
    WiFiConfigJobEdit(
      jobType: json['JobType'] as String?,
      payLoad: (json['PayLoad'] as List<dynamic>?)
          ?.map(
              (e) => WiFiConfigPayLoad$Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      platform: json['Platform'] as String?,
      jobID: json['JobID'] as String?,
      jobName: json['JobName'] as String?,
    );

Map<String, dynamic> _$WiFiConfigJobEditToJson(WiFiConfigJobEdit instance) =>
    <String, dynamic>{
      'JobType': instance.jobType,
      'PayLoad': instance.payLoad?.map((e) => e.toJson()).toList(),
      'Platform': instance.platform,
      'JobID': instance.jobID,
      'JobName': instance.jobName,
    };

NotificationPolicyJobEdit _$NotificationPolicyJobEditFromJson(
        Map<String, dynamic> json) =>
    NotificationPolicyJobEdit(
      jobType: json['JobType'] as String?,
      payLoad: (json['PayLoad'] as List<dynamic>?)
          ?.map((e) => NotificationPolicyPayLoad$Item.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      platform: json['Platform'] as String?,
      jobID: json['JobID'] as String?,
      jobName: json['JobName'] as String?,
    );

Map<String, dynamic> _$NotificationPolicyJobEditToJson(
        NotificationPolicyJobEdit instance) =>
    <String, dynamic>{
      'JobType': instance.jobType,
      'PayLoad': instance.payLoad?.map((e) => e.toJson()).toList(),
      'Platform': instance.platform,
      'JobID': instance.jobID,
      'JobName': instance.jobName,
    };

DeviceMigrationJobEdit _$DeviceMigrationJobEditFromJson(
        Map<String, dynamic> json) =>
    DeviceMigrationJobEdit(
      jobType: json['JobType'] as String?,
      payLoad: (json['PayLoad'] as List<dynamic>?)
          ?.map((e) =>
              DeviceMigrationPayLoad$Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      platform: json['Platform'] as String?,
      jobID: json['JobID'] as String?,
      jobName: json['JobName'] as String?,
    );

Map<String, dynamic> _$DeviceMigrationJobEditToJson(
        DeviceMigrationJobEdit instance) =>
    <String, dynamic>{
      'JobType': instance.jobType,
      'PayLoad': instance.payLoad?.map((e) => e.toJson()).toList(),
      'Platform': instance.platform,
      'JobID': instance.jobID,
      'JobName': instance.jobName,
    };

SMSTrackingJobEdit _$SMSTrackingJobEditFromJson(Map<String, dynamic> json) =>
    SMSTrackingJobEdit(
      jobType: json['JobType'] as String?,
      payLoad: (json['PayLoad'] as List<dynamic>?)
          ?.map((e) =>
              SMSTrackingPayLoad$Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      platform: json['Platform'] as String?,
      jobID: json['JobID'] as String?,
      jobName: json['JobName'] as String?,
    );

Map<String, dynamic> _$SMSTrackingJobEditToJson(SMSTrackingJobEdit instance) =>
    <String, dynamic>{
      'JobType': instance.jobType,
      'PayLoad': instance.payLoad?.map((e) => e.toJson()).toList(),
      'Platform': instance.platform,
      'JobID': instance.jobID,
      'JobName': instance.jobName,
    };

CallTrackingJobEdit _$CallTrackingJobEditFromJson(Map<String, dynamic> json) =>
    CallTrackingJobEdit(
      jobType: json['JobType'] as String?,
      payLoad: (json['PayLoad'] as List<dynamic>?)
          ?.map((e) =>
              CallTrackingPayLoad$Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      platform: json['Platform'] as String?,
      jobID: json['JobID'] as String?,
      jobName: json['JobName'] as String?,
    );

Map<String, dynamic> _$CallTrackingJobEditToJson(
        CallTrackingJobEdit instance) =>
    <String, dynamic>{
      'JobType': instance.jobType,
      'PayLoad': instance.payLoad?.map((e) => e.toJson()).toList(),
      'Platform': instance.platform,
      'JobID': instance.jobID,
      'JobName': instance.jobName,
    };

AppSettingsJobEdit _$AppSettingsJobEditFromJson(Map<String, dynamic> json) =>
    AppSettingsJobEdit(
      jobType: json['JobType'] as String?,
      payLoad: (json['PayLoad'] as List<dynamic>?)
          ?.map((e) =>
              AppSettingsPayLoad$Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      platform: json['Platform'] as String?,
      jobID: json['JobID'] as String?,
      jobName: json['JobName'] as String?,
    );

Map<String, dynamic> _$AppSettingsJobEditToJson(AppSettingsJobEdit instance) =>
    <String, dynamic>{
      'JobType': instance.jobType,
      'PayLoad': instance.payLoad?.map((e) => e.toJson()).toList(),
      'Platform': instance.platform,
      'JobID': instance.jobID,
      'JobName': instance.jobName,
    };

RemoteWipeJobEdit _$RemoteWipeJobEditFromJson(Map<String, dynamic> json) =>
    RemoteWipeJobEdit(
      jobType: json['JobType'] as String?,
      payLoad: (json['PayLoad'] as List<dynamic>?)
          ?.map(
              (e) => RemoteWipePayLoad$Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      platform: json['Platform'] as String?,
      jobID: json['JobID'] as String?,
      jobName: json['JobName'] as String?,
    );

Map<String, dynamic> _$RemoteWipeJobEditToJson(RemoteWipeJobEdit instance) =>
    <String, dynamic>{
      'JobType': instance.jobType,
      'PayLoad': instance.payLoad?.map((e) => e.toJson()).toList(),
      'Platform': instance.platform,
      'JobID': instance.jobID,
      'JobName': instance.jobName,
    };

TextMessageJobEdit _$TextMessageJobEditFromJson(Map<String, dynamic> json) =>
    TextMessageJobEdit(
      jobType: json['JobType'] as String?,
      payLoad: (json['PayLoad'] as List<dynamic>?)
          ?.map((e) =>
              TextMessagePayLoad$Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      platform: json['Platform'] as String?,
      jobID: json['JobID'] as String?,
      jobName: json['JobName'] as String?,
    );

Map<String, dynamic> _$TextMessageJobEditToJson(TextMessageJobEdit instance) =>
    <String, dynamic>{
      'JobType': instance.jobType,
      'PayLoad': instance.payLoad?.map((e) => e.toJson()).toList(),
      'Platform': instance.platform,
      'JobID': instance.jobID,
      'JobName': instance.jobName,
    };

LocationTrackingJobEdit _$LocationTrackingJobEditFromJson(
        Map<String, dynamic> json) =>
    LocationTrackingJobEdit(
      jobType: json['JobType'] as String?,
      payLoad: (json['PayLoad'] as List<dynamic>?)
          ?.map((e) =>
              LocationTrackingPayLoad$Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      platform: json['Platform'] as String?,
      jobID: json['JobID'] as String?,
      jobName: json['JobName'] as String?,
    );

Map<String, dynamic> _$LocationTrackingJobEditToJson(
        LocationTrackingJobEdit instance) =>
    <String, dynamic>{
      'JobType': instance.jobType,
      'PayLoad': instance.payLoad?.map((e) => e.toJson()).toList(),
      'Platform': instance.platform,
      'JobID': instance.jobID,
      'JobName': instance.jobName,
    };

GeoFencingJobEdit _$GeoFencingJobEditFromJson(Map<String, dynamic> json) =>
    GeoFencingJobEdit(
      jobType: json['JobType'] as String?,
      payLoad: (json['PayLoad'] as List<dynamic>?)
          ?.map(
              (e) => GeoFencingPayLoad$Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      platform: json['Platform'] as String?,
      jobID: json['JobID'] as String?,
      jobName: json['JobName'] as String?,
    );

Map<String, dynamic> _$GeoFencingJobEditToJson(GeoFencingJobEdit instance) =>
    <String, dynamic>{
      'JobType': instance.jobType,
      'PayLoad': instance.payLoad?.map((e) => e.toJson()).toList(),
      'Platform': instance.platform,
      'JobID': instance.jobID,
      'JobName': instance.jobName,
    };

TimeFencingJobEdit _$TimeFencingJobEditFromJson(Map<String, dynamic> json) =>
    TimeFencingJobEdit(
      jobType: json['JobType'] as String?,
      payLoad: (json['PayLoad'] as List<dynamic>?)
          ?.map((e) =>
              TimeFencingPayLoad$Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      platform: json['Platform'] as String?,
      jobID: json['JobID'] as String?,
      jobName: json['JobName'] as String?,
    );

Map<String, dynamic> _$TimeFencingJobEditToJson(TimeFencingJobEdit instance) =>
    <String, dynamic>{
      'JobType': instance.jobType,
      'PayLoad': instance.payLoad?.map((e) => e.toJson()).toList(),
      'Platform': instance.platform,
      'JobID': instance.jobID,
      'JobName': instance.jobName,
    };

NetworkFencingJobEdit _$NetworkFencingJobEditFromJson(
        Map<String, dynamic> json) =>
    NetworkFencingJobEdit(
      jobType: json['JobType'] as String?,
      payLoad: (json['PayLoad'] as List<dynamic>?)
          ?.map((e) =>
              NetworkFencingPayLoad$Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      platform: json['Platform'] as String?,
      jobID: json['JobID'] as String?,
      jobName: json['JobName'] as String?,
    );

Map<String, dynamic> _$NetworkFencingJobEditToJson(
        NetworkFencingJobEdit instance) =>
    <String, dynamic>{
      'JobType': instance.jobType,
      'PayLoad': instance.payLoad?.map((e) => e.toJson()).toList(),
      'Platform': instance.platform,
      'JobID': instance.jobID,
      'JobName': instance.jobName,
    };

CompliancePolicyJobEdit _$CompliancePolicyJobEditFromJson(
        Map<String, dynamic> json) =>
    CompliancePolicyJobEdit(
      jobType: json['JobType'] as String?,
      payLoad: (json['PayLoad'] as List<dynamic>?)
          ?.map((e) =>
              CompliancePolicyPayLoad$Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      platform: json['Platform'] as String?,
      jobID: json['JobID'] as String?,
      jobName: json['JobName'] as String?,
    );

Map<String, dynamic> _$CompliancePolicyJobEditToJson(
        CompliancePolicyJobEdit instance) =>
    <String, dynamic>{
      'JobType': instance.jobType,
      'PayLoad': instance.payLoad?.map((e) => e.toJson()).toList(),
      'Platform': instance.platform,
      'JobID': instance.jobID,
      'JobName': instance.jobName,
    };

NixAgentSettingJobEdit _$NixAgentSettingJobEditFromJson(
        Map<String, dynamic> json) =>
    NixAgentSettingJobEdit(
      jobType: json['JobType'] as String?,
      payLoad: (json['PayLoad'] as List<dynamic>?)
          ?.map((e) =>
              NixAgentSettingPayLoad$Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      platform: json['Platform'] as String?,
      jobID: json['JobID'] as String?,
      jobName: json['JobName'] as String?,
    );

Map<String, dynamic> _$NixAgentSettingJobEditToJson(
        NixAgentSettingJobEdit instance) =>
    <String, dynamic>{
      'JobType': instance.jobType,
      'PayLoad': instance.payLoad?.map((e) => e.toJson()).toList(),
      'Platform': instance.platform,
      'JobID': instance.jobID,
      'JobName': instance.jobName,
    };

RunScriptJobEdit _$RunScriptJobEditFromJson(Map<String, dynamic> json) =>
    RunScriptJobEdit(
      jobType: json['JobType'] as String?,
      platform: json['Platform'] as String?,
      payLoad:
          (json['PayLoad'] as List<dynamic>?)?.map((e) => e as Object).toList(),
      jobID: json['JobID'] as String?,
      jobName: json['JobName'] as String?,
    );

Map<String, dynamic> _$RunScriptJobEditToJson(RunScriptJobEdit instance) =>
    <String, dynamic>{
      'JobType': instance.jobType,
      'Platform': instance.platform,
      'PayLoad': instance.payLoad,
      'JobID': instance.jobID,
      'JobName': instance.jobName,
    };

RemoteBuzzJobEdit _$RemoteBuzzJobEditFromJson(Map<String, dynamic> json) =>
    RemoteBuzzJobEdit(
      jobType: json['JobType'] as String?,
      payLoad: (json['PayLoad'] as List<dynamic>?)
          ?.map(
              (e) => RemoteBuzzPayLoad$Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      platform: json['Platform'] as String?,
      jobID: json['JobID'] as String?,
      jobName: json['JobName'] as String?,
    );

Map<String, dynamic> _$RemoteBuzzJobEditToJson(RemoteBuzzJobEdit instance) =>
    <String, dynamic>{
      'JobType': instance.jobType,
      'PayLoad': instance.payLoad?.map((e) => e.toJson()).toList(),
      'Platform': instance.platform,
      'JobID': instance.jobID,
      'JobName': instance.jobName,
    };

SecurityPolicyJobEdit _$SecurityPolicyJobEditFromJson(
        Map<String, dynamic> json) =>
    SecurityPolicyJobEdit(
      jobType: json['JobType'] as String?,
      payLoad: (json['PayLoad'] as List<dynamic>?)
          ?.map((e) =>
              SecurityPolicyPayLoad$Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      platform: json['Platform'] as String?,
      jobID: json['JobID'] as String?,
      jobName: json['JobName'] as String?,
    );

Map<String, dynamic> _$SecurityPolicyJobEditToJson(
        SecurityPolicyJobEdit instance) =>
    <String, dynamic>{
      'JobType': instance.jobType,
      'PayLoad': instance.payLoad?.map((e) => e.toJson()).toList(),
      'Platform': instance.platform,
      'JobID': instance.jobID,
      'JobName': instance.jobName,
    };

CompositeJobEdit _$CompositeJobEditFromJson(Map<String, dynamic> json) =>
    CompositeJobEdit(
      jobType: json['JobType'] as String?,
      payLoad:
          (json['PayLoad'] as List<dynamic>?)?.map((e) => e as Object).toList(),
      platform: json['Platform'] as String?,
      jobID: json['JobID'] as String?,
      jobName: json['JobName'] as String?,
    );

Map<String, dynamic> _$CompositeJobEditToJson(CompositeJobEdit instance) =>
    <String, dynamic>{
      'JobType': instance.jobType,
      'PayLoad': instance.payLoad,
      'Platform': instance.platform,
      'JobID': instance.jobID,
      'JobName': instance.jobName,
    };

LockDeviceJobEdit _$LockDeviceJobEditFromJson(Map<String, dynamic> json) =>
    LockDeviceJobEdit(
      jobType: json['JobType'] as String?,
      payLoad: (json['PayLoad'] as List<dynamic>?)
          ?.map(
              (e) => LockDevicePayLoad$Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      platform: json['Platform'] as String?,
      jobID: json['JobID'] as String?,
      jobName: json['JobName'] as String?,
    );

Map<String, dynamic> _$LockDeviceJobEditToJson(LockDeviceJobEdit instance) =>
    <String, dynamic>{
      'JobType': instance.jobType,
      'PayLoad': instance.payLoad?.map((e) => e.toJson()).toList(),
      'Platform': instance.platform,
      'JobID': instance.jobID,
      'JobName': instance.jobName,
    };

AndroidWorkProfileJob _$AndroidWorkProfileJobFromJson(
        Map<String, dynamic> json) =>
    AndroidWorkProfileJob(
      jobType: json['JobType'] as String?,
      payLoad: (json['PayLoad'] as List<dynamic>?)
          ?.map((e) => AndroidWorkProfilePayLoad$Item.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      platform: json['Platform'] as String?,
      jobName: json['JobName'] as String?,
      folderId: json['FolderId'] as String?,
    );

Map<String, dynamic> _$AndroidWorkProfileJobToJson(
        AndroidWorkProfileJob instance) =>
    <String, dynamic>{
      'JobType': instance.jobType,
      'PayLoad': instance.payLoad?.map((e) => e.toJson()).toList(),
      'Platform': instance.platform,
      'JobName': instance.jobName,
      'FolderId': instance.folderId,
    };

AndroidWorkProfilePayLoad$Item _$AndroidWorkProfilePayLoad$ItemFromJson(
        Map<String, dynamic> json) =>
    AndroidWorkProfilePayLoad$Item(
      applicationPolicy: json['applicationPolicy'],
      passwordPolicy: json['passwordPolicy'],
      systemSettings: json['systemSettings'],
      enterpriseAppStore: json['enterpriseAppStore'],
      caCertificatePolicy: json['caCertificatePolicy'],
      mailConfigurationPolicy: json['mailConfigurationPolicy'],
      globalProxy: json['globalProxy'],
      vpnConfig: json['vpnConfig'],
      mobileThreatPrevention: json['mobileThreatPrevention'],
      wifiConfigurationPolicy: json['wifiConfigurationPolicy'],
      astromailconfigurationPolicy: json['astromailconfigurationPolicy'],
      fileSharingPolicy: json['fileSharingPolicy'],
      useAFW: json['UseAFW'] as bool?,
    );

Map<String, dynamic> _$AndroidWorkProfilePayLoad$ItemToJson(
        AndroidWorkProfilePayLoad$Item instance) =>
    <String, dynamic>{
      'applicationPolicy': instance.applicationPolicy,
      'passwordPolicy': instance.passwordPolicy,
      'systemSettings': instance.systemSettings,
      'enterpriseAppStore': instance.enterpriseAppStore,
      'caCertificatePolicy': instance.caCertificatePolicy,
      'mailConfigurationPolicy': instance.mailConfigurationPolicy,
      'globalProxy': instance.globalProxy,
      'vpnConfig': instance.vpnConfig,
      'mobileThreatPrevention': instance.mobileThreatPrevention,
      'wifiConfigurationPolicy': instance.wifiConfigurationPolicy,
      'astromailconfigurationPolicy': instance.astromailconfigurationPolicy,
      'fileSharingPolicy': instance.fileSharingPolicy,
      'UseAFW': instance.useAFW,
    };

LastLocationModel$Location$Item _$LastLocationModel$Location$ItemFromJson(
        Map<String, dynamic> json) =>
    LastLocationModel$Location$Item(
      longitude: json['Longitude'] as String?,
      latitude: json['Latitude'] as String?,
      time: json['Time'] as String?,
      locationName: json['LocationName'] as String?,
    );

Map<String, dynamic> _$LastLocationModel$Location$ItemToJson(
        LastLocationModel$Location$Item instance) =>
    <String, dynamic>{
      'Longitude': instance.longitude,
      'Latitude': instance.latitude,
      'Time': instance.time,
      'LocationName': instance.locationName,
    };

LocationModel$Location$Item _$LocationModel$Location$ItemFromJson(
        Map<String, dynamic> json) =>
    LocationModel$Location$Item(
      longitude: json['Longitude'] as String?,
      latitude: json['Latitude'] as String?,
      time: json['Time'] as String?,
      locationName: json['LocationName'] as String?,
    );

Map<String, dynamic> _$LocationModel$Location$ItemToJson(
        LocationModel$Location$Item instance) =>
    <String, dynamic>{
      'Longitude': instance.longitude,
      'Latitude': instance.latitude,
      'Time': instance.time,
      'LocationName': instance.locationName,
    };

AllMessageModel$Rows$Item _$AllMessageModel$Rows$ItemFromJson(
        Map<String, dynamic> json) =>
    AllMessageModel$Rows$Item(
      messageId: json['MessageId'] as String?,
      deviceId: json['DeviceId'] as String?,
      deviceName: json['DeviceName'] as String?,
      subject: json['Subject'] as String?,
      timeStamp: json['TimeStamp'] as String?,
      status: json['Status'] as String?,
      platformType: json['PlatformType'] as String?,
    );

Map<String, dynamic> _$AllMessageModel$Rows$ItemToJson(
        AllMessageModel$Rows$Item instance) =>
    <String, dynamic>{
      'MessageId': instance.messageId,
      'DeviceId': instance.deviceId,
      'DeviceName': instance.deviceName,
      'Subject': instance.subject,
      'TimeStamp': instance.timeStamp,
      'Status': instance.status,
      'PlatformType': instance.platformType,
    };

DynamicGeoFencingPayLoad$Fence$Item
    _$DynamicGeoFencingPayLoad$Fence$ItemFromJson(Map<String, dynamic> json) =>
        DynamicGeoFencingPayLoad$Fence$Item(
          name: json['Name'] as String?,
          latitude: json['Latitude'] as int?,
          longitude: json['Longitude'] as int?,
          radius: json['Radius'] as int?,
          geoFenceUnit: json['GeoFenceUnit'] as int?,
          fence: json['Fence'] as String?,
        );

Map<String, dynamic> _$DynamicGeoFencingPayLoad$Fence$ItemToJson(
        DynamicGeoFencingPayLoad$Fence$Item instance) =>
    <String, dynamic>{
      'Name': instance.name,
      'Latitude': instance.latitude,
      'Longitude': instance.longitude,
      'Radius': instance.radius,
      'GeoFenceUnit': instance.geoFenceUnit,
      'Fence': instance.fence,
    };

DynamicGeoFencingPayLoad$JobOut$Item
    _$DynamicGeoFencingPayLoad$JobOut$ItemFromJson(Map<String, dynamic> json) =>
        DynamicGeoFencingPayLoad$JobOut$Item(
          jobID: json['JobID'] as String?,
          jobName: json['JobName'] as String?,
          platform: json['Platform'] as String?,
          type: json['Type'] as String?,
        );

Map<String, dynamic> _$DynamicGeoFencingPayLoad$JobOut$ItemToJson(
        DynamicGeoFencingPayLoad$JobOut$Item instance) =>
    <String, dynamic>{
      'JobID': instance.jobID,
      'JobName': instance.jobName,
      'Platform': instance.platform,
      'Type': instance.type,
    };

DynamicGeoFencingPayLoad$JobIn$Item
    _$DynamicGeoFencingPayLoad$JobIn$ItemFromJson(Map<String, dynamic> json) =>
        DynamicGeoFencingPayLoad$JobIn$Item(
          jobID: json['JobID'] as String?,
          jobName: json['JobName'] as String?,
          platform: json['Platform'] as String?,
          type: json['Type'] as String?,
        );

Map<String, dynamic> _$DynamicGeoFencingPayLoad$JobIn$ItemToJson(
        DynamicGeoFencingPayLoad$JobIn$Item instance) =>
    <String, dynamic>{
      'JobID': instance.jobID,
      'JobName': instance.jobName,
      'Platform': instance.platform,
      'Type': instance.type,
    };

DynamicTimeFencingPayLoad$JobIn$Item
    _$DynamicTimeFencingPayLoad$JobIn$ItemFromJson(Map<String, dynamic> json) =>
        DynamicTimeFencingPayLoad$JobIn$Item(
          jobID: json['JobID'] as String?,
          jobName: json['JobName'] as String?,
          platform: json['Platform'] as String?,
          type: json['Type'] as String?,
        );

Map<String, dynamic> _$DynamicTimeFencingPayLoad$JobIn$ItemToJson(
        DynamicTimeFencingPayLoad$JobIn$Item instance) =>
    <String, dynamic>{
      'JobID': instance.jobID,
      'JobName': instance.jobName,
      'Platform': instance.platform,
      'Type': instance.type,
    };

DynamicTimeFencingPayLoad$JobOut$Item
    _$DynamicTimeFencingPayLoad$JobOut$ItemFromJson(
            Map<String, dynamic> json) =>
        DynamicTimeFencingPayLoad$JobOut$Item(
          jobID: json['JobID'] as String?,
          jobName: json['JobName'] as String?,
          platform: json['Platform'] as String?,
          type: json['Type'] as String?,
        );

Map<String, dynamic> _$DynamicTimeFencingPayLoad$JobOut$ItemToJson(
        DynamicTimeFencingPayLoad$JobOut$Item instance) =>
    <String, dynamic>{
      'JobID': instance.jobID,
      'JobName': instance.jobName,
      'Platform': instance.platform,
      'Type': instance.type,
    };

DynamicTimeFencingPayLoad$SelectFence
    _$DynamicTimeFencingPayLoad$SelectFenceFromJson(
            Map<String, dynamic> json) =>
        DynamicTimeFencingPayLoad$SelectFence(
          timeFenceRows: (json['TimeFenceRows'] as List<dynamic>?)
                  ?.map((e) => (e as List<dynamic>)
                      .map((e) =>
                          DynamicTimeFencingPayLoad$SelectFence$TimeFenceRows$Item
                              .fromJson(e as Map<String, dynamic>))
                      .toList())
                  .toList() ??
              [],
        );

Map<String, dynamic> _$DynamicTimeFencingPayLoad$SelectFenceToJson(
        DynamicTimeFencingPayLoad$SelectFence instance) =>
    <String, dynamic>{
      'TimeFenceRows': instance.timeFenceRows
          ?.map((e) => e.map((e) => e.toJson()).toList())
          .toList(),
    };

DynamicNetworkFencingPayLoad$JobIn _$DynamicNetworkFencingPayLoad$JobInFromJson(
        Map<String, dynamic> json) =>
    DynamicNetworkFencingPayLoad$JobIn(
      jobID: json['JobID'] as String?,
      jobName: json['JobName'] as String?,
      platform: json['Platform'] as String?,
      type: json['Type'] as String?,
    );

Map<String, dynamic> _$DynamicNetworkFencingPayLoad$JobInToJson(
        DynamicNetworkFencingPayLoad$JobIn instance) =>
    <String, dynamic>{
      'JobID': instance.jobID,
      'JobName': instance.jobName,
      'Platform': instance.platform,
      'Type': instance.type,
    };

DynamicNetworkFencingPayLoad$JobOut
    _$DynamicNetworkFencingPayLoad$JobOutFromJson(Map<String, dynamic> json) =>
        DynamicNetworkFencingPayLoad$JobOut(
          jobID: json['JobID'] as String?,
          jobName: json['JobName'] as String?,
          platform: json['Platform'] as String?,
          type: json['Type'] as String?,
        );

Map<String, dynamic> _$DynamicNetworkFencingPayLoad$JobOutToJson(
        DynamicNetworkFencingPayLoad$JobOut instance) =>
    <String, dynamic>{
      'JobID': instance.jobID,
      'JobName': instance.jobName,
      'Platform': instance.platform,
      'Type': instance.type,
    };

DynamicNetworkFencingPayLoad$SelectFence
    _$DynamicNetworkFencingPayLoad$SelectFenceFromJson(
            Map<String, dynamic> json) =>
        DynamicNetworkFencingPayLoad$SelectFence(
          networkFenceRows: json['NetworkFenceRows'] == null
              ? null
              : DynamicNetworkFencingPayLoad$SelectFence$NetworkFenceRows
                  .fromJson(json['NetworkFenceRows'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$DynamicNetworkFencingPayLoad$SelectFenceToJson(
        DynamicNetworkFencingPayLoad$SelectFence instance) =>
    <String, dynamic>{
      'NetworkFenceRows': instance.networkFenceRows?.toJson(),
    };

DataUsageOutput$AppsDataUsage$Item _$DataUsageOutput$AppsDataUsage$ItemFromJson(
        Map<String, dynamic> json) =>
    DataUsageOutput$AppsDataUsage$Item(
      appId: json['AppId'] as String?,
      appName: json['AppName'] as String?,
      appIcon: json['AppIcon'] as String?,
      foregroundMobileDataUsage: json['ForegroundMobileDataUsage'] as int?,
      backgroundMobileDataUsage: json['BackgroundMobileDataUsage'] as int?,
      foregroundWifiDataUsage: json['ForegroundWifiDataUsage'] as int?,
      backgroundWifiDataUsage: json['BackgroundWifiDataUsage'] as int?,
      deviceId: json['DeviceId'] as String?,
      mobileDataUsage: json['MobileDataUsage'] as int?,
      wifiDataUsage: json['WifiDataUsage'] as int?,
      startTime: json['StartTime'] as String?,
      endTime: json['EndTime'] as String?,
      totalusage: json['Totalusage'] as int?,
    );

Map<String, dynamic> _$DataUsageOutput$AppsDataUsage$ItemToJson(
        DataUsageOutput$AppsDataUsage$Item instance) =>
    <String, dynamic>{
      'AppId': instance.appId,
      'AppName': instance.appName,
      'AppIcon': instance.appIcon,
      'ForegroundMobileDataUsage': instance.foregroundMobileDataUsage,
      'BackgroundMobileDataUsage': instance.backgroundMobileDataUsage,
      'ForegroundWifiDataUsage': instance.foregroundWifiDataUsage,
      'BackgroundWifiDataUsage': instance.backgroundWifiDataUsage,
      'DeviceId': instance.deviceId,
      'MobileDataUsage': instance.mobileDataUsage,
      'WifiDataUsage': instance.wifiDataUsage,
      'StartTime': instance.startTime,
      'EndTime': instance.endTime,
      'Totalusage': instance.totalusage,
    };

DataUsageOutput$DataUsage$Item _$DataUsageOutput$DataUsage$ItemFromJson(
        Map<String, dynamic> json) =>
    DataUsageOutput$DataUsage$Item(
      deviceId: json['DeviceId'] as String?,
      mobileDataUsage: json['MobileDataUsage'] as int?,
      wifiDataUsage: json['WifiDataUsage'] as int?,
      startTime: json['StartTime'] as int?,
      endTime: json['EndTime'] as int?,
      isRoaming: json['IsRoaming'] as String?,
    );

Map<String, dynamic> _$DataUsageOutput$DataUsage$ItemToJson(
        DataUsageOutput$DataUsage$Item instance) =>
    <String, dynamic>{
      'DeviceId': instance.deviceId,
      'MobileDataUsage': instance.mobileDataUsage,
      'WifiDataUsage': instance.wifiDataUsage,
      'StartTime': instance.startTime,
      'EndTime': instance.endTime,
      'IsRoaming': instance.isRoaming,
    };

GroupGetAllModel$Groups$Item _$GroupGetAllModel$Groups$ItemFromJson(
        Map<String, dynamic> json) =>
    GroupGetAllModel$Groups$Item(
      parentGroupID: json['ParentGroupID'] as String?,
      defaultJobsCount: json['DefaultJobsCount'] as int?,
      deviceNameRule: json['DeviceNameRule'] as String?,
      groupName: json['GroupName'] as String?,
      groupID: json['GroupID'] as String?,
    );

Map<String, dynamic> _$GroupGetAllModel$Groups$ItemToJson(
        GroupGetAllModel$Groups$Item instance) =>
    <String, dynamic>{
      'ParentGroupID': instance.parentGroupID,
      'DefaultJobsCount': instance.defaultJobsCount,
      'DeviceNameRule': instance.deviceNameRule,
      'GroupName': instance.groupName,
      'GroupID': instance.groupID,
    };

PreapprovedDeviceResponseModel$Rows$Item
    _$PreapprovedDeviceResponseModel$Rows$ItemFromJson(
            Map<String, dynamic> json) =>
        PreapprovedDeviceResponseModel$Rows$Item(
          deviceID: json['DeviceID'] as String?,
          deviceName: json['DeviceName'] as String?,
          id: json['ID'] as String?,
          iDType: json['IDType'] as String?,
          groupID: json['GroupID'] as String?,
          groupPath: json['GroupPath'] as String?,
          tagName: json['TagName'] as String?,
          deviceNotes: json['DeviceNotes'] as String?,
          serialNumber: json['SerialNumber'] as String?,
          enableEnroll: json['EnableEnroll'] as String?,
          phoneNumber: json['PhoneNumber'] as String?,
          emailId: json['EmailId'] as String?,
          deviceIDS: (json['DeviceIDS'] as List<dynamic>?)
                  ?.map((e) => e as Object)
                  .toList() ??
              [],
        );

Map<String, dynamic> _$PreapprovedDeviceResponseModel$Rows$ItemToJson(
        PreapprovedDeviceResponseModel$Rows$Item instance) =>
    <String, dynamic>{
      'DeviceID': instance.deviceID,
      'DeviceName': instance.deviceName,
      'ID': instance.id,
      'IDType': instance.iDType,
      'GroupID': instance.groupID,
      'GroupPath': instance.groupPath,
      'TagName': instance.tagName,
      'DeviceNotes': instance.deviceNotes,
      'SerialNumber': instance.serialNumber,
      'EnableEnroll': instance.enableEnroll,
      'PhoneNumber': instance.phoneNumber,
      'EmailId': instance.emailId,
      'DeviceIDS': instance.deviceIDS,
    };

PostDeviceResponseModel$Rows$Item _$PostDeviceResponseModel$Rows$ItemFromJson(
        Map<String, dynamic> json) =>
    PostDeviceResponseModel$Rows$Item(
      deviceID: json['DeviceID'] as String?,
      enrollmentMode: json['EnrollmentMode'] as String?,
      locationTimeStamp: json['LocationTimeStamp'] as String?,
      deviceName: json['DeviceName'] as String?,
      deviceModelName: json['DeviceModelName'] as String?,
      platformType: json['PlatformType'] as String?,
      lastTimeStamp: json['LastTimeStamp'] as String?,
      agentVersion: json['AgentVersion'] as String?,
      battery: json['battery'] as String?,
      phoneSignal: json['PhoneSignal'] as String?,
      $Operator: json['Operator'] as String?,
      deviceIPAddress: json['DeviceIPAddress'] as String?,
      deviceTimeStamp: json['DeviceTimeStamp'] as String?,
      phoneRoaming: json['PhoneRoaming'] as String?,
      sureLockVersion: json['SureLockVersion'] as String?,
      sureVideoVersion: json['SureVideoVersion'] as String?,
      sureFoxVersion: json['SureFoxVersion'] as String?,
      rootStatus: json['RootStatus'] as String?,
      knoxStatus: json['KnoxStatus'] as String?,
      releaseVersion: json['ReleaseVersion'] as String?,
      imei: json['IMEI'] as String?,
      deviceRegistered: json['DeviceRegistered'] as String?,
      dataUsage: json['DataUsage'] as String?,
      cpuUsage: json['CpuUsage'] as String?,
      gpuUsage: json['GpuUsage'] as String?,
      temperature: json['Temperature'] as String?,
      isSupervised: json['IsSupervised'] as String?,
      isenrolled: json['Isenrolled'] as String?,
      notes: json['Notes'] as String?,
      nixPollingType: json['NixPollingType'] as String?,
      networkType: json['NetworkType'] as String?,
      serialNumber: json['SerialNumber'] as String?,
      phoneNumber: json['PhoneNumber'] as String?,
      deviceUserName: json['DeviceUserName'] as String?,
      gPSEnabled: json['GPSEnabled'] as String?,
      simSerialNumber: json['SimSerialNumber'] as String?,
      bluetoothEnabled: json['BluetoothEnabled'] as String?,
      uSBPluggedIn: json['USBPluggedIn'] as String?,
      bssid: json['BSSID'] as String?,
      sureLockSettingsVersionCode:
          json['SureLockSettingsVersionCode'] as String?,
      osBuildNumber: json['OsBuildNumber'] as String?,
      memoryStorageAvailable: json['MemoryStorageAvailable'] as String?,
      availablePhysicalMemory: json['AvailablePhysicalMemory'] as String?,
      realDeviceName: json['RealDeviceName'] as String?,
      securityPatchDate: json['SecurityPatchDate'] as String?,
      afwProfile: json['AfwProfile'] as String?,
      deviceGroupPath: json['DeviceGroupPath'] as String?,
      mTPSystemScanTimeStamp: json['MTPSystemScanTimeStamp'] as String?,
      mTPSystemScanThreatCount: json['MTPSystemScanThreatCount'] as String?,
      isMobileHotSpotEnabled: json['IsMobileHotSpotEnabled'] as String?,
      isEncryptionEnabled: json['IsEncryptionEnabled'] as String?,
      imei2: json['IMEI2'] as String?,
      ctsProfileMatch: json['CtsProfileMatch'] as String?,
      basicIntegrity: json['BasicIntegrity'] as String?,
      verifyAppEnable: json['VerifyAppEnable'] as String?,
      aDBEnable: json['ADBEnable'] as String?,
      allowUnknownSource: json['AllowUnknownSource'] as String?,
      deviceTimeZone: json['DeviceTimeZone'] as String?,
      deviceLocalIPAddress: json['DeviceLocalIPAddress'] as String?,
      wifiSSID: json['WifiSSID'] as String?,
      androidID: json['AndroidID'] as String?,
      hashCode: json['HashCode'] as String?,
      efotaRegistrationStatus: json['EfotaRegistrationStatus'] as String?,
      currentFirmwareVersion: json['CurrentFirmwareVersion'] as String?,
      groupID: json['GroupID'] as String?,
      protocol: json['Protocol'] as String?,
      trackingOn: json['TrackingOn'] as String?,
      defaultHome: json['DefaultHome'] as String?,
      sureLockLicense: json['SureLockLicense'] as String?,
      sureFoxLicense: json['SureFoxLicense'] as String?,
      sureVideoLicense: json['SureVideoLicense'] as String?,
      batteryState: json['batteryState'] as String?,
      storageMemoryTotal: json['StorageMemoryTotal'] as String?,
      totalPhysicalMemory: json['TotalPhysicalMemory'] as String?,
      deviceApprovedStatus: json['DeviceApprovedStatus'] as String?,
      thingsData: json['ThingsData'] as String?,
      trackingInterval: json['TrackingInterval'] as String?,
      jobsFailed: json['JobsFailed'] as String?,
      dJobsFailed: json['DJobsFailed'] as String?,
      jobsDeployed: json['JobsDeployed'] as String?,
      jobsInQueue: json['JobsInQueue'] as String?,
      jobsInProgress: json['JobsInProgress'] as String?,
      connectionStatus: $enumDecodeNullable(
          _$PostDeviceResponseModel$Rows$ItemConnectionStatusEnumMap,
          json['ConnectionStatus']),
      uDIDiOS: json['uDIDiOS'],
      pushMagic: json['pushMagic'],
      iOSToken: json['iOSToken'],
      eASDeviceIdentifier: json['eASDeviceIdentifier'],
      customerID: json['Customer ID'] as String?,
      gcmid: json['gcmid'],
      deviceUserID: json['deviceUserID'],
      backupBatteryPercent: (json['BackupBatteryPercent'] as num?)?.toDouble(),
      backupBatteryLevel: json['backupBatteryLevel'],
      backupBatteryState: json['backupBatteryState'],
      organizationUnit: json['organizationUnit'],
      deviceBrand: json['DeviceBrand'] as String?,
      deviceManufacture: json['DeviceManufacture'] as String?,
      activeSyncStatus: json['activeSyncStatus'],
      camera: json['camera'],
      fCMStatus: json['fCMStatus'],
      gCMStatusCode: json['gCMStatusCode'],
      incradle: json['incradle'],
      isSureLockDefaultLauncher: json['IsSureLockDefaultLauncher'] as String?,
      isSureLockDeviceAdmin: json['IsSureLockDeviceAdmin'] as String?,
      isSureLockKnox: json['IsSureLockKnox'] as String?,
      isSureLockUsageAccessAllowed:
          json['IsSureLockUsageAccessAllowed'] as String?,
      iUsbDbuggingDisabled: json['IUsbDbuggingDisabled'] as String?,
      address: json['Address'] as String?,
      longitute: json['Longitute'] as String?,
      latitude: json['Latitude'] as String?,
      lockedUsing: json['lockedUsing'],
      extraDeviceInfo: json['extraDeviceInfo'],
      parentDeviceId: json['parentDeviceId'],
      thingHashCode: json['thingHashCode'],
      macName: json['macName'],
      macType: json['macType'],
      isConfigureSystemPermissionEnabled:
          json['isConfigureSystemPermissionEnabled'] as String?,
      isDisplayOverOtherAppsEnabled:
          json['isDisplayOverOtherAppsEnabled'] as String?,
      isCRPStorageStatus: json['isCRPStorageStatus'] as String?,
      isCRPContactStatus: json['isCRPContactStatus'] as String?,
      isCRPLocationStatus: json['isCRPLocationStatus'] as String?,
      isCRPCameraStatus: json['isCRPCameraStatus'] as String?,
      isCRPPhoneStatus: json['isCRPPhoneStatus'] as String?,
      isCRPSmsStatus: json['isCRPSmsStatus'] as String?,
      oSVersionSortVal: json['oSVersionSortVal'],
      drivesStorageMemory: json['drivesStorageMemory'],
      managementStatus: json['managementStatus'],
    );

Map<String, dynamic> _$PostDeviceResponseModel$Rows$ItemToJson(
        PostDeviceResponseModel$Rows$Item instance) =>
    <String, dynamic>{
      'DeviceID': instance.deviceID,
      'EnrollmentMode': instance.enrollmentMode,
      'LocationTimeStamp': instance.locationTimeStamp,
      'DeviceName': instance.deviceName,
      'DeviceModelName': instance.deviceModelName,
      'PlatformType': instance.platformType,
      'LastTimeStamp': instance.lastTimeStamp,
      'AgentVersion': instance.agentVersion,
      'battery': instance.battery,
      'PhoneSignal': instance.phoneSignal,
      'Operator': instance.$Operator,
      'DeviceIPAddress': instance.deviceIPAddress,
      'DeviceTimeStamp': instance.deviceTimeStamp,
      'PhoneRoaming': instance.phoneRoaming,
      'SureLockVersion': instance.sureLockVersion,
      'SureVideoVersion': instance.sureVideoVersion,
      'SureFoxVersion': instance.sureFoxVersion,
      'RootStatus': instance.rootStatus,
      'KnoxStatus': instance.knoxStatus,
      'ReleaseVersion': instance.releaseVersion,
      'IMEI': instance.imei,
      'DeviceRegistered': instance.deviceRegistered,
      'DataUsage': instance.dataUsage,
      'CpuUsage': instance.cpuUsage,
      'GpuUsage': instance.gpuUsage,
      'Temperature': instance.temperature,
      'IsSupervised': instance.isSupervised,
      'Isenrolled': instance.isenrolled,
      'Notes': instance.notes,
      'NixPollingType': instance.nixPollingType,
      'NetworkType': instance.networkType,
      'SerialNumber': instance.serialNumber,
      'PhoneNumber': instance.phoneNumber,
      'DeviceUserName': instance.deviceUserName,
      'GPSEnabled': instance.gPSEnabled,
      'SimSerialNumber': instance.simSerialNumber,
      'BluetoothEnabled': instance.bluetoothEnabled,
      'USBPluggedIn': instance.uSBPluggedIn,
      'BSSID': instance.bssid,
      'SureLockSettingsVersionCode': instance.sureLockSettingsVersionCode,
      'OsBuildNumber': instance.osBuildNumber,
      'MemoryStorageAvailable': instance.memoryStorageAvailable,
      'AvailablePhysicalMemory': instance.availablePhysicalMemory,
      'RealDeviceName': instance.realDeviceName,
      'SecurityPatchDate': instance.securityPatchDate,
      'AfwProfile': instance.afwProfile,
      'DeviceGroupPath': instance.deviceGroupPath,
      'MTPSystemScanTimeStamp': instance.mTPSystemScanTimeStamp,
      'MTPSystemScanThreatCount': instance.mTPSystemScanThreatCount,
      'IsMobileHotSpotEnabled': instance.isMobileHotSpotEnabled,
      'IsEncryptionEnabled': instance.isEncryptionEnabled,
      'IMEI2': instance.imei2,
      'CtsProfileMatch': instance.ctsProfileMatch,
      'BasicIntegrity': instance.basicIntegrity,
      'VerifyAppEnable': instance.verifyAppEnable,
      'ADBEnable': instance.aDBEnable,
      'AllowUnknownSource': instance.allowUnknownSource,
      'DeviceTimeZone': instance.deviceTimeZone,
      'DeviceLocalIPAddress': instance.deviceLocalIPAddress,
      'WifiSSID': instance.wifiSSID,
      'AndroidID': instance.androidID,
      'HashCode': instance.hashCode,
      'EfotaRegistrationStatus': instance.efotaRegistrationStatus,
      'CurrentFirmwareVersion': instance.currentFirmwareVersion,
      'GroupID': instance.groupID,
      'Protocol': instance.protocol,
      'TrackingOn': instance.trackingOn,
      'DefaultHome': instance.defaultHome,
      'SureLockLicense': instance.sureLockLicense,
      'SureFoxLicense': instance.sureFoxLicense,
      'SureVideoLicense': instance.sureVideoLicense,
      'batteryState': instance.batteryState,
      'StorageMemoryTotal': instance.storageMemoryTotal,
      'TotalPhysicalMemory': instance.totalPhysicalMemory,
      'DeviceApprovedStatus': instance.deviceApprovedStatus,
      'ThingsData': instance.thingsData,
      'TrackingInterval': instance.trackingInterval,
      'JobsFailed': instance.jobsFailed,
      'DJobsFailed': instance.dJobsFailed,
      'JobsDeployed': instance.jobsDeployed,
      'JobsInQueue': instance.jobsInQueue,
      'JobsInProgress': instance.jobsInProgress,
      'ConnectionStatus':
          _$PostDeviceResponseModel$Rows$ItemConnectionStatusEnumMap[
              instance.connectionStatus],
      'uDIDiOS': instance.uDIDiOS,
      'pushMagic': instance.pushMagic,
      'iOSToken': instance.iOSToken,
      'eASDeviceIdentifier': instance.eASDeviceIdentifier,
      'Customer ID': instance.customerID,
      'gcmid': instance.gcmid,
      'deviceUserID': instance.deviceUserID,
      'BackupBatteryPercent': instance.backupBatteryPercent,
      'backupBatteryLevel': instance.backupBatteryLevel,
      'backupBatteryState': instance.backupBatteryState,
      'organizationUnit': instance.organizationUnit,
      'DeviceBrand': instance.deviceBrand,
      'DeviceManufacture': instance.deviceManufacture,
      'activeSyncStatus': instance.activeSyncStatus,
      'camera': instance.camera,
      'fCMStatus': instance.fCMStatus,
      'gCMStatusCode': instance.gCMStatusCode,
      'incradle': instance.incradle,
      'IsSureLockDefaultLauncher': instance.isSureLockDefaultLauncher,
      'IsSureLockDeviceAdmin': instance.isSureLockDeviceAdmin,
      'IsSureLockKnox': instance.isSureLockKnox,
      'IsSureLockUsageAccessAllowed': instance.isSureLockUsageAccessAllowed,
      'IUsbDbuggingDisabled': instance.iUsbDbuggingDisabled,
      'Address': instance.address,
      'Longitute': instance.longitute,
      'Latitude': instance.latitude,
      'lockedUsing': instance.lockedUsing,
      'extraDeviceInfo': instance.extraDeviceInfo,
      'parentDeviceId': instance.parentDeviceId,
      'thingHashCode': instance.thingHashCode,
      'macName': instance.macName,
      'macType': instance.macType,
      'isConfigureSystemPermissionEnabled':
          instance.isConfigureSystemPermissionEnabled,
      'isDisplayOverOtherAppsEnabled': instance.isDisplayOverOtherAppsEnabled,
      'isCRPStorageStatus': instance.isCRPStorageStatus,
      'isCRPContactStatus': instance.isCRPContactStatus,
      'isCRPLocationStatus': instance.isCRPLocationStatus,
      'isCRPCameraStatus': instance.isCRPCameraStatus,
      'isCRPPhoneStatus': instance.isCRPPhoneStatus,
      'isCRPSmsStatus': instance.isCRPSmsStatus,
      'oSVersionSortVal': instance.oSVersionSortVal,
      'drivesStorageMemory': instance.drivesStorageMemory,
      'managementStatus': instance.managementStatus,
    };

const _$PostDeviceResponseModel$Rows$ItemConnectionStatusEnumMap = {
  PostDeviceResponseModel$Rows$ItemConnectionStatus.swaggerGeneratedUnknown:
      'swaggerGeneratedUnknown',
  PostDeviceResponseModel$Rows$ItemConnectionStatus.online: 'Online',
  PostDeviceResponseModel$Rows$ItemConnectionStatus.offline: 'Offline',
};

PostDeviceResponseModel$ExtraInfoDetails
    _$PostDeviceResponseModel$ExtraInfoDetailsFromJson(
            Map<String, dynamic> json) =>
        PostDeviceResponseModel$ExtraInfoDetails(
          appVersions: (json['appVersions'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              [],
          customColsHeader: (json['CustomColsHeader'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              [],
          customColsId: (json['CustomColsId'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              [],
        );

Map<String, dynamic> _$PostDeviceResponseModel$ExtraInfoDetailsToJson(
        PostDeviceResponseModel$ExtraInfoDetails instance) =>
    <String, dynamic>{
      'appVersions': instance.appVersions,
      'CustomColsHeader': instance.customColsHeader,
      'CustomColsId': instance.customColsId,
    };

RunScriptOutputModel$RetALL$Item _$RunScriptOutputModel$RetALL$ItemFromJson(
        Map<String, dynamic> json) =>
    RunScriptOutputModel$RetALL$Item(
      scriptid: json['scriptid'] as String?,
      scripttype: json['scripttype'] as String?,
      title: json['title'] as String?,
      script: json['script'] as String?,
      helptext: json['helptext'] as String?,
      notes: json['notes'] as String?,
      inputplaceholder: json['inputplaceholder'] as String?,
      inputClass: json['inputClass'] as String?,
    );

Map<String, dynamic> _$RunScriptOutputModel$RetALL$ItemToJson(
        RunScriptOutputModel$RetALL$Item instance) =>
    <String, dynamic>{
      'scriptid': instance.scriptid,
      'scripttype': instance.scripttype,
      'title': instance.title,
      'script': instance.script,
      'helptext': instance.helptext,
      'notes': instance.notes,
      'inputplaceholder': instance.inputplaceholder,
      'inputClass': instance.inputClass,
    };

RunScriptOutputModel$RetKNOX$Item _$RunScriptOutputModel$RetKNOX$ItemFromJson(
        Map<String, dynamic> json) =>
    RunScriptOutputModel$RetKNOX$Item(
      scriptid: json['scriptid'] as String?,
      scripttype: json['scripttype'] as String?,
      title: json['title'] as String?,
      script: json['script'] as String?,
      helptext: json['helptext'] as String?,
      notes: json['notes'] as String?,
      inputplaceholder: json['inputplaceholder'] as String?,
      inputClass: json['inputClass'] as String?,
    );

Map<String, dynamic> _$RunScriptOutputModel$RetKNOX$ItemToJson(
        RunScriptOutputModel$RetKNOX$Item instance) =>
    <String, dynamic>{
      'scriptid': instance.scriptid,
      'scripttype': instance.scripttype,
      'title': instance.title,
      'script': instance.script,
      'helptext': instance.helptext,
      'notes': instance.notes,
      'inputplaceholder': instance.inputplaceholder,
      'inputClass': instance.inputClass,
    };

RunScriptOutputModel$RetSHELL$Item _$RunScriptOutputModel$RetSHELL$ItemFromJson(
        Map<String, dynamic> json) =>
    RunScriptOutputModel$RetSHELL$Item(
      scriptid: json['scriptid'] as String?,
      scripttype: json['scripttype'] as String?,
      title: json['title'] as String?,
      script: json['script'] as String?,
      helptext: json['helptext'] as String?,
      notes: json['notes'] as String?,
      inputplaceholder: json['inputplaceholder'] as String?,
      inputClass: json['inputClass'] as String?,
    );

Map<String, dynamic> _$RunScriptOutputModel$RetSHELL$ItemToJson(
        RunScriptOutputModel$RetSHELL$Item instance) =>
    <String, dynamic>{
      'scriptid': instance.scriptid,
      'scripttype': instance.scripttype,
      'title': instance.title,
      'script': instance.script,
      'helptext': instance.helptext,
      'notes': instance.notes,
      'inputplaceholder': instance.inputplaceholder,
      'inputClass': instance.inputClass,
    };

RunScriptOutputModel$RetEA$Item _$RunScriptOutputModel$RetEA$ItemFromJson(
        Map<String, dynamic> json) =>
    RunScriptOutputModel$RetEA$Item(
      scriptid: json['scriptid'] as String?,
      scripttype: json['scripttype'] as String?,
      title: json['title'] as String?,
      script: json['script'] as String?,
      helptext: json['helptext'] as String?,
      notes: json['notes'] as String?,
      inputplaceholder: json['inputplaceholder'] as String?,
      inputClass: json['inputClass'] as String?,
    );

Map<String, dynamic> _$RunScriptOutputModel$RetEA$ItemToJson(
        RunScriptOutputModel$RetEA$Item instance) =>
    <String, dynamic>{
      'scriptid': instance.scriptid,
      'scripttype': instance.scripttype,
      'title': instance.title,
      'script': instance.script,
      'helptext': instance.helptext,
      'notes': instance.notes,
      'inputplaceholder': instance.inputplaceholder,
      'inputClass': instance.inputClass,
    };

RunScriptOutputModel$RetIOS$Item _$RunScriptOutputModel$RetIOS$ItemFromJson(
        Map<String, dynamic> json) =>
    RunScriptOutputModel$RetIOS$Item(
      scriptid: json['scriptid'] as String?,
      scripttype: json['scripttype'] as String?,
      title: json['title'] as String?,
      script: json['script'] as String?,
      helptext: json['helptext'] as String?,
      notes: json['notes'] as String?,
      inputplaceholder: json['inputplaceholder'] as String?,
      inputClass: json['inputClass'] as String?,
    );

Map<String, dynamic> _$RunScriptOutputModel$RetIOS$ItemToJson(
        RunScriptOutputModel$RetIOS$Item instance) =>
    <String, dynamic>{
      'scriptid': instance.scriptid,
      'scripttype': instance.scripttype,
      'title': instance.title,
      'script': instance.script,
      'helptext': instance.helptext,
      'notes': instance.notes,
      'inputplaceholder': instance.inputplaceholder,
      'inputClass': instance.inputClass,
    };

RunScriptOutputModel$RetWINDOWS$Item
    _$RunScriptOutputModel$RetWINDOWS$ItemFromJson(Map<String, dynamic> json) =>
        RunScriptOutputModel$RetWINDOWS$Item(
          scriptid: json['scriptid'] as String?,
          scripttype: json['scripttype'] as String?,
          title: json['title'] as String?,
          script: json['script'] as String?,
          helptext: json['helptext'] as String?,
          notes: json['notes'] as String?,
          inputplaceholder: json['inputplaceholder'] as String?,
          inputClass: json['inputClass'] as String?,
        );

Map<String, dynamic> _$RunScriptOutputModel$RetWINDOWS$ItemToJson(
        RunScriptOutputModel$RetWINDOWS$Item instance) =>
    <String, dynamic>{
      'scriptid': instance.scriptid,
      'scripttype': instance.scripttype,
      'title': instance.title,
      'script': instance.script,
      'helptext': instance.helptext,
      'notes': instance.notes,
      'inputplaceholder': instance.inputplaceholder,
      'inputClass': instance.inputClass,
    };

RunScriptOutputModel$RetANDROIDVR$Item
    _$RunScriptOutputModel$RetANDROIDVR$ItemFromJson(
            Map<String, dynamic> json) =>
        RunScriptOutputModel$RetANDROIDVR$Item(
          scriptid: json['scriptid'] as String?,
          scripttype: json['scripttype'] as String?,
          title: json['title'] as String?,
          script: json['script'] as String?,
          helptext: json['helptext'] as String?,
          notes: json['notes'] as String?,
          inputplaceholder: json['inputplaceholder'] as String?,
          inputClass: json['inputClass'] as String?,
        );

Map<String, dynamic> _$RunScriptOutputModel$RetANDROIDVR$ItemToJson(
        RunScriptOutputModel$RetANDROIDVR$Item instance) =>
    <String, dynamic>{
      'scriptid': instance.scriptid,
      'scripttype': instance.scripttype,
      'title': instance.title,
      'script': instance.script,
      'helptext': instance.helptext,
      'notes': instance.notes,
      'inputplaceholder': instance.inputplaceholder,
      'inputClass': instance.inputClass,
    };

DynamicTimeFencingPayLoad$SelectFence$TimeFenceRows$Item
    _$DynamicTimeFencingPayLoad$SelectFence$TimeFenceRows$ItemFromJson(
            Map<String, dynamic> json) =>
        DynamicTimeFencingPayLoad$SelectFence$TimeFenceRows$Item(
          timeZoneType: json['TimeZoneType'] as int?,
          startTime: json['StartTime'] as String?,
          endTime: json['EndTime'] as String?,
          days: (json['Days'] as List<dynamic>?)
                  ?.map((e) => e as Object)
                  .toList() ??
              [],
        );

Map<String,
    dynamic> _$DynamicTimeFencingPayLoad$SelectFence$TimeFenceRows$ItemToJson(
        DynamicTimeFencingPayLoad$SelectFence$TimeFenceRows$Item instance) =>
    <String, dynamic>{
      'TimeZoneType': instance.timeZoneType,
      'StartTime': instance.startTime,
      'EndTime': instance.endTime,
      'Days': instance.days,
    };

DynamicNetworkFencingPayLoad$SelectFence$NetworkFenceRows
    _$DynamicNetworkFencingPayLoad$SelectFence$NetworkFenceRowsFromJson(
            Map<String, dynamic> json) =>
        DynamicNetworkFencingPayLoad$SelectFence$NetworkFenceRows(
          ssid: json['SSID'] as String?,
        );

Map<String,
    dynamic> _$DynamicNetworkFencingPayLoad$SelectFence$NetworkFenceRowsToJson(
        DynamicNetworkFencingPayLoad$SelectFence$NetworkFenceRows instance) =>
    <String, dynamic>{
      'SSID': instance.ssid,
    };

LocationPost$RequestBody _$LocationPost$RequestBodyFromJson(
        Map<String, dynamic> json) =>
    LocationPost$RequestBody(
      deviceID: json['DeviceID'] as String?,
    );

Map<String, dynamic> _$LocationPost$RequestBodyToJson(
        LocationPost$RequestBody instance) =>
    <String, dynamic>{
      'DeviceID': instance.deviceID,
    };
