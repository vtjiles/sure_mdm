// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';
import 'sure_mdm.enums.swagger.dart' as enums;

part 'sure_mdm.models.swagger.g.dart';

@JsonSerializable(explicitToJson: true)
class UploadFileModel {
  UploadFileModel({
    required this.jobID,
    required this.subJobID,
    required this.fileName,
    required this.fileSize,
  });

  factory UploadFileModel.fromJson(Map<String, dynamic> json) =>
      _$UploadFileModelFromJson(json);

  @JsonKey(name: 'JobID')
  final String jobID;
  @JsonKey(name: 'SubJobID')
  final String subJobID;
  @JsonKey(name: 'FileName')
  final String fileName;
  @JsonKey(name: 'FileSize')
  final int fileSize;
  static const fromJsonFactory = _$UploadFileModelFromJson;
  static const toJsonFactory = _$UploadFileModelToJson;
  Map<String, dynamic> toJson() => _$UploadFileModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UploadFileModel &&
            (identical(other.jobID, jobID) ||
                const DeepCollectionEquality().equals(other.jobID, jobID)) &&
            (identical(other.subJobID, subJobID) ||
                const DeepCollectionEquality()
                    .equals(other.subJobID, subJobID)) &&
            (identical(other.fileName, fileName) ||
                const DeepCollectionEquality()
                    .equals(other.fileName, fileName)) &&
            (identical(other.fileSize, fileSize) ||
                const DeepCollectionEquality()
                    .equals(other.fileSize, fileSize)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobID) ^
      const DeepCollectionEquality().hash(subJobID) ^
      const DeepCollectionEquality().hash(fileName) ^
      const DeepCollectionEquality().hash(fileSize) ^
      runtimeType.hashCode;
}

extension $UploadFileModelExtension on UploadFileModel {
  UploadFileModel copyWith(
      {String? jobID, String? subJobID, String? fileName, int? fileSize}) {
    return UploadFileModel(
        jobID: jobID ?? this.jobID,
        subJobID: subJobID ?? this.subJobID,
        fileName: fileName ?? this.fileName,
        fileSize: fileSize ?? this.fileSize);
  }
}

@JsonSerializable(explicitToJson: true)
class ReapplyJobModel {
  ReapplyJobModel({
    this.deviceId,
    this.jobID,
    this.rowId,
    this.status,
  });

  factory ReapplyJobModel.fromJson(Map<String, dynamic> json) =>
      _$ReapplyJobModelFromJson(json);

  @JsonKey(name: 'DeviceId')
  final String? deviceId;
  @JsonKey(name: 'JobID')
  final String? jobID;
  @JsonKey(name: 'RowId')
  final String? rowId;
  @JsonKey(
      name: 'Status',
      toJson: reapplyJobModelStatusToJson,
      fromJson: reapplyJobModelStatusFromJson)
  final enums.ReapplyJobModelStatus? status;
  static const fromJsonFactory = _$ReapplyJobModelFromJson;
  static const toJsonFactory = _$ReapplyJobModelToJson;
  Map<String, dynamic> toJson() => _$ReapplyJobModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ReapplyJobModel &&
            (identical(other.deviceId, deviceId) ||
                const DeepCollectionEquality()
                    .equals(other.deviceId, deviceId)) &&
            (identical(other.jobID, jobID) ||
                const DeepCollectionEquality().equals(other.jobID, jobID)) &&
            (identical(other.rowId, rowId) ||
                const DeepCollectionEquality().equals(other.rowId, rowId)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(deviceId) ^
      const DeepCollectionEquality().hash(jobID) ^
      const DeepCollectionEquality().hash(rowId) ^
      const DeepCollectionEquality().hash(status) ^
      runtimeType.hashCode;
}

extension $ReapplyJobModelExtension on ReapplyJobModel {
  ReapplyJobModel copyWith(
      {String? deviceId,
      String? jobID,
      String? rowId,
      enums.ReapplyJobModelStatus? status}) {
    return ReapplyJobModel(
        deviceId: deviceId ?? this.deviceId,
        jobID: jobID ?? this.jobID,
        rowId: rowId ?? this.rowId,
        status: status ?? this.status);
  }
}

@JsonSerializable(explicitToJson: true)
class LastLocationModel {
  LastLocationModel({
    this.deviceId,
    this.location,
  });

  factory LastLocationModel.fromJson(Map<String, dynamic> json) =>
      _$LastLocationModelFromJson(json);

  @JsonKey(name: 'DeviceId')
  final String? deviceId;
  @JsonKey(name: 'Location', defaultValue: <LastLocationModel$Location>[])
  final List<LastLocationModel$Location>? location;
  static const fromJsonFactory = _$LastLocationModelFromJson;
  static const toJsonFactory = _$LastLocationModelToJson;
  Map<String, dynamic> toJson() => _$LastLocationModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LastLocationModel &&
            (identical(other.deviceId, deviceId) ||
                const DeepCollectionEquality()
                    .equals(other.deviceId, deviceId)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(deviceId) ^
      const DeepCollectionEquality().hash(location) ^
      runtimeType.hashCode;
}

extension $LastLocationModelExtension on LastLocationModel {
  LastLocationModel copyWith(
      {String? deviceId, List<LastLocationModel$Location>? location}) {
    return LastLocationModel(
        deviceId: deviceId ?? this.deviceId,
        location: location ?? this.location);
  }
}

@JsonSerializable(explicitToJson: true)
class AccountDetailsModel {
  AccountDetailsModel({
    this.userID,
    this.company,
    this.name,
    this.customerID,
    this.maxDeviceCount,
    this.deviceCount,
    this.totalStorageSize,
    this.usedStorageSize,
    this.isTrial,
    this.expiryDate,
    this.isUsingChargify,
    this.chatgifyUrl,
    this.isOnPremise,
    this.useLocationTracking,
    this.showDashBoard,
    this.isSsoUser,
    this.isS3Available,
    this.isFTPAvailable,
    this.minLocationTrackingPeriodicity,
    this.minTelecomMgmtTracPeriodicity,
    this.homeDeviceCount,
    this.deviceCountForUser,
    this.hideDynamicJob,
    this.isMarkedForDeletion,
    this.licenseType,
    this.dateCreatedEpoch,
    this.useInfluxDB,
    this.useIntercom,
    this.useRingCaptchaSms,
    this.bOptedInForMail,
    this.mspid,
    this.useMongoDB,
  });

  factory AccountDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$AccountDetailsModelFromJson(json);

  @JsonKey(name: 'UserID')
  final String? userID;
  @JsonKey(name: 'Company')
  final String? company;
  @JsonKey(name: 'Name')
  final String? name;
  @JsonKey(name: 'CustomerID')
  final String? customerID;
  @JsonKey(name: 'MaxDeviceCount')
  final int? maxDeviceCount;
  @JsonKey(name: 'DeviceCount')
  final int? deviceCount;
  @JsonKey(name: 'TotalStorageSize')
  final int? totalStorageSize;
  @JsonKey(name: 'UsedStorageSize')
  final int? usedStorageSize;
  @JsonKey(name: 'IsTrial')
  final bool? isTrial;
  @JsonKey(name: 'ExpiryDate')
  final String? expiryDate;
  @JsonKey(name: 'IsUsingChargify')
  final bool? isUsingChargify;
  @JsonKey(name: 'ChatgifyUrl')
  final String? chatgifyUrl;
  @JsonKey(name: 'isOnPremise')
  final bool? isOnPremise;
  @JsonKey(name: 'UseLocationTracking')
  final bool? useLocationTracking;
  @JsonKey(name: 'ShowDashBoard')
  final bool? showDashBoard;
  @JsonKey(name: 'IsSsoUser')
  final bool? isSsoUser;
  @JsonKey(name: 'IsS3Available')
  final bool? isS3Available;
  @JsonKey(name: 'IsFTPAvailable')
  final bool? isFTPAvailable;
  @JsonKey(name: 'MinLocationTrackingPeriodicity')
  final int? minLocationTrackingPeriodicity;
  @JsonKey(name: 'MinTelecomMgmtTracPeriodicity')
  final int? minTelecomMgmtTracPeriodicity;
  @JsonKey(name: 'HomeDeviceCount')
  final int? homeDeviceCount;
  @JsonKey(name: 'DeviceCountForUser')
  final String? deviceCountForUser;
  @JsonKey(name: 'HideDynamicJob')
  final String? hideDynamicJob;
  @JsonKey(name: 'isMarkedForDeletion')
  final bool? isMarkedForDeletion;
  @JsonKey(name: 'licenseType')
  final int? licenseType;
  @JsonKey(name: 'DateCreatedEpoch')
  final int? dateCreatedEpoch;
  @JsonKey(name: 'UseInfluxDB')
  final bool? useInfluxDB;
  @JsonKey(name: 'useIntercom')
  final bool? useIntercom;
  @JsonKey(name: 'useRingCaptchaSms')
  final bool? useRingCaptchaSms;
  @JsonKey(name: 'bOptedInForMail')
  final bool? bOptedInForMail;
  @JsonKey(name: 'MSPID')
  final String? mspid;
  @JsonKey(name: 'useMongoDB')
  final bool? useMongoDB;
  static const fromJsonFactory = _$AccountDetailsModelFromJson;
  static const toJsonFactory = _$AccountDetailsModelToJson;
  Map<String, dynamic> toJson() => _$AccountDetailsModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AccountDetailsModel &&
            (identical(other.userID, userID) ||
                const DeepCollectionEquality().equals(other.userID, userID)) &&
            (identical(other.company, company) ||
                const DeepCollectionEquality()
                    .equals(other.company, company)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.customerID, customerID) ||
                const DeepCollectionEquality()
                    .equals(other.customerID, customerID)) &&
            (identical(other.maxDeviceCount, maxDeviceCount) ||
                const DeepCollectionEquality()
                    .equals(other.maxDeviceCount, maxDeviceCount)) &&
            (identical(other.deviceCount, deviceCount) ||
                const DeepCollectionEquality()
                    .equals(other.deviceCount, deviceCount)) &&
            (identical(other.totalStorageSize, totalStorageSize) ||
                const DeepCollectionEquality()
                    .equals(other.totalStorageSize, totalStorageSize)) &&
            (identical(other.usedStorageSize, usedStorageSize) ||
                const DeepCollectionEquality()
                    .equals(other.usedStorageSize, usedStorageSize)) &&
            (identical(other.isTrial, isTrial) ||
                const DeepCollectionEquality()
                    .equals(other.isTrial, isTrial)) &&
            (identical(other.expiryDate, expiryDate) ||
                const DeepCollectionEquality()
                    .equals(other.expiryDate, expiryDate)) &&
            (identical(other.isUsingChargify, isUsingChargify) ||
                const DeepCollectionEquality()
                    .equals(other.isUsingChargify, isUsingChargify)) &&
            (identical(other.chatgifyUrl, chatgifyUrl) ||
                const DeepCollectionEquality()
                    .equals(other.chatgifyUrl, chatgifyUrl)) &&
            (identical(other.isOnPremise, isOnPremise) ||
                const DeepCollectionEquality()
                    .equals(other.isOnPremise, isOnPremise)) &&
            (identical(other.useLocationTracking, useLocationTracking) ||
                const DeepCollectionEquality()
                    .equals(other.useLocationTracking, useLocationTracking)) &&
            (identical(other.showDashBoard, showDashBoard) ||
                const DeepCollectionEquality()
                    .equals(other.showDashBoard, showDashBoard)) &&
            (identical(other.isSsoUser, isSsoUser) ||
                const DeepCollectionEquality()
                    .equals(other.isSsoUser, isSsoUser)) &&
            (identical(other.isS3Available, isS3Available) ||
                const DeepCollectionEquality()
                    .equals(other.isS3Available, isS3Available)) &&
            (identical(other.isFTPAvailable, isFTPAvailable) ||
                const DeepCollectionEquality()
                    .equals(other.isFTPAvailable, isFTPAvailable)) &&
            (identical(other.minLocationTrackingPeriodicity, minLocationTrackingPeriodicity) ||
                const DeepCollectionEquality().equals(
                    other.minLocationTrackingPeriodicity,
                    minLocationTrackingPeriodicity)) &&
            (identical(other.minTelecomMgmtTracPeriodicity, minTelecomMgmtTracPeriodicity) ||
                const DeepCollectionEquality().equals(
                    other.minTelecomMgmtTracPeriodicity,
                    minTelecomMgmtTracPeriodicity)) &&
            (identical(other.homeDeviceCount, homeDeviceCount) ||
                const DeepCollectionEquality()
                    .equals(other.homeDeviceCount, homeDeviceCount)) &&
            (identical(other.deviceCountForUser, deviceCountForUser) || const DeepCollectionEquality().equals(other.deviceCountForUser, deviceCountForUser)) &&
            (identical(other.hideDynamicJob, hideDynamicJob) || const DeepCollectionEquality().equals(other.hideDynamicJob, hideDynamicJob)) &&
            (identical(other.isMarkedForDeletion, isMarkedForDeletion) || const DeepCollectionEquality().equals(other.isMarkedForDeletion, isMarkedForDeletion)) &&
            (identical(other.licenseType, licenseType) || const DeepCollectionEquality().equals(other.licenseType, licenseType)) &&
            (identical(other.dateCreatedEpoch, dateCreatedEpoch) || const DeepCollectionEquality().equals(other.dateCreatedEpoch, dateCreatedEpoch)) &&
            (identical(other.useInfluxDB, useInfluxDB) || const DeepCollectionEquality().equals(other.useInfluxDB, useInfluxDB)) &&
            (identical(other.useIntercom, useIntercom) || const DeepCollectionEquality().equals(other.useIntercom, useIntercom)) &&
            (identical(other.useRingCaptchaSms, useRingCaptchaSms) || const DeepCollectionEquality().equals(other.useRingCaptchaSms, useRingCaptchaSms)) &&
            (identical(other.bOptedInForMail, bOptedInForMail) || const DeepCollectionEquality().equals(other.bOptedInForMail, bOptedInForMail)) &&
            (identical(other.mspid, mspid) || const DeepCollectionEquality().equals(other.mspid, mspid)) &&
            (identical(other.useMongoDB, useMongoDB) || const DeepCollectionEquality().equals(other.useMongoDB, useMongoDB)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(userID) ^
      const DeepCollectionEquality().hash(company) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(customerID) ^
      const DeepCollectionEquality().hash(maxDeviceCount) ^
      const DeepCollectionEquality().hash(deviceCount) ^
      const DeepCollectionEquality().hash(totalStorageSize) ^
      const DeepCollectionEquality().hash(usedStorageSize) ^
      const DeepCollectionEquality().hash(isTrial) ^
      const DeepCollectionEquality().hash(expiryDate) ^
      const DeepCollectionEquality().hash(isUsingChargify) ^
      const DeepCollectionEquality().hash(chatgifyUrl) ^
      const DeepCollectionEquality().hash(isOnPremise) ^
      const DeepCollectionEquality().hash(useLocationTracking) ^
      const DeepCollectionEquality().hash(showDashBoard) ^
      const DeepCollectionEquality().hash(isSsoUser) ^
      const DeepCollectionEquality().hash(isS3Available) ^
      const DeepCollectionEquality().hash(isFTPAvailable) ^
      const DeepCollectionEquality().hash(minLocationTrackingPeriodicity) ^
      const DeepCollectionEquality().hash(minTelecomMgmtTracPeriodicity) ^
      const DeepCollectionEquality().hash(homeDeviceCount) ^
      const DeepCollectionEquality().hash(deviceCountForUser) ^
      const DeepCollectionEquality().hash(hideDynamicJob) ^
      const DeepCollectionEquality().hash(isMarkedForDeletion) ^
      const DeepCollectionEquality().hash(licenseType) ^
      const DeepCollectionEquality().hash(dateCreatedEpoch) ^
      const DeepCollectionEquality().hash(useInfluxDB) ^
      const DeepCollectionEquality().hash(useIntercom) ^
      const DeepCollectionEquality().hash(useRingCaptchaSms) ^
      const DeepCollectionEquality().hash(bOptedInForMail) ^
      const DeepCollectionEquality().hash(mspid) ^
      const DeepCollectionEquality().hash(useMongoDB) ^
      runtimeType.hashCode;
}

extension $AccountDetailsModelExtension on AccountDetailsModel {
  AccountDetailsModel copyWith(
      {String? userID,
      String? company,
      String? name,
      String? customerID,
      int? maxDeviceCount,
      int? deviceCount,
      int? totalStorageSize,
      int? usedStorageSize,
      bool? isTrial,
      String? expiryDate,
      bool? isUsingChargify,
      String? chatgifyUrl,
      bool? isOnPremise,
      bool? useLocationTracking,
      bool? showDashBoard,
      bool? isSsoUser,
      bool? isS3Available,
      bool? isFTPAvailable,
      int? minLocationTrackingPeriodicity,
      int? minTelecomMgmtTracPeriodicity,
      int? homeDeviceCount,
      String? deviceCountForUser,
      String? hideDynamicJob,
      bool? isMarkedForDeletion,
      int? licenseType,
      int? dateCreatedEpoch,
      bool? useInfluxDB,
      bool? useIntercom,
      bool? useRingCaptchaSms,
      bool? bOptedInForMail,
      String? mspid,
      bool? useMongoDB}) {
    return AccountDetailsModel(
        userID: userID ?? this.userID,
        company: company ?? this.company,
        name: name ?? this.name,
        customerID: customerID ?? this.customerID,
        maxDeviceCount: maxDeviceCount ?? this.maxDeviceCount,
        deviceCount: deviceCount ?? this.deviceCount,
        totalStorageSize: totalStorageSize ?? this.totalStorageSize,
        usedStorageSize: usedStorageSize ?? this.usedStorageSize,
        isTrial: isTrial ?? this.isTrial,
        expiryDate: expiryDate ?? this.expiryDate,
        isUsingChargify: isUsingChargify ?? this.isUsingChargify,
        chatgifyUrl: chatgifyUrl ?? this.chatgifyUrl,
        isOnPremise: isOnPremise ?? this.isOnPremise,
        useLocationTracking: useLocationTracking ?? this.useLocationTracking,
        showDashBoard: showDashBoard ?? this.showDashBoard,
        isSsoUser: isSsoUser ?? this.isSsoUser,
        isS3Available: isS3Available ?? this.isS3Available,
        isFTPAvailable: isFTPAvailable ?? this.isFTPAvailable,
        minLocationTrackingPeriodicity: minLocationTrackingPeriodicity ??
            this.minLocationTrackingPeriodicity,
        minTelecomMgmtTracPeriodicity:
            minTelecomMgmtTracPeriodicity ?? this.minTelecomMgmtTracPeriodicity,
        homeDeviceCount: homeDeviceCount ?? this.homeDeviceCount,
        deviceCountForUser: deviceCountForUser ?? this.deviceCountForUser,
        hideDynamicJob: hideDynamicJob ?? this.hideDynamicJob,
        isMarkedForDeletion: isMarkedForDeletion ?? this.isMarkedForDeletion,
        licenseType: licenseType ?? this.licenseType,
        dateCreatedEpoch: dateCreatedEpoch ?? this.dateCreatedEpoch,
        useInfluxDB: useInfluxDB ?? this.useInfluxDB,
        useIntercom: useIntercom ?? this.useIntercom,
        useRingCaptchaSms: useRingCaptchaSms ?? this.useRingCaptchaSms,
        bOptedInForMail: bOptedInForMail ?? this.bOptedInForMail,
        mspid: mspid ?? this.mspid,
        useMongoDB: useMongoDB ?? this.useMongoDB);
  }
}

typedef CallLogOutput = List<CallLogOutput$Item>;

@JsonSerializable(explicitToJson: true)
class CallLogOutput$Item {
  CallLogOutput$Item({
    this.id,
    this.callType,
    this.name,
    this.phoneNumber,
    this.date,
    this.duration,
  });

  factory CallLogOutput$Item.fromJson(Map<String, dynamic> json) =>
      _$CallLogOutput$ItemFromJson(json);

  @JsonKey(name: 'ID')
  final String? id;
  @JsonKey(name: 'CallType')
  final String? callType;
  @JsonKey(name: 'Name')
  final String? name;
  @JsonKey(name: 'PhoneNumber')
  final String? phoneNumber;
  @JsonKey(name: 'Date')
  final String? date;
  @JsonKey(name: 'Duration')
  final String? duration;
  static const fromJsonFactory = _$CallLogOutput$ItemFromJson;
  static const toJsonFactory = _$CallLogOutput$ItemToJson;
  Map<String, dynamic> toJson() => _$CallLogOutput$ItemToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CallLogOutput$Item &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.callType, callType) ||
                const DeepCollectionEquality()
                    .equals(other.callType, callType)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(callType) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(duration) ^
      runtimeType.hashCode;
}

extension $CallLogOutput$ItemExtension on CallLogOutput$Item {
  CallLogOutput$Item copyWith(
      {String? id,
      String? callType,
      String? name,
      String? phoneNumber,
      String? date,
      String? duration}) {
    return CallLogOutput$Item(
        id: id ?? this.id,
        callType: callType ?? this.callType,
        name: name ?? this.name,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        date: date ?? this.date,
        duration: duration ?? this.duration);
  }
}

typedef SMSLogOutput = List<SMSLogOutput$Item>;

@JsonSerializable(explicitToJson: true)
class SMSLogOutput$Item {
  SMSLogOutput$Item({
    this.id,
    this.smsType,
    this.name,
    this.phoneNumber,
    this.date,
    this.message,
  });

  factory SMSLogOutput$Item.fromJson(Map<String, dynamic> json) =>
      _$SMSLogOutput$ItemFromJson(json);

  @JsonKey(name: 'ID')
  final String? id;
  @JsonKey(name: 'SmsType')
  final String? smsType;
  @JsonKey(name: 'Name')
  final String? name;
  @JsonKey(name: 'PhoneNumber')
  final String? phoneNumber;
  @JsonKey(name: 'Date')
  final String? date;
  @JsonKey(name: 'Message')
  final String? message;
  static const fromJsonFactory = _$SMSLogOutput$ItemFromJson;
  static const toJsonFactory = _$SMSLogOutput$ItemToJson;
  Map<String, dynamic> toJson() => _$SMSLogOutput$ItemToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SMSLogOutput$Item &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.smsType, smsType) ||
                const DeepCollectionEquality()
                    .equals(other.smsType, smsType)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(smsType) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(message) ^
      runtimeType.hashCode;
}

extension $SMSLogOutput$ItemExtension on SMSLogOutput$Item {
  SMSLogOutput$Item copyWith(
      {String? id,
      String? smsType,
      String? name,
      String? phoneNumber,
      String? date,
      String? message}) {
    return SMSLogOutput$Item(
        id: id ?? this.id,
        smsType: smsType ?? this.smsType,
        name: name ?? this.name,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        date: date ?? this.date,
        message: message ?? this.message);
  }
}

typedef WhitelistPayload = List<Object>;
typedef BlacklistOutput = List<BlacklistOutput$Item>;

@JsonSerializable(explicitToJson: true)
class BlacklistOutput$Item {
  BlacklistOutput$Item({
    this.deviceID,
    this.name,
    this.model,
    this.platform,
    this.lastConnected,
  });

  factory BlacklistOutput$Item.fromJson(Map<String, dynamic> json) =>
      _$BlacklistOutput$ItemFromJson(json);

  @JsonKey(name: 'DeviceID')
  final String? deviceID;
  @JsonKey(name: 'Name')
  final String? name;
  @JsonKey(name: 'Model')
  final String? model;
  @JsonKey(name: 'Platform')
  final String? platform;
  @JsonKey(name: 'LastConnected')
  final String? lastConnected;
  static const fromJsonFactory = _$BlacklistOutput$ItemFromJson;
  static const toJsonFactory = _$BlacklistOutput$ItemToJson;
  Map<String, dynamic> toJson() => _$BlacklistOutput$ItemToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BlacklistOutput$Item &&
            (identical(other.deviceID, deviceID) ||
                const DeepCollectionEquality()
                    .equals(other.deviceID, deviceID)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.model, model) ||
                const DeepCollectionEquality().equals(other.model, model)) &&
            (identical(other.platform, platform) ||
                const DeepCollectionEquality()
                    .equals(other.platform, platform)) &&
            (identical(other.lastConnected, lastConnected) ||
                const DeepCollectionEquality()
                    .equals(other.lastConnected, lastConnected)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(deviceID) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(model) ^
      const DeepCollectionEquality().hash(platform) ^
      const DeepCollectionEquality().hash(lastConnected) ^
      runtimeType.hashCode;
}

extension $BlacklistOutput$ItemExtension on BlacklistOutput$Item {
  BlacklistOutput$Item copyWith(
      {String? deviceID,
      String? name,
      String? model,
      String? platform,
      String? lastConnected}) {
    return BlacklistOutput$Item(
        deviceID: deviceID ?? this.deviceID,
        name: name ?? this.name,
        model: model ?? this.model,
        platform: platform ?? this.platform,
        lastConnected: lastConnected ?? this.lastConnected);
  }
}

typedef UnapprovedOutput = List<UnapprovedOutput$Item>;

@JsonSerializable(explicitToJson: true)
class UnapprovedOutput$Item {
  UnapprovedOutput$Item({
    this.deviceID,
    this.deviceName,
    this.deviceModel,
    this.devicePlatform,
    this.lastConnected,
  });

  factory UnapprovedOutput$Item.fromJson(Map<String, dynamic> json) =>
      _$UnapprovedOutput$ItemFromJson(json);

  @JsonKey(name: 'DeviceID')
  final String? deviceID;
  @JsonKey(name: 'DeviceName')
  final String? deviceName;
  @JsonKey(name: 'DeviceModel')
  final String? deviceModel;
  @JsonKey(name: 'DevicePlatform')
  final String? devicePlatform;
  @JsonKey(name: 'LastConnected')
  final String? lastConnected;
  static const fromJsonFactory = _$UnapprovedOutput$ItemFromJson;
  static const toJsonFactory = _$UnapprovedOutput$ItemToJson;
  Map<String, dynamic> toJson() => _$UnapprovedOutput$ItemToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UnapprovedOutput$Item &&
            (identical(other.deviceID, deviceID) ||
                const DeepCollectionEquality()
                    .equals(other.deviceID, deviceID)) &&
            (identical(other.deviceName, deviceName) ||
                const DeepCollectionEquality()
                    .equals(other.deviceName, deviceName)) &&
            (identical(other.deviceModel, deviceModel) ||
                const DeepCollectionEquality()
                    .equals(other.deviceModel, deviceModel)) &&
            (identical(other.devicePlatform, devicePlatform) ||
                const DeepCollectionEquality()
                    .equals(other.devicePlatform, devicePlatform)) &&
            (identical(other.lastConnected, lastConnected) ||
                const DeepCollectionEquality()
                    .equals(other.lastConnected, lastConnected)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(deviceID) ^
      const DeepCollectionEquality().hash(deviceName) ^
      const DeepCollectionEquality().hash(deviceModel) ^
      const DeepCollectionEquality().hash(devicePlatform) ^
      const DeepCollectionEquality().hash(lastConnected) ^
      runtimeType.hashCode;
}

extension $UnapprovedOutput$ItemExtension on UnapprovedOutput$Item {
  UnapprovedOutput$Item copyWith(
      {String? deviceID,
      String? deviceName,
      String? deviceModel,
      String? devicePlatform,
      String? lastConnected}) {
    return UnapprovedOutput$Item(
        deviceID: deviceID ?? this.deviceID,
        deviceName: deviceName ?? this.deviceName,
        deviceModel: deviceModel ?? this.deviceModel,
        devicePlatform: devicePlatform ?? this.devicePlatform,
        lastConnected: lastConnected ?? this.lastConnected);
  }
}

@JsonSerializable(explicitToJson: true)
class CustomerOutputModel {
  CustomerOutputModel({
    this.customerId,
    this.name,
    this.totalDeviceLicenseCount,
    this.address,
    this.email,
    this.phone1,
    this.phone2,
    this.fax,
  });

  factory CustomerOutputModel.fromJson(Map<String, dynamic> json) =>
      _$CustomerOutputModelFromJson(json);

  @JsonKey(name: 'CustomerId')
  final String? customerId;
  @JsonKey(name: 'Name')
  final String? name;
  @JsonKey(name: 'TotalDeviceLicenseCount')
  final String? totalDeviceLicenseCount;
  @JsonKey(name: 'Address')
  final String? address;
  @JsonKey(name: 'Email')
  final String? email;
  @JsonKey(name: 'Phone1')
  final String? phone1;
  @JsonKey(name: 'Phone2')
  final String? phone2;
  @JsonKey(name: 'Fax')
  final String? fax;
  static const fromJsonFactory = _$CustomerOutputModelFromJson;
  static const toJsonFactory = _$CustomerOutputModelToJson;
  Map<String, dynamic> toJson() => _$CustomerOutputModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CustomerOutputModel &&
            (identical(other.customerId, customerId) ||
                const DeepCollectionEquality()
                    .equals(other.customerId, customerId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(
                    other.totalDeviceLicenseCount, totalDeviceLicenseCount) ||
                const DeepCollectionEquality().equals(
                    other.totalDeviceLicenseCount, totalDeviceLicenseCount)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.phone1, phone1) ||
                const DeepCollectionEquality().equals(other.phone1, phone1)) &&
            (identical(other.phone2, phone2) ||
                const DeepCollectionEquality().equals(other.phone2, phone2)) &&
            (identical(other.fax, fax) ||
                const DeepCollectionEquality().equals(other.fax, fax)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(customerId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(totalDeviceLicenseCount) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(phone1) ^
      const DeepCollectionEquality().hash(phone2) ^
      const DeepCollectionEquality().hash(fax) ^
      runtimeType.hashCode;
}

extension $CustomerOutputModelExtension on CustomerOutputModel {
  CustomerOutputModel copyWith(
      {String? customerId,
      String? name,
      String? totalDeviceLicenseCount,
      String? address,
      String? email,
      String? phone1,
      String? phone2,
      String? fax}) {
    return CustomerOutputModel(
        customerId: customerId ?? this.customerId,
        name: name ?? this.name,
        totalDeviceLicenseCount:
            totalDeviceLicenseCount ?? this.totalDeviceLicenseCount,
        address: address ?? this.address,
        email: email ?? this.email,
        phone1: phone1 ?? this.phone1,
        phone2: phone2 ?? this.phone2,
        fax: fax ?? this.fax);
  }
}

@JsonSerializable(explicitToJson: true)
class CustomDynamicJobModel {
  CustomDynamicJobModel({
    required this.customjobname,
    required this.customiconclassname,
    required this.customjobid,
    this.platFormType,
    this.idCustomJob,
  });

  factory CustomDynamicJobModel.fromJson(Map<String, dynamic> json) =>
      _$CustomDynamicJobModelFromJson(json);

  @JsonKey(name: 'customjobname')
  final String customjobname;
  @JsonKey(name: 'customiconclassname')
  final String customiconclassname;
  @JsonKey(name: 'customjobid')
  final String customjobid;
  @JsonKey(name: 'PlatFormType')
  final String? platFormType;
  @JsonKey(name: 'IdCustomJob')
  final String? idCustomJob;
  static const fromJsonFactory = _$CustomDynamicJobModelFromJson;
  static const toJsonFactory = _$CustomDynamicJobModelToJson;
  Map<String, dynamic> toJson() => _$CustomDynamicJobModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CustomDynamicJobModel &&
            (identical(other.customjobname, customjobname) ||
                const DeepCollectionEquality()
                    .equals(other.customjobname, customjobname)) &&
            (identical(other.customiconclassname, customiconclassname) ||
                const DeepCollectionEquality()
                    .equals(other.customiconclassname, customiconclassname)) &&
            (identical(other.customjobid, customjobid) ||
                const DeepCollectionEquality()
                    .equals(other.customjobid, customjobid)) &&
            (identical(other.platFormType, platFormType) ||
                const DeepCollectionEquality()
                    .equals(other.platFormType, platFormType)) &&
            (identical(other.idCustomJob, idCustomJob) ||
                const DeepCollectionEquality()
                    .equals(other.idCustomJob, idCustomJob)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(customjobname) ^
      const DeepCollectionEquality().hash(customiconclassname) ^
      const DeepCollectionEquality().hash(customjobid) ^
      const DeepCollectionEquality().hash(platFormType) ^
      const DeepCollectionEquality().hash(idCustomJob) ^
      runtimeType.hashCode;
}

extension $CustomDynamicJobModelExtension on CustomDynamicJobModel {
  CustomDynamicJobModel copyWith(
      {String? customjobname,
      String? customiconclassname,
      String? customjobid,
      String? platFormType,
      String? idCustomJob}) {
    return CustomDynamicJobModel(
        customjobname: customjobname ?? this.customjobname,
        customiconclassname: customiconclassname ?? this.customiconclassname,
        customjobid: customjobid ?? this.customjobid,
        platFormType: platFormType ?? this.platFormType,
        idCustomJob: idCustomJob ?? this.idCustomJob);
  }
}

typedef CustomDynamicJobOutPutModel = List<CustomDynamicJobOutPutModel$Item>;

@JsonSerializable(explicitToJson: true)
class CustomDynamicJobOutPutModel$Item {
  CustomDynamicJobOutPutModel$Item({
    this.idCustomJob,
    this.customJobIconID,
    this.customJobName,
    this.customIconClassName,
    this.customJobId,
    this.platFormType,
    this.jobName,
  });

  factory CustomDynamicJobOutPutModel$Item.fromJson(
          Map<String, dynamic> json) =>
      _$CustomDynamicJobOutPutModel$ItemFromJson(json);

  @JsonKey(name: 'IdCustomJob')
  final String? idCustomJob;
  @JsonKey(name: 'CustomJobIconID')
  final String? customJobIconID;
  @JsonKey(name: 'CustomJobName')
  final String? customJobName;
  @JsonKey(name: 'CustomIconClassName')
  final String? customIconClassName;
  @JsonKey(name: 'CustomJobId')
  final String? customJobId;
  @JsonKey(name: 'PlatFormType')
  final String? platFormType;
  @JsonKey(name: 'JobName')
  final String? jobName;
  static const fromJsonFactory = _$CustomDynamicJobOutPutModel$ItemFromJson;
  static const toJsonFactory = _$CustomDynamicJobOutPutModel$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$CustomDynamicJobOutPutModel$ItemToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CustomDynamicJobOutPutModel$Item &&
            (identical(other.idCustomJob, idCustomJob) ||
                const DeepCollectionEquality()
                    .equals(other.idCustomJob, idCustomJob)) &&
            (identical(other.customJobIconID, customJobIconID) ||
                const DeepCollectionEquality()
                    .equals(other.customJobIconID, customJobIconID)) &&
            (identical(other.customJobName, customJobName) ||
                const DeepCollectionEquality()
                    .equals(other.customJobName, customJobName)) &&
            (identical(other.customIconClassName, customIconClassName) ||
                const DeepCollectionEquality()
                    .equals(other.customIconClassName, customIconClassName)) &&
            (identical(other.customJobId, customJobId) ||
                const DeepCollectionEquality()
                    .equals(other.customJobId, customJobId)) &&
            (identical(other.platFormType, platFormType) ||
                const DeepCollectionEquality()
                    .equals(other.platFormType, platFormType)) &&
            (identical(other.jobName, jobName) ||
                const DeepCollectionEquality().equals(other.jobName, jobName)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(idCustomJob) ^
      const DeepCollectionEquality().hash(customJobIconID) ^
      const DeepCollectionEquality().hash(customJobName) ^
      const DeepCollectionEquality().hash(customIconClassName) ^
      const DeepCollectionEquality().hash(customJobId) ^
      const DeepCollectionEquality().hash(platFormType) ^
      const DeepCollectionEquality().hash(jobName) ^
      runtimeType.hashCode;
}

extension $CustomDynamicJobOutPutModel$ItemExtension
    on CustomDynamicJobOutPutModel$Item {
  CustomDynamicJobOutPutModel$Item copyWith(
      {String? idCustomJob,
      String? customJobIconID,
      String? customJobName,
      String? customIconClassName,
      String? customJobId,
      String? platFormType,
      String? jobName}) {
    return CustomDynamicJobOutPutModel$Item(
        idCustomJob: idCustomJob ?? this.idCustomJob,
        customJobIconID: customJobIconID ?? this.customJobIconID,
        customJobName: customJobName ?? this.customJobName,
        customIconClassName: customIconClassName ?? this.customIconClassName,
        customJobId: customJobId ?? this.customJobId,
        platFormType: platFormType ?? this.platFormType,
        jobName: jobName ?? this.jobName);
  }
}

typedef GetTagsOutputModel = List<GetTagsOutputModel$Item>;

@JsonSerializable(explicitToJson: true)
class GetTagsOutputModel$Item {
  GetTagsOutputModel$Item({
    this.tagName,
    this.tagID,
    this.defaultJobsCount,
  });

  factory GetTagsOutputModel$Item.fromJson(Map<String, dynamic> json) =>
      _$GetTagsOutputModel$ItemFromJson(json);

  @JsonKey(name: 'TagName')
  final String? tagName;
  @JsonKey(name: 'TagID')
  final String? tagID;
  @JsonKey(name: 'DefaultJobsCount')
  final String? defaultJobsCount;
  static const fromJsonFactory = _$GetTagsOutputModel$ItemFromJson;
  static const toJsonFactory = _$GetTagsOutputModel$ItemToJson;
  Map<String, dynamic> toJson() => _$GetTagsOutputModel$ItemToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetTagsOutputModel$Item &&
            (identical(other.tagName, tagName) ||
                const DeepCollectionEquality()
                    .equals(other.tagName, tagName)) &&
            (identical(other.tagID, tagID) ||
                const DeepCollectionEquality().equals(other.tagID, tagID)) &&
            (identical(other.defaultJobsCount, defaultJobsCount) ||
                const DeepCollectionEquality()
                    .equals(other.defaultJobsCount, defaultJobsCount)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(tagName) ^
      const DeepCollectionEquality().hash(tagID) ^
      const DeepCollectionEquality().hash(defaultJobsCount) ^
      runtimeType.hashCode;
}

extension $GetTagsOutputModel$ItemExtension on GetTagsOutputModel$Item {
  GetTagsOutputModel$Item copyWith(
      {String? tagName, String? tagID, String? defaultJobsCount}) {
    return GetTagsOutputModel$Item(
        tagName: tagName ?? this.tagName,
        tagID: tagID ?? this.tagID,
        defaultJobsCount: defaultJobsCount ?? this.defaultJobsCount);
  }
}

@JsonSerializable(explicitToJson: true)
class TagCreateModel {
  TagCreateModel({
    required this.tagName,
  });

  factory TagCreateModel.fromJson(Map<String, dynamic> json) =>
      _$TagCreateModelFromJson(json);

  @JsonKey(name: 'TagName')
  final String tagName;
  static const fromJsonFactory = _$TagCreateModelFromJson;
  static const toJsonFactory = _$TagCreateModelToJson;
  Map<String, dynamic> toJson() => _$TagCreateModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TagCreateModel &&
            (identical(other.tagName, tagName) ||
                const DeepCollectionEquality().equals(other.tagName, tagName)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(tagName) ^ runtimeType.hashCode;
}

extension $TagCreateModelExtension on TagCreateModel {
  TagCreateModel copyWith({String? tagName}) {
    return TagCreateModel(tagName: tagName ?? this.tagName);
  }
}

@JsonSerializable(explicitToJson: true)
class TagModifyModel {
  TagModifyModel({
    required this.tagName,
    required this.tagID,
  });

  factory TagModifyModel.fromJson(Map<String, dynamic> json) =>
      _$TagModifyModelFromJson(json);

  @JsonKey(name: 'TagName')
  final String tagName;
  @JsonKey(name: 'TagID')
  final String tagID;
  static const fromJsonFactory = _$TagModifyModelFromJson;
  static const toJsonFactory = _$TagModifyModelToJson;
  Map<String, dynamic> toJson() => _$TagModifyModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TagModifyModel &&
            (identical(other.tagName, tagName) ||
                const DeepCollectionEquality()
                    .equals(other.tagName, tagName)) &&
            (identical(other.tagID, tagID) ||
                const DeepCollectionEquality().equals(other.tagID, tagID)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(tagName) ^
      const DeepCollectionEquality().hash(tagID) ^
      runtimeType.hashCode;
}

extension $TagModifyModelExtension on TagModifyModel {
  TagModifyModel copyWith({String? tagName, String? tagID}) {
    return TagModifyModel(
        tagName: tagName ?? this.tagName, tagID: tagID ?? this.tagID);
  }
}

typedef TagsAssignToDeviceModel = List<TagsAssignToDeviceModel$Item>;

@JsonSerializable(explicitToJson: true)
class TagsAssignToDeviceModel$Item {
  TagsAssignToDeviceModel$Item({
    required this.deviceId,
    required this.tagId,
  });

  factory TagsAssignToDeviceModel$Item.fromJson(Map<String, dynamic> json) =>
      _$TagsAssignToDeviceModel$ItemFromJson(json);

  @JsonKey(name: 'DeviceId')
  final String deviceId;
  @JsonKey(name: 'TagId')
  final String tagId;
  static const fromJsonFactory = _$TagsAssignToDeviceModel$ItemFromJson;
  static const toJsonFactory = _$TagsAssignToDeviceModel$ItemToJson;
  Map<String, dynamic> toJson() => _$TagsAssignToDeviceModel$ItemToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TagsAssignToDeviceModel$Item &&
            (identical(other.deviceId, deviceId) ||
                const DeepCollectionEquality()
                    .equals(other.deviceId, deviceId)) &&
            (identical(other.tagId, tagId) ||
                const DeepCollectionEquality().equals(other.tagId, tagId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(deviceId) ^
      const DeepCollectionEquality().hash(tagId) ^
      runtimeType.hashCode;
}

extension $TagsAssignToDeviceModel$ItemExtension
    on TagsAssignToDeviceModel$Item {
  TagsAssignToDeviceModel$Item copyWith({String? deviceId, String? tagId}) {
    return TagsAssignToDeviceModel$Item(
        deviceId: deviceId ?? this.deviceId, tagId: tagId ?? this.tagId);
  }
}

@JsonSerializable(explicitToJson: true)
class SystemLog {
  SystemLog({
    this.reportID,
    this.queryParams,
    this.emailID,
    this.groupName,
    this.timeZone,
    this.reportType,
  });

  factory SystemLog.fromJson(Map<String, dynamic> json) =>
      _$SystemLogFromJson(json);

  @JsonKey(name: 'ReportID')
  final int? reportID;
  @JsonKey(name: 'QueryParams')
  final ReportParamsSystemLogObject? queryParams;
  @JsonKey(name: 'EmailID')
  final String? emailID;
  @JsonKey(name: 'GroupName')
  final String? groupName;
  @JsonKey(name: 'TimeZone')
  final String? timeZone;
  @JsonKey(name: 'ReportType')
  final String? reportType;
  static const fromJsonFactory = _$SystemLogFromJson;
  static const toJsonFactory = _$SystemLogToJson;
  Map<String, dynamic> toJson() => _$SystemLogToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SystemLog &&
            (identical(other.reportID, reportID) ||
                const DeepCollectionEquality()
                    .equals(other.reportID, reportID)) &&
            (identical(other.queryParams, queryParams) ||
                const DeepCollectionEquality()
                    .equals(other.queryParams, queryParams)) &&
            (identical(other.emailID, emailID) ||
                const DeepCollectionEquality()
                    .equals(other.emailID, emailID)) &&
            (identical(other.groupName, groupName) ||
                const DeepCollectionEquality()
                    .equals(other.groupName, groupName)) &&
            (identical(other.timeZone, timeZone) ||
                const DeepCollectionEquality()
                    .equals(other.timeZone, timeZone)) &&
            (identical(other.reportType, reportType) ||
                const DeepCollectionEquality()
                    .equals(other.reportType, reportType)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(reportID) ^
      const DeepCollectionEquality().hash(queryParams) ^
      const DeepCollectionEquality().hash(emailID) ^
      const DeepCollectionEquality().hash(groupName) ^
      const DeepCollectionEquality().hash(timeZone) ^
      const DeepCollectionEquality().hash(reportType) ^
      runtimeType.hashCode;
}

extension $SystemLogExtension on SystemLog {
  SystemLog copyWith(
      {int? reportID,
      ReportParamsSystemLogObject? queryParams,
      String? emailID,
      String? groupName,
      String? timeZone,
      String? reportType}) {
    return SystemLog(
        reportID: reportID ?? this.reportID,
        queryParams: queryParams ?? this.queryParams,
        emailID: emailID ?? this.emailID,
        groupName: groupName ?? this.groupName,
        timeZone: timeZone ?? this.timeZone,
        reportType: reportType ?? this.reportType);
  }
}

@JsonSerializable(explicitToJson: true)
class ReportParamsSystemLogObject {
  ReportParamsSystemLogObject({
    this.groupid,
    this.groupName,
    this.showAllLogs,
    this.showJobLogs,
    this.showAppInstallLogs,
    this.dateStart,
    this.dateEnd,
  });

  factory ReportParamsSystemLogObject.fromJson(Map<String, dynamic> json) =>
      _$ReportParamsSystemLogObjectFromJson(json);

  @JsonKey(name: 'groupid')
  final String? groupid;
  @JsonKey(name: 'GroupName')
  final String? groupName;
  @JsonKey(name: 'ShowAllLogs')
  final bool? showAllLogs;
  @JsonKey(name: 'ShowJobLogs')
  final bool? showJobLogs;
  @JsonKey(name: 'ShowAppInstallLogs')
  final bool? showAppInstallLogs;
  @JsonKey(name: 'date_start')
  final String? dateStart;
  @JsonKey(name: 'date_end')
  final String? dateEnd;
  static const fromJsonFactory = _$ReportParamsSystemLogObjectFromJson;
  static const toJsonFactory = _$ReportParamsSystemLogObjectToJson;
  Map<String, dynamic> toJson() => _$ReportParamsSystemLogObjectToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ReportParamsSystemLogObject &&
            (identical(other.groupid, groupid) ||
                const DeepCollectionEquality()
                    .equals(other.groupid, groupid)) &&
            (identical(other.groupName, groupName) ||
                const DeepCollectionEquality()
                    .equals(other.groupName, groupName)) &&
            (identical(other.showAllLogs, showAllLogs) ||
                const DeepCollectionEquality()
                    .equals(other.showAllLogs, showAllLogs)) &&
            (identical(other.showJobLogs, showJobLogs) ||
                const DeepCollectionEquality()
                    .equals(other.showJobLogs, showJobLogs)) &&
            (identical(other.showAppInstallLogs, showAppInstallLogs) ||
                const DeepCollectionEquality()
                    .equals(other.showAppInstallLogs, showAppInstallLogs)) &&
            (identical(other.dateStart, dateStart) ||
                const DeepCollectionEquality()
                    .equals(other.dateStart, dateStart)) &&
            (identical(other.dateEnd, dateEnd) ||
                const DeepCollectionEquality().equals(other.dateEnd, dateEnd)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(groupid) ^
      const DeepCollectionEquality().hash(groupName) ^
      const DeepCollectionEquality().hash(showAllLogs) ^
      const DeepCollectionEquality().hash(showJobLogs) ^
      const DeepCollectionEquality().hash(showAppInstallLogs) ^
      const DeepCollectionEquality().hash(dateStart) ^
      const DeepCollectionEquality().hash(dateEnd) ^
      runtimeType.hashCode;
}

extension $ReportParamsSystemLogObjectExtension on ReportParamsSystemLogObject {
  ReportParamsSystemLogObject copyWith(
      {String? groupid,
      String? groupName,
      bool? showAllLogs,
      bool? showJobLogs,
      bool? showAppInstallLogs,
      String? dateStart,
      String? dateEnd}) {
    return ReportParamsSystemLogObject(
        groupid: groupid ?? this.groupid,
        groupName: groupName ?? this.groupName,
        showAllLogs: showAllLogs ?? this.showAllLogs,
        showJobLogs: showJobLogs ?? this.showJobLogs,
        showAppInstallLogs: showAppInstallLogs ?? this.showAppInstallLogs,
        dateStart: dateStart ?? this.dateStart,
        dateEnd: dateEnd ?? this.dateEnd);
  }
}

@JsonSerializable(explicitToJson: true)
class OnDemandSystemLog {
  OnDemandSystemLog();

  factory OnDemandSystemLog.fromJson(Map<String, dynamic> json) =>
      _$OnDemandSystemLogFromJson(json);

  static const fromJsonFactory = _$OnDemandSystemLogFromJson;
  static const toJsonFactory = _$OnDemandSystemLogToJson;
  Map<String, dynamic> toJson() => _$OnDemandSystemLogToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode => runtimeType.hashCode;
}

@JsonSerializable(explicitToJson: true)
class ScheduledSystemLog {
  ScheduledSystemLog({
    this.customScheduleTime,
  });

  factory ScheduledSystemLog.fromJson(Map<String, dynamic> json) =>
      _$ScheduledSystemLogFromJson(json);

  @JsonKey(name: 'CustomScheduleTime')
  final String? customScheduleTime;
  static const fromJsonFactory = _$ScheduledSystemLogFromJson;
  static const toJsonFactory = _$ScheduledSystemLogToJson;
  Map<String, dynamic> toJson() => _$ScheduledSystemLogToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ScheduledSystemLog &&
            (identical(other.customScheduleTime, customScheduleTime) ||
                const DeepCollectionEquality()
                    .equals(other.customScheduleTime, customScheduleTime)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(customScheduleTime) ^
      runtimeType.hashCode;
}

extension $ScheduledSystemLogExtension on ScheduledSystemLog {
  ScheduledSystemLog copyWith({String? customScheduleTime}) {
    return ScheduledSystemLog(
        customScheduleTime: customScheduleTime ?? this.customScheduleTime);
  }
}

@JsonSerializable(explicitToJson: true)
class AssetTracking {
  AssetTracking({
    this.reportID,
    this.queryParams,
    this.emailID,
    this.groupName,
    this.timeZone,
    this.reportType,
  });

  factory AssetTracking.fromJson(Map<String, dynamic> json) =>
      _$AssetTrackingFromJson(json);

  @JsonKey(name: 'ReportID')
  final int? reportID;
  @JsonKey(name: 'QueryParams')
  final QueryParamsAssetTrackingObject? queryParams;
  @JsonKey(name: 'EmailID')
  final String? emailID;
  @JsonKey(name: 'GroupName')
  final String? groupName;
  @JsonKey(name: 'TimeZone')
  final String? timeZone;
  @JsonKey(name: 'ReportType')
  final String? reportType;
  static const fromJsonFactory = _$AssetTrackingFromJson;
  static const toJsonFactory = _$AssetTrackingToJson;
  Map<String, dynamic> toJson() => _$AssetTrackingToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AssetTracking &&
            (identical(other.reportID, reportID) ||
                const DeepCollectionEquality()
                    .equals(other.reportID, reportID)) &&
            (identical(other.queryParams, queryParams) ||
                const DeepCollectionEquality()
                    .equals(other.queryParams, queryParams)) &&
            (identical(other.emailID, emailID) ||
                const DeepCollectionEquality()
                    .equals(other.emailID, emailID)) &&
            (identical(other.groupName, groupName) ||
                const DeepCollectionEquality()
                    .equals(other.groupName, groupName)) &&
            (identical(other.timeZone, timeZone) ||
                const DeepCollectionEquality()
                    .equals(other.timeZone, timeZone)) &&
            (identical(other.reportType, reportType) ||
                const DeepCollectionEquality()
                    .equals(other.reportType, reportType)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(reportID) ^
      const DeepCollectionEquality().hash(queryParams) ^
      const DeepCollectionEquality().hash(emailID) ^
      const DeepCollectionEquality().hash(groupName) ^
      const DeepCollectionEquality().hash(timeZone) ^
      const DeepCollectionEquality().hash(reportType) ^
      runtimeType.hashCode;
}

extension $AssetTrackingExtension on AssetTracking {
  AssetTracking copyWith(
      {int? reportID,
      QueryParamsAssetTrackingObject? queryParams,
      String? emailID,
      String? groupName,
      String? timeZone,
      String? reportType}) {
    return AssetTracking(
        reportID: reportID ?? this.reportID,
        queryParams: queryParams ?? this.queryParams,
        emailID: emailID ?? this.emailID,
        groupName: groupName ?? this.groupName,
        timeZone: timeZone ?? this.timeZone,
        reportType: reportType ?? this.reportType);
  }
}

@JsonSerializable(explicitToJson: true)
class QueryParamsAssetTrackingObject {
  QueryParamsAssetTrackingObject({
    this.groupid,
    this.groupName,
  });

  factory QueryParamsAssetTrackingObject.fromJson(Map<String, dynamic> json) =>
      _$QueryParamsAssetTrackingObjectFromJson(json);

  @JsonKey(name: 'groupid')
  final String? groupid;
  @JsonKey(name: 'GroupName')
  final String? groupName;
  static const fromJsonFactory = _$QueryParamsAssetTrackingObjectFromJson;
  static const toJsonFactory = _$QueryParamsAssetTrackingObjectToJson;
  Map<String, dynamic> toJson() => _$QueryParamsAssetTrackingObjectToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is QueryParamsAssetTrackingObject &&
            (identical(other.groupid, groupid) ||
                const DeepCollectionEquality()
                    .equals(other.groupid, groupid)) &&
            (identical(other.groupName, groupName) ||
                const DeepCollectionEquality()
                    .equals(other.groupName, groupName)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(groupid) ^
      const DeepCollectionEquality().hash(groupName) ^
      runtimeType.hashCode;
}

extension $QueryParamsAssetTrackingObjectExtension
    on QueryParamsAssetTrackingObject {
  QueryParamsAssetTrackingObject copyWith(
      {String? groupid, String? groupName}) {
    return QueryParamsAssetTrackingObject(
        groupid: groupid ?? this.groupid,
        groupName: groupName ?? this.groupName);
  }
}

@JsonSerializable(explicitToJson: true)
class OnDemandAssetTracking {
  OnDemandAssetTracking();

  factory OnDemandAssetTracking.fromJson(Map<String, dynamic> json) =>
      _$OnDemandAssetTrackingFromJson(json);

  static const fromJsonFactory = _$OnDemandAssetTrackingFromJson;
  static const toJsonFactory = _$OnDemandAssetTrackingToJson;
  Map<String, dynamic> toJson() => _$OnDemandAssetTrackingToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode => runtimeType.hashCode;
}

@JsonSerializable(explicitToJson: true)
class ScheduledAssetTracking {
  ScheduledAssetTracking({
    this.customScheduleTime,
  });

  factory ScheduledAssetTracking.fromJson(Map<String, dynamic> json) =>
      _$ScheduledAssetTrackingFromJson(json);

  @JsonKey(name: 'CustomScheduleTime')
  final String? customScheduleTime;
  static const fromJsonFactory = _$ScheduledAssetTrackingFromJson;
  static const toJsonFactory = _$ScheduledAssetTrackingToJson;
  Map<String, dynamic> toJson() => _$ScheduledAssetTrackingToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ScheduledAssetTracking &&
            (identical(other.customScheduleTime, customScheduleTime) ||
                const DeepCollectionEquality()
                    .equals(other.customScheduleTime, customScheduleTime)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(customScheduleTime) ^
      runtimeType.hashCode;
}

extension $ScheduledAssetTrackingExtension on ScheduledAssetTracking {
  ScheduledAssetTracking copyWith({String? customScheduleTime}) {
    return ScheduledAssetTracking(
        customScheduleTime: customScheduleTime ?? this.customScheduleTime);
  }
}

@JsonSerializable(explicitToJson: true)
class DeviceActivity {
  DeviceActivity({
    this.reportID,
    this.queryParams,
    this.emailID,
    this.groupName,
    this.timeZone,
    this.reportType,
  });

  factory DeviceActivity.fromJson(Map<String, dynamic> json) =>
      _$DeviceActivityFromJson(json);

  @JsonKey(name: 'ReportID')
  final int? reportID;
  @JsonKey(name: 'QueryParams')
  final ReportParamsDeviceActivityObject? queryParams;
  @JsonKey(name: 'EmailID')
  final String? emailID;
  @JsonKey(name: 'GroupName')
  final String? groupName;
  @JsonKey(name: 'TimeZone')
  final String? timeZone;
  @JsonKey(name: 'ReportType')
  final String? reportType;
  static const fromJsonFactory = _$DeviceActivityFromJson;
  static const toJsonFactory = _$DeviceActivityToJson;
  Map<String, dynamic> toJson() => _$DeviceActivityToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeviceActivity &&
            (identical(other.reportID, reportID) ||
                const DeepCollectionEquality()
                    .equals(other.reportID, reportID)) &&
            (identical(other.queryParams, queryParams) ||
                const DeepCollectionEquality()
                    .equals(other.queryParams, queryParams)) &&
            (identical(other.emailID, emailID) ||
                const DeepCollectionEquality()
                    .equals(other.emailID, emailID)) &&
            (identical(other.groupName, groupName) ||
                const DeepCollectionEquality()
                    .equals(other.groupName, groupName)) &&
            (identical(other.timeZone, timeZone) ||
                const DeepCollectionEquality()
                    .equals(other.timeZone, timeZone)) &&
            (identical(other.reportType, reportType) ||
                const DeepCollectionEquality()
                    .equals(other.reportType, reportType)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(reportID) ^
      const DeepCollectionEquality().hash(queryParams) ^
      const DeepCollectionEquality().hash(emailID) ^
      const DeepCollectionEquality().hash(groupName) ^
      const DeepCollectionEquality().hash(timeZone) ^
      const DeepCollectionEquality().hash(reportType) ^
      runtimeType.hashCode;
}

extension $DeviceActivityExtension on DeviceActivity {
  DeviceActivity copyWith(
      {int? reportID,
      ReportParamsDeviceActivityObject? queryParams,
      String? emailID,
      String? groupName,
      String? timeZone,
      String? reportType}) {
    return DeviceActivity(
        reportID: reportID ?? this.reportID,
        queryParams: queryParams ?? this.queryParams,
        emailID: emailID ?? this.emailID,
        groupName: groupName ?? this.groupName,
        timeZone: timeZone ?? this.timeZone,
        reportType: reportType ?? this.reportType);
  }
}

@JsonSerializable(explicitToJson: true)
class ReportParamsDeviceActivityObject {
  ReportParamsDeviceActivityObject({
    this.groupid,
    this.groupName,
    this.deviceName,
    this.deviceid,
    this.dateStart,
    this.dateEnd,
  });

  factory ReportParamsDeviceActivityObject.fromJson(
          Map<String, dynamic> json) =>
      _$ReportParamsDeviceActivityObjectFromJson(json);

  @JsonKey(name: 'groupid')
  final String? groupid;
  @JsonKey(name: 'GroupName')
  final String? groupName;
  @JsonKey(name: 'DeviceName')
  final String? deviceName;
  @JsonKey(name: 'deviceid')
  final String? deviceid;
  @JsonKey(name: 'date_start')
  final String? dateStart;
  @JsonKey(name: 'date_end')
  final String? dateEnd;
  static const fromJsonFactory = _$ReportParamsDeviceActivityObjectFromJson;
  static const toJsonFactory = _$ReportParamsDeviceActivityObjectToJson;
  Map<String, dynamic> toJson() =>
      _$ReportParamsDeviceActivityObjectToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ReportParamsDeviceActivityObject &&
            (identical(other.groupid, groupid) ||
                const DeepCollectionEquality()
                    .equals(other.groupid, groupid)) &&
            (identical(other.groupName, groupName) ||
                const DeepCollectionEquality()
                    .equals(other.groupName, groupName)) &&
            (identical(other.deviceName, deviceName) ||
                const DeepCollectionEquality()
                    .equals(other.deviceName, deviceName)) &&
            (identical(other.deviceid, deviceid) ||
                const DeepCollectionEquality()
                    .equals(other.deviceid, deviceid)) &&
            (identical(other.dateStart, dateStart) ||
                const DeepCollectionEquality()
                    .equals(other.dateStart, dateStart)) &&
            (identical(other.dateEnd, dateEnd) ||
                const DeepCollectionEquality().equals(other.dateEnd, dateEnd)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(groupid) ^
      const DeepCollectionEquality().hash(groupName) ^
      const DeepCollectionEquality().hash(deviceName) ^
      const DeepCollectionEquality().hash(deviceid) ^
      const DeepCollectionEquality().hash(dateStart) ^
      const DeepCollectionEquality().hash(dateEnd) ^
      runtimeType.hashCode;
}

extension $ReportParamsDeviceActivityObjectExtension
    on ReportParamsDeviceActivityObject {
  ReportParamsDeviceActivityObject copyWith(
      {String? groupid,
      String? groupName,
      String? deviceName,
      String? deviceid,
      String? dateStart,
      String? dateEnd}) {
    return ReportParamsDeviceActivityObject(
        groupid: groupid ?? this.groupid,
        groupName: groupName ?? this.groupName,
        deviceName: deviceName ?? this.deviceName,
        deviceid: deviceid ?? this.deviceid,
        dateStart: dateStart ?? this.dateStart,
        dateEnd: dateEnd ?? this.dateEnd);
  }
}

@JsonSerializable(explicitToJson: true)
class OnDemandDeviceActivity {
  OnDemandDeviceActivity();

  factory OnDemandDeviceActivity.fromJson(Map<String, dynamic> json) =>
      _$OnDemandDeviceActivityFromJson(json);

  static const fromJsonFactory = _$OnDemandDeviceActivityFromJson;
  static const toJsonFactory = _$OnDemandDeviceActivityToJson;
  Map<String, dynamic> toJson() => _$OnDemandDeviceActivityToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode => runtimeType.hashCode;
}

@JsonSerializable(explicitToJson: true)
class ScheduledDeviceActivity {
  ScheduledDeviceActivity({
    this.customScheduleTime,
  });

  factory ScheduledDeviceActivity.fromJson(Map<String, dynamic> json) =>
      _$ScheduledDeviceActivityFromJson(json);

  @JsonKey(name: 'CustomScheduleTime')
  final String? customScheduleTime;
  static const fromJsonFactory = _$ScheduledDeviceActivityFromJson;
  static const toJsonFactory = _$ScheduledDeviceActivityToJson;
  Map<String, dynamic> toJson() => _$ScheduledDeviceActivityToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ScheduledDeviceActivity &&
            (identical(other.customScheduleTime, customScheduleTime) ||
                const DeepCollectionEquality()
                    .equals(other.customScheduleTime, customScheduleTime)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(customScheduleTime) ^
      runtimeType.hashCode;
}

extension $ScheduledDeviceActivityExtension on ScheduledDeviceActivity {
  ScheduledDeviceActivity copyWith({String? customScheduleTime}) {
    return ScheduledDeviceActivity(
        customScheduleTime: customScheduleTime ?? this.customScheduleTime);
  }
}

@JsonSerializable(explicitToJson: true)
class CallLogTracking {
  CallLogTracking({
    this.reportID,
    this.queryParams,
    this.emailID,
    this.groupName,
    this.timeZone,
    this.reportType,
  });

  factory CallLogTracking.fromJson(Map<String, dynamic> json) =>
      _$CallLogTrackingFromJson(json);

  @JsonKey(name: 'ReportID')
  final int? reportID;
  @JsonKey(name: 'QueryParams')
  final ReportParamsCallLogTrackingObject? queryParams;
  @JsonKey(name: 'EmailID')
  final String? emailID;
  @JsonKey(name: 'GroupName')
  final String? groupName;
  @JsonKey(name: 'TimeZone')
  final String? timeZone;
  @JsonKey(name: 'ReportType')
  final String? reportType;
  static const fromJsonFactory = _$CallLogTrackingFromJson;
  static const toJsonFactory = _$CallLogTrackingToJson;
  Map<String, dynamic> toJson() => _$CallLogTrackingToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CallLogTracking &&
            (identical(other.reportID, reportID) ||
                const DeepCollectionEquality()
                    .equals(other.reportID, reportID)) &&
            (identical(other.queryParams, queryParams) ||
                const DeepCollectionEquality()
                    .equals(other.queryParams, queryParams)) &&
            (identical(other.emailID, emailID) ||
                const DeepCollectionEquality()
                    .equals(other.emailID, emailID)) &&
            (identical(other.groupName, groupName) ||
                const DeepCollectionEquality()
                    .equals(other.groupName, groupName)) &&
            (identical(other.timeZone, timeZone) ||
                const DeepCollectionEquality()
                    .equals(other.timeZone, timeZone)) &&
            (identical(other.reportType, reportType) ||
                const DeepCollectionEquality()
                    .equals(other.reportType, reportType)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(reportID) ^
      const DeepCollectionEquality().hash(queryParams) ^
      const DeepCollectionEquality().hash(emailID) ^
      const DeepCollectionEquality().hash(groupName) ^
      const DeepCollectionEquality().hash(timeZone) ^
      const DeepCollectionEquality().hash(reportType) ^
      runtimeType.hashCode;
}

extension $CallLogTrackingExtension on CallLogTracking {
  CallLogTracking copyWith(
      {int? reportID,
      ReportParamsCallLogTrackingObject? queryParams,
      String? emailID,
      String? groupName,
      String? timeZone,
      String? reportType}) {
    return CallLogTracking(
        reportID: reportID ?? this.reportID,
        queryParams: queryParams ?? this.queryParams,
        emailID: emailID ?? this.emailID,
        groupName: groupName ?? this.groupName,
        timeZone: timeZone ?? this.timeZone,
        reportType: reportType ?? this.reportType);
  }
}

@JsonSerializable(explicitToJson: true)
class ReportParamsCallLogTrackingObject {
  ReportParamsCallLogTrackingObject({
    this.groupid,
    this.groupName,
    this.deviceName,
    this.deviceid,
    this.dateStart,
    this.dateEnd,
    this.callType,
  });

  factory ReportParamsCallLogTrackingObject.fromJson(
          Map<String, dynamic> json) =>
      _$ReportParamsCallLogTrackingObjectFromJson(json);

  @JsonKey(name: 'groupid')
  final String? groupid;
  @JsonKey(name: 'GroupName')
  final String? groupName;
  @JsonKey(name: 'DeviceName')
  final String? deviceName;
  @JsonKey(name: 'deviceid')
  final String? deviceid;
  @JsonKey(name: 'date_start')
  final String? dateStart;
  @JsonKey(name: 'date_end')
  final String? dateEnd;
  @JsonKey(name: 'CallType')
  final String? callType;
  static const fromJsonFactory = _$ReportParamsCallLogTrackingObjectFromJson;
  static const toJsonFactory = _$ReportParamsCallLogTrackingObjectToJson;
  Map<String, dynamic> toJson() =>
      _$ReportParamsCallLogTrackingObjectToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ReportParamsCallLogTrackingObject &&
            (identical(other.groupid, groupid) ||
                const DeepCollectionEquality()
                    .equals(other.groupid, groupid)) &&
            (identical(other.groupName, groupName) ||
                const DeepCollectionEquality()
                    .equals(other.groupName, groupName)) &&
            (identical(other.deviceName, deviceName) ||
                const DeepCollectionEquality()
                    .equals(other.deviceName, deviceName)) &&
            (identical(other.deviceid, deviceid) ||
                const DeepCollectionEquality()
                    .equals(other.deviceid, deviceid)) &&
            (identical(other.dateStart, dateStart) ||
                const DeepCollectionEquality()
                    .equals(other.dateStart, dateStart)) &&
            (identical(other.dateEnd, dateEnd) ||
                const DeepCollectionEquality()
                    .equals(other.dateEnd, dateEnd)) &&
            (identical(other.callType, callType) ||
                const DeepCollectionEquality()
                    .equals(other.callType, callType)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(groupid) ^
      const DeepCollectionEquality().hash(groupName) ^
      const DeepCollectionEquality().hash(deviceName) ^
      const DeepCollectionEquality().hash(deviceid) ^
      const DeepCollectionEquality().hash(dateStart) ^
      const DeepCollectionEquality().hash(dateEnd) ^
      const DeepCollectionEquality().hash(callType) ^
      runtimeType.hashCode;
}

extension $ReportParamsCallLogTrackingObjectExtension
    on ReportParamsCallLogTrackingObject {
  ReportParamsCallLogTrackingObject copyWith(
      {String? groupid,
      String? groupName,
      String? deviceName,
      String? deviceid,
      String? dateStart,
      String? dateEnd,
      String? callType}) {
    return ReportParamsCallLogTrackingObject(
        groupid: groupid ?? this.groupid,
        groupName: groupName ?? this.groupName,
        deviceName: deviceName ?? this.deviceName,
        deviceid: deviceid ?? this.deviceid,
        dateStart: dateStart ?? this.dateStart,
        dateEnd: dateEnd ?? this.dateEnd,
        callType: callType ?? this.callType);
  }
}

@JsonSerializable(explicitToJson: true)
class OnDemandCallLogTracking {
  OnDemandCallLogTracking();

  factory OnDemandCallLogTracking.fromJson(Map<String, dynamic> json) =>
      _$OnDemandCallLogTrackingFromJson(json);

  static const fromJsonFactory = _$OnDemandCallLogTrackingFromJson;
  static const toJsonFactory = _$OnDemandCallLogTrackingToJson;
  Map<String, dynamic> toJson() => _$OnDemandCallLogTrackingToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode => runtimeType.hashCode;
}

@JsonSerializable(explicitToJson: true)
class ScheduledCallLogTracking {
  ScheduledCallLogTracking({
    this.customScheduleTime,
  });

  factory ScheduledCallLogTracking.fromJson(Map<String, dynamic> json) =>
      _$ScheduledCallLogTrackingFromJson(json);

  @JsonKey(name: 'CustomScheduleTime')
  final String? customScheduleTime;
  static const fromJsonFactory = _$ScheduledCallLogTrackingFromJson;
  static const toJsonFactory = _$ScheduledCallLogTrackingToJson;
  Map<String, dynamic> toJson() => _$ScheduledCallLogTrackingToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ScheduledCallLogTracking &&
            (identical(other.customScheduleTime, customScheduleTime) ||
                const DeepCollectionEquality()
                    .equals(other.customScheduleTime, customScheduleTime)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(customScheduleTime) ^
      runtimeType.hashCode;
}

extension $ScheduledCallLogTrackingExtension on ScheduledCallLogTracking {
  ScheduledCallLogTracking copyWith({String? customScheduleTime}) {
    return ScheduledCallLogTracking(
        customScheduleTime: customScheduleTime ?? this.customScheduleTime);
  }
}

@JsonSerializable(explicitToJson: true)
class DeviceHistory {
  DeviceHistory({
    this.reportID,
    this.queryParams,
    this.emailID,
    this.groupName,
    this.timeZone,
    this.reportType,
  });

  factory DeviceHistory.fromJson(Map<String, dynamic> json) =>
      _$DeviceHistoryFromJson(json);

  @JsonKey(name: 'ReportID')
  final int? reportID;
  @JsonKey(name: 'QueryParams')
  final ReportParamsDeviceHistoryObject? queryParams;
  @JsonKey(name: 'EmailID')
  final String? emailID;
  @JsonKey(name: 'GroupName')
  final String? groupName;
  @JsonKey(name: 'TimeZone')
  final String? timeZone;
  @JsonKey(name: 'ReportType')
  final String? reportType;
  static const fromJsonFactory = _$DeviceHistoryFromJson;
  static const toJsonFactory = _$DeviceHistoryToJson;
  Map<String, dynamic> toJson() => _$DeviceHistoryToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeviceHistory &&
            (identical(other.reportID, reportID) ||
                const DeepCollectionEquality()
                    .equals(other.reportID, reportID)) &&
            (identical(other.queryParams, queryParams) ||
                const DeepCollectionEquality()
                    .equals(other.queryParams, queryParams)) &&
            (identical(other.emailID, emailID) ||
                const DeepCollectionEquality()
                    .equals(other.emailID, emailID)) &&
            (identical(other.groupName, groupName) ||
                const DeepCollectionEquality()
                    .equals(other.groupName, groupName)) &&
            (identical(other.timeZone, timeZone) ||
                const DeepCollectionEquality()
                    .equals(other.timeZone, timeZone)) &&
            (identical(other.reportType, reportType) ||
                const DeepCollectionEquality()
                    .equals(other.reportType, reportType)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(reportID) ^
      const DeepCollectionEquality().hash(queryParams) ^
      const DeepCollectionEquality().hash(emailID) ^
      const DeepCollectionEquality().hash(groupName) ^
      const DeepCollectionEquality().hash(timeZone) ^
      const DeepCollectionEquality().hash(reportType) ^
      runtimeType.hashCode;
}

extension $DeviceHistoryExtension on DeviceHistory {
  DeviceHistory copyWith(
      {int? reportID,
      ReportParamsDeviceHistoryObject? queryParams,
      String? emailID,
      String? groupName,
      String? timeZone,
      String? reportType}) {
    return DeviceHistory(
        reportID: reportID ?? this.reportID,
        queryParams: queryParams ?? this.queryParams,
        emailID: emailID ?? this.emailID,
        groupName: groupName ?? this.groupName,
        timeZone: timeZone ?? this.timeZone,
        reportType: reportType ?? this.reportType);
  }
}

@JsonSerializable(explicitToJson: true)
class ReportParamsDeviceHistoryObject {
  ReportParamsDeviceHistoryObject({
    this.groupid,
    this.groupName,
    this.deviceName,
    this.deviceid,
    this.dateStart,
    this.dateEnd,
  });

  factory ReportParamsDeviceHistoryObject.fromJson(Map<String, dynamic> json) =>
      _$ReportParamsDeviceHistoryObjectFromJson(json);

  @JsonKey(name: 'groupid')
  final String? groupid;
  @JsonKey(name: 'GroupName')
  final String? groupName;
  @JsonKey(name: 'DeviceName')
  final String? deviceName;
  @JsonKey(name: 'deviceid')
  final String? deviceid;
  @JsonKey(name: 'date_start')
  final String? dateStart;
  @JsonKey(name: 'date_end')
  final String? dateEnd;
  static const fromJsonFactory = _$ReportParamsDeviceHistoryObjectFromJson;
  static const toJsonFactory = _$ReportParamsDeviceHistoryObjectToJson;
  Map<String, dynamic> toJson() =>
      _$ReportParamsDeviceHistoryObjectToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ReportParamsDeviceHistoryObject &&
            (identical(other.groupid, groupid) ||
                const DeepCollectionEquality()
                    .equals(other.groupid, groupid)) &&
            (identical(other.groupName, groupName) ||
                const DeepCollectionEquality()
                    .equals(other.groupName, groupName)) &&
            (identical(other.deviceName, deviceName) ||
                const DeepCollectionEquality()
                    .equals(other.deviceName, deviceName)) &&
            (identical(other.deviceid, deviceid) ||
                const DeepCollectionEquality()
                    .equals(other.deviceid, deviceid)) &&
            (identical(other.dateStart, dateStart) ||
                const DeepCollectionEquality()
                    .equals(other.dateStart, dateStart)) &&
            (identical(other.dateEnd, dateEnd) ||
                const DeepCollectionEquality().equals(other.dateEnd, dateEnd)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(groupid) ^
      const DeepCollectionEquality().hash(groupName) ^
      const DeepCollectionEquality().hash(deviceName) ^
      const DeepCollectionEquality().hash(deviceid) ^
      const DeepCollectionEquality().hash(dateStart) ^
      const DeepCollectionEquality().hash(dateEnd) ^
      runtimeType.hashCode;
}

extension $ReportParamsDeviceHistoryObjectExtension
    on ReportParamsDeviceHistoryObject {
  ReportParamsDeviceHistoryObject copyWith(
      {String? groupid,
      String? groupName,
      String? deviceName,
      String? deviceid,
      String? dateStart,
      String? dateEnd}) {
    return ReportParamsDeviceHistoryObject(
        groupid: groupid ?? this.groupid,
        groupName: groupName ?? this.groupName,
        deviceName: deviceName ?? this.deviceName,
        deviceid: deviceid ?? this.deviceid,
        dateStart: dateStart ?? this.dateStart,
        dateEnd: dateEnd ?? this.dateEnd);
  }
}

@JsonSerializable(explicitToJson: true)
class OnDemandDeviceHistory {
  OnDemandDeviceHistory();

  factory OnDemandDeviceHistory.fromJson(Map<String, dynamic> json) =>
      _$OnDemandDeviceHistoryFromJson(json);

  static const fromJsonFactory = _$OnDemandDeviceHistoryFromJson;
  static const toJsonFactory = _$OnDemandDeviceHistoryToJson;
  Map<String, dynamic> toJson() => _$OnDemandDeviceHistoryToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode => runtimeType.hashCode;
}

@JsonSerializable(explicitToJson: true)
class ScheduledDeviceHistory {
  ScheduledDeviceHistory({
    this.customScheduleTime,
  });

  factory ScheduledDeviceHistory.fromJson(Map<String, dynamic> json) =>
      _$ScheduledDeviceHistoryFromJson(json);

  @JsonKey(name: 'CustomScheduleTime')
  final String? customScheduleTime;
  static const fromJsonFactory = _$ScheduledDeviceHistoryFromJson;
  static const toJsonFactory = _$ScheduledDeviceHistoryToJson;
  Map<String, dynamic> toJson() => _$ScheduledDeviceHistoryToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ScheduledDeviceHistory &&
            (identical(other.customScheduleTime, customScheduleTime) ||
                const DeepCollectionEquality()
                    .equals(other.customScheduleTime, customScheduleTime)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(customScheduleTime) ^
      runtimeType.hashCode;
}

extension $ScheduledDeviceHistoryExtension on ScheduledDeviceHistory {
  ScheduledDeviceHistory copyWith({String? customScheduleTime}) {
    return ScheduledDeviceHistory(
        customScheduleTime: customScheduleTime ?? this.customScheduleTime);
  }
}

@JsonSerializable(explicitToJson: true)
class JobsDeployed {
  JobsDeployed({
    this.reportID,
    this.queryParams,
    this.emailID,
    this.groupName,
    this.timeZone,
    this.reportType,
  });

  factory JobsDeployed.fromJson(Map<String, dynamic> json) =>
      _$JobsDeployedFromJson(json);

  @JsonKey(name: 'ReportID')
  final int? reportID;
  @JsonKey(name: 'QueryParams')
  final ReportParamsJobsDeployedObject? queryParams;
  @JsonKey(name: 'EmailID')
  final String? emailID;
  @JsonKey(name: 'GroupName')
  final String? groupName;
  @JsonKey(name: 'TimeZone')
  final String? timeZone;
  @JsonKey(name: 'ReportType')
  final String? reportType;
  static const fromJsonFactory = _$JobsDeployedFromJson;
  static const toJsonFactory = _$JobsDeployedToJson;
  Map<String, dynamic> toJson() => _$JobsDeployedToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is JobsDeployed &&
            (identical(other.reportID, reportID) ||
                const DeepCollectionEquality()
                    .equals(other.reportID, reportID)) &&
            (identical(other.queryParams, queryParams) ||
                const DeepCollectionEquality()
                    .equals(other.queryParams, queryParams)) &&
            (identical(other.emailID, emailID) ||
                const DeepCollectionEquality()
                    .equals(other.emailID, emailID)) &&
            (identical(other.groupName, groupName) ||
                const DeepCollectionEquality()
                    .equals(other.groupName, groupName)) &&
            (identical(other.timeZone, timeZone) ||
                const DeepCollectionEquality()
                    .equals(other.timeZone, timeZone)) &&
            (identical(other.reportType, reportType) ||
                const DeepCollectionEquality()
                    .equals(other.reportType, reportType)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(reportID) ^
      const DeepCollectionEquality().hash(queryParams) ^
      const DeepCollectionEquality().hash(emailID) ^
      const DeepCollectionEquality().hash(groupName) ^
      const DeepCollectionEquality().hash(timeZone) ^
      const DeepCollectionEquality().hash(reportType) ^
      runtimeType.hashCode;
}

extension $JobsDeployedExtension on JobsDeployed {
  JobsDeployed copyWith(
      {int? reportID,
      ReportParamsJobsDeployedObject? queryParams,
      String? emailID,
      String? groupName,
      String? timeZone,
      String? reportType}) {
    return JobsDeployed(
        reportID: reportID ?? this.reportID,
        queryParams: queryParams ?? this.queryParams,
        emailID: emailID ?? this.emailID,
        groupName: groupName ?? this.groupName,
        timeZone: timeZone ?? this.timeZone,
        reportType: reportType ?? this.reportType);
  }
}

@JsonSerializable(explicitToJson: true)
class ReportParamsJobsDeployedObject {
  ReportParamsJobsDeployedObject({
    this.groupid,
    this.groupName,
    this.jobname,
    this.jobId,
    this.dateStart,
    this.dateEnd,
  });

  factory ReportParamsJobsDeployedObject.fromJson(Map<String, dynamic> json) =>
      _$ReportParamsJobsDeployedObjectFromJson(json);

  @JsonKey(name: 'groupid')
  final String? groupid;
  @JsonKey(name: 'GroupName')
  final String? groupName;
  @JsonKey(name: 'jobname')
  final String? jobname;
  @JsonKey(name: 'JobId')
  final String? jobId;
  @JsonKey(name: 'date_start')
  final String? dateStart;
  @JsonKey(name: 'date_end')
  final String? dateEnd;
  static const fromJsonFactory = _$ReportParamsJobsDeployedObjectFromJson;
  static const toJsonFactory = _$ReportParamsJobsDeployedObjectToJson;
  Map<String, dynamic> toJson() => _$ReportParamsJobsDeployedObjectToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ReportParamsJobsDeployedObject &&
            (identical(other.groupid, groupid) ||
                const DeepCollectionEquality()
                    .equals(other.groupid, groupid)) &&
            (identical(other.groupName, groupName) ||
                const DeepCollectionEquality()
                    .equals(other.groupName, groupName)) &&
            (identical(other.jobname, jobname) ||
                const DeepCollectionEquality()
                    .equals(other.jobname, jobname)) &&
            (identical(other.jobId, jobId) ||
                const DeepCollectionEquality().equals(other.jobId, jobId)) &&
            (identical(other.dateStart, dateStart) ||
                const DeepCollectionEquality()
                    .equals(other.dateStart, dateStart)) &&
            (identical(other.dateEnd, dateEnd) ||
                const DeepCollectionEquality().equals(other.dateEnd, dateEnd)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(groupid) ^
      const DeepCollectionEquality().hash(groupName) ^
      const DeepCollectionEquality().hash(jobname) ^
      const DeepCollectionEquality().hash(jobId) ^
      const DeepCollectionEquality().hash(dateStart) ^
      const DeepCollectionEquality().hash(dateEnd) ^
      runtimeType.hashCode;
}

extension $ReportParamsJobsDeployedObjectExtension
    on ReportParamsJobsDeployedObject {
  ReportParamsJobsDeployedObject copyWith(
      {String? groupid,
      String? groupName,
      String? jobname,
      String? jobId,
      String? dateStart,
      String? dateEnd}) {
    return ReportParamsJobsDeployedObject(
        groupid: groupid ?? this.groupid,
        groupName: groupName ?? this.groupName,
        jobname: jobname ?? this.jobname,
        jobId: jobId ?? this.jobId,
        dateStart: dateStart ?? this.dateStart,
        dateEnd: dateEnd ?? this.dateEnd);
  }
}

@JsonSerializable(explicitToJson: true)
class OnDemandJobsDeployed {
  OnDemandJobsDeployed();

  factory OnDemandJobsDeployed.fromJson(Map<String, dynamic> json) =>
      _$OnDemandJobsDeployedFromJson(json);

  static const fromJsonFactory = _$OnDemandJobsDeployedFromJson;
  static const toJsonFactory = _$OnDemandJobsDeployedToJson;
  Map<String, dynamic> toJson() => _$OnDemandJobsDeployedToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode => runtimeType.hashCode;
}

@JsonSerializable(explicitToJson: true)
class ScheduledJobsDeployed {
  ScheduledJobsDeployed({
    this.customScheduleTime,
  });

  factory ScheduledJobsDeployed.fromJson(Map<String, dynamic> json) =>
      _$ScheduledJobsDeployedFromJson(json);

  @JsonKey(name: 'CustomScheduleTime')
  final String? customScheduleTime;
  static const fromJsonFactory = _$ScheduledJobsDeployedFromJson;
  static const toJsonFactory = _$ScheduledJobsDeployedToJson;
  Map<String, dynamic> toJson() => _$ScheduledJobsDeployedToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ScheduledJobsDeployed &&
            (identical(other.customScheduleTime, customScheduleTime) ||
                const DeepCollectionEquality()
                    .equals(other.customScheduleTime, customScheduleTime)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(customScheduleTime) ^
      runtimeType.hashCode;
}

extension $ScheduledJobsDeployedExtension on ScheduledJobsDeployed {
  ScheduledJobsDeployed copyWith({String? customScheduleTime}) {
    return ScheduledJobsDeployed(
        customScheduleTime: customScheduleTime ?? this.customScheduleTime);
  }
}

@JsonSerializable(explicitToJson: true)
class InstalledJobs {
  InstalledJobs({
    this.reportID,
    this.queryParams,
    this.emailID,
    this.groupName,
    this.timeZone,
    this.reportType,
  });

  factory InstalledJobs.fromJson(Map<String, dynamic> json) =>
      _$InstalledJobsFromJson(json);

  @JsonKey(name: 'ReportID')
  final int? reportID;
  @JsonKey(name: 'QueryParams')
  final ReportParamsInstalledJobsObject? queryParams;
  @JsonKey(name: 'EmailID')
  final String? emailID;
  @JsonKey(name: 'GroupName')
  final String? groupName;
  @JsonKey(name: 'TimeZone')
  final String? timeZone;
  @JsonKey(name: 'ReportType')
  final String? reportType;
  static const fromJsonFactory = _$InstalledJobsFromJson;
  static const toJsonFactory = _$InstalledJobsToJson;
  Map<String, dynamic> toJson() => _$InstalledJobsToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InstalledJobs &&
            (identical(other.reportID, reportID) ||
                const DeepCollectionEquality()
                    .equals(other.reportID, reportID)) &&
            (identical(other.queryParams, queryParams) ||
                const DeepCollectionEquality()
                    .equals(other.queryParams, queryParams)) &&
            (identical(other.emailID, emailID) ||
                const DeepCollectionEquality()
                    .equals(other.emailID, emailID)) &&
            (identical(other.groupName, groupName) ||
                const DeepCollectionEquality()
                    .equals(other.groupName, groupName)) &&
            (identical(other.timeZone, timeZone) ||
                const DeepCollectionEquality()
                    .equals(other.timeZone, timeZone)) &&
            (identical(other.reportType, reportType) ||
                const DeepCollectionEquality()
                    .equals(other.reportType, reportType)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(reportID) ^
      const DeepCollectionEquality().hash(queryParams) ^
      const DeepCollectionEquality().hash(emailID) ^
      const DeepCollectionEquality().hash(groupName) ^
      const DeepCollectionEquality().hash(timeZone) ^
      const DeepCollectionEquality().hash(reportType) ^
      runtimeType.hashCode;
}

extension $InstalledJobsExtension on InstalledJobs {
  InstalledJobs copyWith(
      {int? reportID,
      ReportParamsInstalledJobsObject? queryParams,
      String? emailID,
      String? groupName,
      String? timeZone,
      String? reportType}) {
    return InstalledJobs(
        reportID: reportID ?? this.reportID,
        queryParams: queryParams ?? this.queryParams,
        emailID: emailID ?? this.emailID,
        groupName: groupName ?? this.groupName,
        timeZone: timeZone ?? this.timeZone,
        reportType: reportType ?? this.reportType);
  }
}

@JsonSerializable(explicitToJson: true)
class ReportParamsInstalledJobsObject {
  ReportParamsInstalledJobsObject({
    this.groupid,
    this.groupName,
    this.jobname,
    this.jobId,
    this.dateStart,
    this.dateEnd,
    this.applicationname,
  });

  factory ReportParamsInstalledJobsObject.fromJson(Map<String, dynamic> json) =>
      _$ReportParamsInstalledJobsObjectFromJson(json);

  @JsonKey(name: 'groupid')
  final String? groupid;
  @JsonKey(name: 'GroupName')
  final String? groupName;
  @JsonKey(name: 'jobname')
  final String? jobname;
  @JsonKey(name: 'JobId')
  final String? jobId;
  @JsonKey(name: 'date_start')
  final String? dateStart;
  @JsonKey(name: 'date_end')
  final String? dateEnd;
  @JsonKey(name: 'applicationname')
  final String? applicationname;
  static const fromJsonFactory = _$ReportParamsInstalledJobsObjectFromJson;
  static const toJsonFactory = _$ReportParamsInstalledJobsObjectToJson;
  Map<String, dynamic> toJson() =>
      _$ReportParamsInstalledJobsObjectToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ReportParamsInstalledJobsObject &&
            (identical(other.groupid, groupid) ||
                const DeepCollectionEquality()
                    .equals(other.groupid, groupid)) &&
            (identical(other.groupName, groupName) ||
                const DeepCollectionEquality()
                    .equals(other.groupName, groupName)) &&
            (identical(other.jobname, jobname) ||
                const DeepCollectionEquality()
                    .equals(other.jobname, jobname)) &&
            (identical(other.jobId, jobId) ||
                const DeepCollectionEquality().equals(other.jobId, jobId)) &&
            (identical(other.dateStart, dateStart) ||
                const DeepCollectionEquality()
                    .equals(other.dateStart, dateStart)) &&
            (identical(other.dateEnd, dateEnd) ||
                const DeepCollectionEquality()
                    .equals(other.dateEnd, dateEnd)) &&
            (identical(other.applicationname, applicationname) ||
                const DeepCollectionEquality()
                    .equals(other.applicationname, applicationname)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(groupid) ^
      const DeepCollectionEquality().hash(groupName) ^
      const DeepCollectionEquality().hash(jobname) ^
      const DeepCollectionEquality().hash(jobId) ^
      const DeepCollectionEquality().hash(dateStart) ^
      const DeepCollectionEquality().hash(dateEnd) ^
      const DeepCollectionEquality().hash(applicationname) ^
      runtimeType.hashCode;
}

extension $ReportParamsInstalledJobsObjectExtension
    on ReportParamsInstalledJobsObject {
  ReportParamsInstalledJobsObject copyWith(
      {String? groupid,
      String? groupName,
      String? jobname,
      String? jobId,
      String? dateStart,
      String? dateEnd,
      String? applicationname}) {
    return ReportParamsInstalledJobsObject(
        groupid: groupid ?? this.groupid,
        groupName: groupName ?? this.groupName,
        jobname: jobname ?? this.jobname,
        jobId: jobId ?? this.jobId,
        dateStart: dateStart ?? this.dateStart,
        dateEnd: dateEnd ?? this.dateEnd,
        applicationname: applicationname ?? this.applicationname);
  }
}

@JsonSerializable(explicitToJson: true)
class OnDemandInstalledJobs {
  OnDemandInstalledJobs();

  factory OnDemandInstalledJobs.fromJson(Map<String, dynamic> json) =>
      _$OnDemandInstalledJobsFromJson(json);

  static const fromJsonFactory = _$OnDemandInstalledJobsFromJson;
  static const toJsonFactory = _$OnDemandInstalledJobsToJson;
  Map<String, dynamic> toJson() => _$OnDemandInstalledJobsToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode => runtimeType.hashCode;
}

@JsonSerializable(explicitToJson: true)
class ScheduledInstalledJobs {
  ScheduledInstalledJobs({
    this.customScheduleTime,
  });

  factory ScheduledInstalledJobs.fromJson(Map<String, dynamic> json) =>
      _$ScheduledInstalledJobsFromJson(json);

  @JsonKey(name: 'CustomScheduleTime')
  final String? customScheduleTime;
  static const fromJsonFactory = _$ScheduledInstalledJobsFromJson;
  static const toJsonFactory = _$ScheduledInstalledJobsToJson;
  Map<String, dynamic> toJson() => _$ScheduledInstalledJobsToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ScheduledInstalledJobs &&
            (identical(other.customScheduleTime, customScheduleTime) ||
                const DeepCollectionEquality()
                    .equals(other.customScheduleTime, customScheduleTime)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(customScheduleTime) ^
      runtimeType.hashCode;
}

extension $ScheduledInstalledJobsExtension on ScheduledInstalledJobs {
  ScheduledInstalledJobs copyWith({String? customScheduleTime}) {
    return ScheduledInstalledJobs(
        customScheduleTime: customScheduleTime ?? this.customScheduleTime);
  }
}

@JsonSerializable(explicitToJson: true)
class DeviceHealth {
  DeviceHealth({
    this.reportID,
    this.queryParams,
    this.emailID,
    this.groupName,
    this.timeZone,
    this.reportType,
  });

  factory DeviceHealth.fromJson(Map<String, dynamic> json) =>
      _$DeviceHealthFromJson(json);

  @JsonKey(name: 'ReportID')
  final int? reportID;
  @JsonKey(name: 'QueryParams')
  final ReportParamsDeviceHealthObject? queryParams;
  @JsonKey(name: 'EmailID')
  final String? emailID;
  @JsonKey(name: 'GroupName')
  final String? groupName;
  @JsonKey(name: 'TimeZone')
  final String? timeZone;
  @JsonKey(name: 'ReportType')
  final String? reportType;
  static const fromJsonFactory = _$DeviceHealthFromJson;
  static const toJsonFactory = _$DeviceHealthToJson;
  Map<String, dynamic> toJson() => _$DeviceHealthToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeviceHealth &&
            (identical(other.reportID, reportID) ||
                const DeepCollectionEquality()
                    .equals(other.reportID, reportID)) &&
            (identical(other.queryParams, queryParams) ||
                const DeepCollectionEquality()
                    .equals(other.queryParams, queryParams)) &&
            (identical(other.emailID, emailID) ||
                const DeepCollectionEquality()
                    .equals(other.emailID, emailID)) &&
            (identical(other.groupName, groupName) ||
                const DeepCollectionEquality()
                    .equals(other.groupName, groupName)) &&
            (identical(other.timeZone, timeZone) ||
                const DeepCollectionEquality()
                    .equals(other.timeZone, timeZone)) &&
            (identical(other.reportType, reportType) ||
                const DeepCollectionEquality()
                    .equals(other.reportType, reportType)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(reportID) ^
      const DeepCollectionEquality().hash(queryParams) ^
      const DeepCollectionEquality().hash(emailID) ^
      const DeepCollectionEquality().hash(groupName) ^
      const DeepCollectionEquality().hash(timeZone) ^
      const DeepCollectionEquality().hash(reportType) ^
      runtimeType.hashCode;
}

extension $DeviceHealthExtension on DeviceHealth {
  DeviceHealth copyWith(
      {int? reportID,
      ReportParamsDeviceHealthObject? queryParams,
      String? emailID,
      String? groupName,
      String? timeZone,
      String? reportType}) {
    return DeviceHealth(
        reportID: reportID ?? this.reportID,
        queryParams: queryParams ?? this.queryParams,
        emailID: emailID ?? this.emailID,
        groupName: groupName ?? this.groupName,
        timeZone: timeZone ?? this.timeZone,
        reportType: reportType ?? this.reportType);
  }
}

@JsonSerializable(explicitToJson: true)
class ReportParamsDeviceHealthObject {
  ReportParamsDeviceHealthObject({
    this.groupid,
    this.groupName,
    this.battery,
    this.storagemb,
    this.memorymb,
    this.dateStart,
    this.dateEnd,
  });

  factory ReportParamsDeviceHealthObject.fromJson(Map<String, dynamic> json) =>
      _$ReportParamsDeviceHealthObjectFromJson(json);

  @JsonKey(name: 'groupid')
  final String? groupid;
  @JsonKey(name: 'GroupName')
  final String? groupName;
  @JsonKey(name: 'battery')
  final String? battery;
  @JsonKey(name: 'storagemb')
  final String? storagemb;
  @JsonKey(name: 'memorymb')
  final String? memorymb;
  @JsonKey(name: 'date_start')
  final String? dateStart;
  @JsonKey(name: 'date_end')
  final String? dateEnd;
  static const fromJsonFactory = _$ReportParamsDeviceHealthObjectFromJson;
  static const toJsonFactory = _$ReportParamsDeviceHealthObjectToJson;
  Map<String, dynamic> toJson() => _$ReportParamsDeviceHealthObjectToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ReportParamsDeviceHealthObject &&
            (identical(other.groupid, groupid) ||
                const DeepCollectionEquality()
                    .equals(other.groupid, groupid)) &&
            (identical(other.groupName, groupName) ||
                const DeepCollectionEquality()
                    .equals(other.groupName, groupName)) &&
            (identical(other.battery, battery) ||
                const DeepCollectionEquality()
                    .equals(other.battery, battery)) &&
            (identical(other.storagemb, storagemb) ||
                const DeepCollectionEquality()
                    .equals(other.storagemb, storagemb)) &&
            (identical(other.memorymb, memorymb) ||
                const DeepCollectionEquality()
                    .equals(other.memorymb, memorymb)) &&
            (identical(other.dateStart, dateStart) ||
                const DeepCollectionEquality()
                    .equals(other.dateStart, dateStart)) &&
            (identical(other.dateEnd, dateEnd) ||
                const DeepCollectionEquality().equals(other.dateEnd, dateEnd)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(groupid) ^
      const DeepCollectionEquality().hash(groupName) ^
      const DeepCollectionEquality().hash(battery) ^
      const DeepCollectionEquality().hash(storagemb) ^
      const DeepCollectionEquality().hash(memorymb) ^
      const DeepCollectionEquality().hash(dateStart) ^
      const DeepCollectionEquality().hash(dateEnd) ^
      runtimeType.hashCode;
}

extension $ReportParamsDeviceHealthObjectExtension
    on ReportParamsDeviceHealthObject {
  ReportParamsDeviceHealthObject copyWith(
      {String? groupid,
      String? groupName,
      String? battery,
      String? storagemb,
      String? memorymb,
      String? dateStart,
      String? dateEnd}) {
    return ReportParamsDeviceHealthObject(
        groupid: groupid ?? this.groupid,
        groupName: groupName ?? this.groupName,
        battery: battery ?? this.battery,
        storagemb: storagemb ?? this.storagemb,
        memorymb: memorymb ?? this.memorymb,
        dateStart: dateStart ?? this.dateStart,
        dateEnd: dateEnd ?? this.dateEnd);
  }
}

@JsonSerializable(explicitToJson: true)
class OnDemandDeviceHealth {
  OnDemandDeviceHealth();

  factory OnDemandDeviceHealth.fromJson(Map<String, dynamic> json) =>
      _$OnDemandDeviceHealthFromJson(json);

  static const fromJsonFactory = _$OnDemandDeviceHealthFromJson;
  static const toJsonFactory = _$OnDemandDeviceHealthToJson;
  Map<String, dynamic> toJson() => _$OnDemandDeviceHealthToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode => runtimeType.hashCode;
}

@JsonSerializable(explicitToJson: true)
class ScheduledDeviceHealth {
  ScheduledDeviceHealth({
    this.customScheduleTime,
  });

  factory ScheduledDeviceHealth.fromJson(Map<String, dynamic> json) =>
      _$ScheduledDeviceHealthFromJson(json);

  @JsonKey(name: 'CustomScheduleTime')
  final String? customScheduleTime;
  static const fromJsonFactory = _$ScheduledDeviceHealthFromJson;
  static const toJsonFactory = _$ScheduledDeviceHealthToJson;
  Map<String, dynamic> toJson() => _$ScheduledDeviceHealthToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ScheduledDeviceHealth &&
            (identical(other.customScheduleTime, customScheduleTime) ||
                const DeepCollectionEquality()
                    .equals(other.customScheduleTime, customScheduleTime)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(customScheduleTime) ^
      runtimeType.hashCode;
}

extension $ScheduledDeviceHealthExtension on ScheduledDeviceHealth {
  ScheduledDeviceHealth copyWith({String? customScheduleTime}) {
    return ScheduledDeviceHealth(
        customScheduleTime: customScheduleTime ?? this.customScheduleTime);
  }
}

@JsonSerializable(explicitToJson: true)
class DataUsage {
  DataUsage({
    this.reportID,
    this.queryParams,
    this.emailID,
    this.groupName,
    this.timeZone,
    this.reportType,
  });

  factory DataUsage.fromJson(Map<String, dynamic> json) =>
      _$DataUsageFromJson(json);

  @JsonKey(name: 'ReportID')
  final int? reportID;
  @JsonKey(name: 'QueryParams')
  final ReportParamsDataUsageObject? queryParams;
  @JsonKey(name: 'EmailID')
  final String? emailID;
  @JsonKey(name: 'GroupName')
  final String? groupName;
  @JsonKey(name: 'TimeZone')
  final String? timeZone;
  @JsonKey(name: 'ReportType')
  final String? reportType;
  static const fromJsonFactory = _$DataUsageFromJson;
  static const toJsonFactory = _$DataUsageToJson;
  Map<String, dynamic> toJson() => _$DataUsageToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DataUsage &&
            (identical(other.reportID, reportID) ||
                const DeepCollectionEquality()
                    .equals(other.reportID, reportID)) &&
            (identical(other.queryParams, queryParams) ||
                const DeepCollectionEquality()
                    .equals(other.queryParams, queryParams)) &&
            (identical(other.emailID, emailID) ||
                const DeepCollectionEquality()
                    .equals(other.emailID, emailID)) &&
            (identical(other.groupName, groupName) ||
                const DeepCollectionEquality()
                    .equals(other.groupName, groupName)) &&
            (identical(other.timeZone, timeZone) ||
                const DeepCollectionEquality()
                    .equals(other.timeZone, timeZone)) &&
            (identical(other.reportType, reportType) ||
                const DeepCollectionEquality()
                    .equals(other.reportType, reportType)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(reportID) ^
      const DeepCollectionEquality().hash(queryParams) ^
      const DeepCollectionEquality().hash(emailID) ^
      const DeepCollectionEquality().hash(groupName) ^
      const DeepCollectionEquality().hash(timeZone) ^
      const DeepCollectionEquality().hash(reportType) ^
      runtimeType.hashCode;
}

extension $DataUsageExtension on DataUsage {
  DataUsage copyWith(
      {int? reportID,
      ReportParamsDataUsageObject? queryParams,
      String? emailID,
      String? groupName,
      String? timeZone,
      String? reportType}) {
    return DataUsage(
        reportID: reportID ?? this.reportID,
        queryParams: queryParams ?? this.queryParams,
        emailID: emailID ?? this.emailID,
        groupName: groupName ?? this.groupName,
        timeZone: timeZone ?? this.timeZone,
        reportType: reportType ?? this.reportType);
  }
}

@JsonSerializable(explicitToJson: true)
class ReportParamsDataUsageObject {
  ReportParamsDataUsageObject({
    this.groupid,
    this.groupName,
    this.tagid,
  });

  factory ReportParamsDataUsageObject.fromJson(Map<String, dynamic> json) =>
      _$ReportParamsDataUsageObjectFromJson(json);

  @JsonKey(name: 'groupid')
  final String? groupid;
  @JsonKey(name: 'GroupName')
  final String? groupName;
  @JsonKey(name: 'tagid')
  final String? tagid;
  static const fromJsonFactory = _$ReportParamsDataUsageObjectFromJson;
  static const toJsonFactory = _$ReportParamsDataUsageObjectToJson;
  Map<String, dynamic> toJson() => _$ReportParamsDataUsageObjectToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ReportParamsDataUsageObject &&
            (identical(other.groupid, groupid) ||
                const DeepCollectionEquality()
                    .equals(other.groupid, groupid)) &&
            (identical(other.groupName, groupName) ||
                const DeepCollectionEquality()
                    .equals(other.groupName, groupName)) &&
            (identical(other.tagid, tagid) ||
                const DeepCollectionEquality().equals(other.tagid, tagid)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(groupid) ^
      const DeepCollectionEquality().hash(groupName) ^
      const DeepCollectionEquality().hash(tagid) ^
      runtimeType.hashCode;
}

extension $ReportParamsDataUsageObjectExtension on ReportParamsDataUsageObject {
  ReportParamsDataUsageObject copyWith(
      {String? groupid, String? groupName, String? tagid}) {
    return ReportParamsDataUsageObject(
        groupid: groupid ?? this.groupid,
        groupName: groupName ?? this.groupName,
        tagid: tagid ?? this.tagid);
  }
}

@JsonSerializable(explicitToJson: true)
class OnDemandDataUsage {
  OnDemandDataUsage();

  factory OnDemandDataUsage.fromJson(Map<String, dynamic> json) =>
      _$OnDemandDataUsageFromJson(json);

  static const fromJsonFactory = _$OnDemandDataUsageFromJson;
  static const toJsonFactory = _$OnDemandDataUsageToJson;
  Map<String, dynamic> toJson() => _$OnDemandDataUsageToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode => runtimeType.hashCode;
}

@JsonSerializable(explicitToJson: true)
class ScheduledDataUsage {
  ScheduledDataUsage({
    this.customScheduleTime,
  });

  factory ScheduledDataUsage.fromJson(Map<String, dynamic> json) =>
      _$ScheduledDataUsageFromJson(json);

  @JsonKey(name: 'CustomScheduleTime')
  final String? customScheduleTime;
  static const fromJsonFactory = _$ScheduledDataUsageFromJson;
  static const toJsonFactory = _$ScheduledDataUsageToJson;
  Map<String, dynamic> toJson() => _$ScheduledDataUsageToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ScheduledDataUsage &&
            (identical(other.customScheduleTime, customScheduleTime) ||
                const DeepCollectionEquality()
                    .equals(other.customScheduleTime, customScheduleTime)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(customScheduleTime) ^
      runtimeType.hashCode;
}

extension $ScheduledDataUsageExtension on ScheduledDataUsage {
  ScheduledDataUsage copyWith({String? customScheduleTime}) {
    return ScheduledDataUsage(
        customScheduleTime: customScheduleTime ?? this.customScheduleTime);
  }
}

@JsonSerializable(explicitToJson: true)
class DataUsageLegacy {
  DataUsageLegacy({
    this.reportID,
    this.queryParams,
    this.emailID,
    this.groupName,
    this.timeZone,
    this.reportType,
  });

  factory DataUsageLegacy.fromJson(Map<String, dynamic> json) =>
      _$DataUsageLegacyFromJson(json);

  @JsonKey(name: 'ReportID')
  final int? reportID;
  @JsonKey(name: 'QueryParams')
  final ReportParamsDataUsageLegacyObject? queryParams;
  @JsonKey(name: 'EmailID')
  final String? emailID;
  @JsonKey(name: 'GroupName')
  final String? groupName;
  @JsonKey(name: 'TimeZone')
  final String? timeZone;
  @JsonKey(name: 'ReportType')
  final String? reportType;
  static const fromJsonFactory = _$DataUsageLegacyFromJson;
  static const toJsonFactory = _$DataUsageLegacyToJson;
  Map<String, dynamic> toJson() => _$DataUsageLegacyToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DataUsageLegacy &&
            (identical(other.reportID, reportID) ||
                const DeepCollectionEquality()
                    .equals(other.reportID, reportID)) &&
            (identical(other.queryParams, queryParams) ||
                const DeepCollectionEquality()
                    .equals(other.queryParams, queryParams)) &&
            (identical(other.emailID, emailID) ||
                const DeepCollectionEquality()
                    .equals(other.emailID, emailID)) &&
            (identical(other.groupName, groupName) ||
                const DeepCollectionEquality()
                    .equals(other.groupName, groupName)) &&
            (identical(other.timeZone, timeZone) ||
                const DeepCollectionEquality()
                    .equals(other.timeZone, timeZone)) &&
            (identical(other.reportType, reportType) ||
                const DeepCollectionEquality()
                    .equals(other.reportType, reportType)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(reportID) ^
      const DeepCollectionEquality().hash(queryParams) ^
      const DeepCollectionEquality().hash(emailID) ^
      const DeepCollectionEquality().hash(groupName) ^
      const DeepCollectionEquality().hash(timeZone) ^
      const DeepCollectionEquality().hash(reportType) ^
      runtimeType.hashCode;
}

extension $DataUsageLegacyExtension on DataUsageLegacy {
  DataUsageLegacy copyWith(
      {int? reportID,
      ReportParamsDataUsageLegacyObject? queryParams,
      String? emailID,
      String? groupName,
      String? timeZone,
      String? reportType}) {
    return DataUsageLegacy(
        reportID: reportID ?? this.reportID,
        queryParams: queryParams ?? this.queryParams,
        emailID: emailID ?? this.emailID,
        groupName: groupName ?? this.groupName,
        timeZone: timeZone ?? this.timeZone,
        reportType: reportType ?? this.reportType);
  }
}

@JsonSerializable(explicitToJson: true)
class ReportParamsDataUsageLegacyObject {
  ReportParamsDataUsageLegacyObject({
    this.groupid,
    this.groupName,
    this.dateStart,
    this.dateEnd,
  });

  factory ReportParamsDataUsageLegacyObject.fromJson(
          Map<String, dynamic> json) =>
      _$ReportParamsDataUsageLegacyObjectFromJson(json);

  @JsonKey(name: 'groupid')
  final String? groupid;
  @JsonKey(name: 'GroupName')
  final String? groupName;
  @JsonKey(name: 'date_start')
  final String? dateStart;
  @JsonKey(name: 'date_end')
  final String? dateEnd;
  static const fromJsonFactory = _$ReportParamsDataUsageLegacyObjectFromJson;
  static const toJsonFactory = _$ReportParamsDataUsageLegacyObjectToJson;
  Map<String, dynamic> toJson() =>
      _$ReportParamsDataUsageLegacyObjectToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ReportParamsDataUsageLegacyObject &&
            (identical(other.groupid, groupid) ||
                const DeepCollectionEquality()
                    .equals(other.groupid, groupid)) &&
            (identical(other.groupName, groupName) ||
                const DeepCollectionEquality()
                    .equals(other.groupName, groupName)) &&
            (identical(other.dateStart, dateStart) ||
                const DeepCollectionEquality()
                    .equals(other.dateStart, dateStart)) &&
            (identical(other.dateEnd, dateEnd) ||
                const DeepCollectionEquality().equals(other.dateEnd, dateEnd)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(groupid) ^
      const DeepCollectionEquality().hash(groupName) ^
      const DeepCollectionEquality().hash(dateStart) ^
      const DeepCollectionEquality().hash(dateEnd) ^
      runtimeType.hashCode;
}

extension $ReportParamsDataUsageLegacyObjectExtension
    on ReportParamsDataUsageLegacyObject {
  ReportParamsDataUsageLegacyObject copyWith(
      {String? groupid,
      String? groupName,
      String? dateStart,
      String? dateEnd}) {
    return ReportParamsDataUsageLegacyObject(
        groupid: groupid ?? this.groupid,
        groupName: groupName ?? this.groupName,
        dateStart: dateStart ?? this.dateStart,
        dateEnd: dateEnd ?? this.dateEnd);
  }
}

@JsonSerializable(explicitToJson: true)
class OnDemandDataUsageLegacy {
  OnDemandDataUsageLegacy();

  factory OnDemandDataUsageLegacy.fromJson(Map<String, dynamic> json) =>
      _$OnDemandDataUsageLegacyFromJson(json);

  static const fromJsonFactory = _$OnDemandDataUsageLegacyFromJson;
  static const toJsonFactory = _$OnDemandDataUsageLegacyToJson;
  Map<String, dynamic> toJson() => _$OnDemandDataUsageLegacyToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode => runtimeType.hashCode;
}

@JsonSerializable(explicitToJson: true)
class ScheduledDataUsageLegacy {
  ScheduledDataUsageLegacy({
    this.customScheduleTime,
  });

  factory ScheduledDataUsageLegacy.fromJson(Map<String, dynamic> json) =>
      _$ScheduledDataUsageLegacyFromJson(json);

  @JsonKey(name: 'CustomScheduleTime')
  final String? customScheduleTime;
  static const fromJsonFactory = _$ScheduledDataUsageLegacyFromJson;
  static const toJsonFactory = _$ScheduledDataUsageLegacyToJson;
  Map<String, dynamic> toJson() => _$ScheduledDataUsageLegacyToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ScheduledDataUsageLegacy &&
            (identical(other.customScheduleTime, customScheduleTime) ||
                const DeepCollectionEquality()
                    .equals(other.customScheduleTime, customScheduleTime)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(customScheduleTime) ^
      runtimeType.hashCode;
}

extension $ScheduledDataUsageLegacyExtension on ScheduledDataUsageLegacy {
  ScheduledDataUsageLegacy copyWith({String? customScheduleTime}) {
    return ScheduledDataUsageLegacy(
        customScheduleTime: customScheduleTime ?? this.customScheduleTime);
  }
}

@JsonSerializable(explicitToJson: true)
class DeviceConnected {
  DeviceConnected({
    this.reportID,
    this.queryParams,
    this.emailID,
    this.groupName,
    this.timeZone,
    this.reportType,
  });

  factory DeviceConnected.fromJson(Map<String, dynamic> json) =>
      _$DeviceConnectedFromJson(json);

  @JsonKey(name: 'ReportID')
  final int? reportID;
  @JsonKey(name: 'QueryParams')
  final ReportParamsDeviceConnectedObject? queryParams;
  @JsonKey(name: 'EmailID')
  final String? emailID;
  @JsonKey(name: 'GroupName')
  final String? groupName;
  @JsonKey(name: 'TimeZone')
  final String? timeZone;
  @JsonKey(name: 'ReportType')
  final String? reportType;
  static const fromJsonFactory = _$DeviceConnectedFromJson;
  static const toJsonFactory = _$DeviceConnectedToJson;
  Map<String, dynamic> toJson() => _$DeviceConnectedToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeviceConnected &&
            (identical(other.reportID, reportID) ||
                const DeepCollectionEquality()
                    .equals(other.reportID, reportID)) &&
            (identical(other.queryParams, queryParams) ||
                const DeepCollectionEquality()
                    .equals(other.queryParams, queryParams)) &&
            (identical(other.emailID, emailID) ||
                const DeepCollectionEquality()
                    .equals(other.emailID, emailID)) &&
            (identical(other.groupName, groupName) ||
                const DeepCollectionEquality()
                    .equals(other.groupName, groupName)) &&
            (identical(other.timeZone, timeZone) ||
                const DeepCollectionEquality()
                    .equals(other.timeZone, timeZone)) &&
            (identical(other.reportType, reportType) ||
                const DeepCollectionEquality()
                    .equals(other.reportType, reportType)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(reportID) ^
      const DeepCollectionEquality().hash(queryParams) ^
      const DeepCollectionEquality().hash(emailID) ^
      const DeepCollectionEquality().hash(groupName) ^
      const DeepCollectionEquality().hash(timeZone) ^
      const DeepCollectionEquality().hash(reportType) ^
      runtimeType.hashCode;
}

extension $DeviceConnectedExtension on DeviceConnected {
  DeviceConnected copyWith(
      {int? reportID,
      ReportParamsDeviceConnectedObject? queryParams,
      String? emailID,
      String? groupName,
      String? timeZone,
      String? reportType}) {
    return DeviceConnected(
        reportID: reportID ?? this.reportID,
        queryParams: queryParams ?? this.queryParams,
        emailID: emailID ?? this.emailID,
        groupName: groupName ?? this.groupName,
        timeZone: timeZone ?? this.timeZone,
        reportType: reportType ?? this.reportType);
  }
}

@JsonSerializable(explicitToJson: true)
class ReportParamsDeviceConnectedObject {
  ReportParamsDeviceConnectedObject({
    this.groupid,
    this.groupName,
    this.dateStart,
    this.dateEnd,
  });

  factory ReportParamsDeviceConnectedObject.fromJson(
          Map<String, dynamic> json) =>
      _$ReportParamsDeviceConnectedObjectFromJson(json);

  @JsonKey(name: 'groupid')
  final String? groupid;
  @JsonKey(name: 'GroupName')
  final String? groupName;
  @JsonKey(name: 'date_start')
  final String? dateStart;
  @JsonKey(name: 'date_end')
  final String? dateEnd;
  static const fromJsonFactory = _$ReportParamsDeviceConnectedObjectFromJson;
  static const toJsonFactory = _$ReportParamsDeviceConnectedObjectToJson;
  Map<String, dynamic> toJson() =>
      _$ReportParamsDeviceConnectedObjectToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ReportParamsDeviceConnectedObject &&
            (identical(other.groupid, groupid) ||
                const DeepCollectionEquality()
                    .equals(other.groupid, groupid)) &&
            (identical(other.groupName, groupName) ||
                const DeepCollectionEquality()
                    .equals(other.groupName, groupName)) &&
            (identical(other.dateStart, dateStart) ||
                const DeepCollectionEquality()
                    .equals(other.dateStart, dateStart)) &&
            (identical(other.dateEnd, dateEnd) ||
                const DeepCollectionEquality().equals(other.dateEnd, dateEnd)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(groupid) ^
      const DeepCollectionEquality().hash(groupName) ^
      const DeepCollectionEquality().hash(dateStart) ^
      const DeepCollectionEquality().hash(dateEnd) ^
      runtimeType.hashCode;
}

extension $ReportParamsDeviceConnectedObjectExtension
    on ReportParamsDeviceConnectedObject {
  ReportParamsDeviceConnectedObject copyWith(
      {String? groupid,
      String? groupName,
      String? dateStart,
      String? dateEnd}) {
    return ReportParamsDeviceConnectedObject(
        groupid: groupid ?? this.groupid,
        groupName: groupName ?? this.groupName,
        dateStart: dateStart ?? this.dateStart,
        dateEnd: dateEnd ?? this.dateEnd);
  }
}

@JsonSerializable(explicitToJson: true)
class OnDemandDeviceConnected {
  OnDemandDeviceConnected();

  factory OnDemandDeviceConnected.fromJson(Map<String, dynamic> json) =>
      _$OnDemandDeviceConnectedFromJson(json);

  static const fromJsonFactory = _$OnDemandDeviceConnectedFromJson;
  static const toJsonFactory = _$OnDemandDeviceConnectedToJson;
  Map<String, dynamic> toJson() => _$OnDemandDeviceConnectedToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode => runtimeType.hashCode;
}

@JsonSerializable(explicitToJson: true)
class ScheduledDeviceConnected {
  ScheduledDeviceConnected({
    this.customScheduleTime,
  });

  factory ScheduledDeviceConnected.fromJson(Map<String, dynamic> json) =>
      _$ScheduledDeviceConnectedFromJson(json);

  @JsonKey(name: 'CustomScheduleTime')
  final String? customScheduleTime;
  static const fromJsonFactory = _$ScheduledDeviceConnectedFromJson;
  static const toJsonFactory = _$ScheduledDeviceConnectedToJson;
  Map<String, dynamic> toJson() => _$ScheduledDeviceConnectedToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ScheduledDeviceConnected &&
            (identical(other.customScheduleTime, customScheduleTime) ||
                const DeepCollectionEquality()
                    .equals(other.customScheduleTime, customScheduleTime)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(customScheduleTime) ^
      runtimeType.hashCode;
}

extension $ScheduledDeviceConnectedExtension on ScheduledDeviceConnected {
  ScheduledDeviceConnected copyWith({String? customScheduleTime}) {
    return ScheduledDeviceConnected(
        customScheduleTime: customScheduleTime ?? this.customScheduleTime);
  }
}

@JsonSerializable(explicitToJson: true)
class ComplianceReport {
  ComplianceReport({
    this.reportID,
    this.queryParams,
    this.emailID,
    this.groupName,
    this.timeZone,
    this.reportType,
  });

  factory ComplianceReport.fromJson(Map<String, dynamic> json) =>
      _$ComplianceReportFromJson(json);

  @JsonKey(name: 'ReportID')
  final int? reportID;
  @JsonKey(name: 'QueryParams')
  final ReportParamsComplianceReportObject? queryParams;
  @JsonKey(name: 'EmailID')
  final String? emailID;
  @JsonKey(name: 'GroupName')
  final String? groupName;
  @JsonKey(name: 'TimeZone')
  final String? timeZone;
  @JsonKey(name: 'ReportType')
  final String? reportType;
  static const fromJsonFactory = _$ComplianceReportFromJson;
  static const toJsonFactory = _$ComplianceReportToJson;
  Map<String, dynamic> toJson() => _$ComplianceReportToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ComplianceReport &&
            (identical(other.reportID, reportID) ||
                const DeepCollectionEquality()
                    .equals(other.reportID, reportID)) &&
            (identical(other.queryParams, queryParams) ||
                const DeepCollectionEquality()
                    .equals(other.queryParams, queryParams)) &&
            (identical(other.emailID, emailID) ||
                const DeepCollectionEquality()
                    .equals(other.emailID, emailID)) &&
            (identical(other.groupName, groupName) ||
                const DeepCollectionEquality()
                    .equals(other.groupName, groupName)) &&
            (identical(other.timeZone, timeZone) ||
                const DeepCollectionEquality()
                    .equals(other.timeZone, timeZone)) &&
            (identical(other.reportType, reportType) ||
                const DeepCollectionEquality()
                    .equals(other.reportType, reportType)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(reportID) ^
      const DeepCollectionEquality().hash(queryParams) ^
      const DeepCollectionEquality().hash(emailID) ^
      const DeepCollectionEquality().hash(groupName) ^
      const DeepCollectionEquality().hash(timeZone) ^
      const DeepCollectionEquality().hash(reportType) ^
      runtimeType.hashCode;
}

extension $ComplianceReportExtension on ComplianceReport {
  ComplianceReport copyWith(
      {int? reportID,
      ReportParamsComplianceReportObject? queryParams,
      String? emailID,
      String? groupName,
      String? timeZone,
      String? reportType}) {
    return ComplianceReport(
        reportID: reportID ?? this.reportID,
        queryParams: queryParams ?? this.queryParams,
        emailID: emailID ?? this.emailID,
        groupName: groupName ?? this.groupName,
        timeZone: timeZone ?? this.timeZone,
        reportType: reportType ?? this.reportType);
  }
}

@JsonSerializable(explicitToJson: true)
class ReportParamsComplianceReportObject {
  ReportParamsComplianceReportObject({
    this.groupid,
    this.groupName,
    this.showAllCompliance,
    this.oSVersion,
    this.jailbrokenOrRooted,
    this.onlineDeviceConnectivity,
    this.sIMChange,
    this.passwordPolicy,
  });

  factory ReportParamsComplianceReportObject.fromJson(
          Map<String, dynamic> json) =>
      _$ReportParamsComplianceReportObjectFromJson(json);

  @JsonKey(name: 'groupid')
  final String? groupid;
  @JsonKey(name: 'GroupName')
  final String? groupName;
  @JsonKey(name: 'ShowAllCompliance')
  final bool? showAllCompliance;
  @JsonKey(name: 'OSVersion')
  final bool? oSVersion;
  @JsonKey(name: 'JailbrokenOrRooted')
  final bool? jailbrokenOrRooted;
  @JsonKey(name: 'OnlineDeviceConnectivity')
  final bool? onlineDeviceConnectivity;
  @JsonKey(name: 'SIMChange')
  final bool? sIMChange;
  @JsonKey(name: 'PasswordPolicy')
  final String? passwordPolicy;
  static const fromJsonFactory = _$ReportParamsComplianceReportObjectFromJson;
  static const toJsonFactory = _$ReportParamsComplianceReportObjectToJson;
  Map<String, dynamic> toJson() =>
      _$ReportParamsComplianceReportObjectToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ReportParamsComplianceReportObject &&
            (identical(other.groupid, groupid) ||
                const DeepCollectionEquality()
                    .equals(other.groupid, groupid)) &&
            (identical(other.groupName, groupName) ||
                const DeepCollectionEquality()
                    .equals(other.groupName, groupName)) &&
            (identical(other.showAllCompliance, showAllCompliance) ||
                const DeepCollectionEquality()
                    .equals(other.showAllCompliance, showAllCompliance)) &&
            (identical(other.oSVersion, oSVersion) ||
                const DeepCollectionEquality()
                    .equals(other.oSVersion, oSVersion)) &&
            (identical(other.jailbrokenOrRooted, jailbrokenOrRooted) ||
                const DeepCollectionEquality()
                    .equals(other.jailbrokenOrRooted, jailbrokenOrRooted)) &&
            (identical(
                    other.onlineDeviceConnectivity, onlineDeviceConnectivity) ||
                const DeepCollectionEquality().equals(
                    other.onlineDeviceConnectivity,
                    onlineDeviceConnectivity)) &&
            (identical(other.sIMChange, sIMChange) ||
                const DeepCollectionEquality()
                    .equals(other.sIMChange, sIMChange)) &&
            (identical(other.passwordPolicy, passwordPolicy) ||
                const DeepCollectionEquality()
                    .equals(other.passwordPolicy, passwordPolicy)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(groupid) ^
      const DeepCollectionEquality().hash(groupName) ^
      const DeepCollectionEquality().hash(showAllCompliance) ^
      const DeepCollectionEquality().hash(oSVersion) ^
      const DeepCollectionEquality().hash(jailbrokenOrRooted) ^
      const DeepCollectionEquality().hash(onlineDeviceConnectivity) ^
      const DeepCollectionEquality().hash(sIMChange) ^
      const DeepCollectionEquality().hash(passwordPolicy) ^
      runtimeType.hashCode;
}

extension $ReportParamsComplianceReportObjectExtension
    on ReportParamsComplianceReportObject {
  ReportParamsComplianceReportObject copyWith(
      {String? groupid,
      String? groupName,
      bool? showAllCompliance,
      bool? oSVersion,
      bool? jailbrokenOrRooted,
      bool? onlineDeviceConnectivity,
      bool? sIMChange,
      String? passwordPolicy}) {
    return ReportParamsComplianceReportObject(
        groupid: groupid ?? this.groupid,
        groupName: groupName ?? this.groupName,
        showAllCompliance: showAllCompliance ?? this.showAllCompliance,
        oSVersion: oSVersion ?? this.oSVersion,
        jailbrokenOrRooted: jailbrokenOrRooted ?? this.jailbrokenOrRooted,
        onlineDeviceConnectivity:
            onlineDeviceConnectivity ?? this.onlineDeviceConnectivity,
        sIMChange: sIMChange ?? this.sIMChange,
        passwordPolicy: passwordPolicy ?? this.passwordPolicy);
  }
}

@JsonSerializable(explicitToJson: true)
class OnDemandComplianceReport {
  OnDemandComplianceReport();

  factory OnDemandComplianceReport.fromJson(Map<String, dynamic> json) =>
      _$OnDemandComplianceReportFromJson(json);

  static const fromJsonFactory = _$OnDemandComplianceReportFromJson;
  static const toJsonFactory = _$OnDemandComplianceReportToJson;
  Map<String, dynamic> toJson() => _$OnDemandComplianceReportToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode => runtimeType.hashCode;
}

@JsonSerializable(explicitToJson: true)
class ScheduledComplianceReport {
  ScheduledComplianceReport({
    this.customScheduleTime,
  });

  factory ScheduledComplianceReport.fromJson(Map<String, dynamic> json) =>
      _$ScheduledComplianceReportFromJson(json);

  @JsonKey(name: 'CustomScheduleTime')
  final String? customScheduleTime;
  static const fromJsonFactory = _$ScheduledComplianceReportFromJson;
  static const toJsonFactory = _$ScheduledComplianceReportToJson;
  Map<String, dynamic> toJson() => _$ScheduledComplianceReportToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ScheduledComplianceReport &&
            (identical(other.customScheduleTime, customScheduleTime) ||
                const DeepCollectionEquality()
                    .equals(other.customScheduleTime, customScheduleTime)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(customScheduleTime) ^
      runtimeType.hashCode;
}

extension $ScheduledComplianceReportExtension on ScheduledComplianceReport {
  ScheduledComplianceReport copyWith({String? customScheduleTime}) {
    return ScheduledComplianceReport(
        customScheduleTime: customScheduleTime ?? this.customScheduleTime);
  }
}

@JsonSerializable(explicitToJson: true)
class AppVersion {
  AppVersion({
    this.reportID,
    this.queryParams,
    this.emailID,
    this.groupName,
    this.timeZone,
    this.reportType,
  });

  factory AppVersion.fromJson(Map<String, dynamic> json) =>
      _$AppVersionFromJson(json);

  @JsonKey(name: 'ReportID')
  final int? reportID;
  @JsonKey(name: 'QueryParams')
  final ReportParamsAppVersionObject? queryParams;
  @JsonKey(name: 'EmailID')
  final String? emailID;
  @JsonKey(name: 'GroupName')
  final String? groupName;
  @JsonKey(name: 'TimeZone')
  final String? timeZone;
  @JsonKey(name: 'ReportType')
  final String? reportType;
  static const fromJsonFactory = _$AppVersionFromJson;
  static const toJsonFactory = _$AppVersionToJson;
  Map<String, dynamic> toJson() => _$AppVersionToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AppVersion &&
            (identical(other.reportID, reportID) ||
                const DeepCollectionEquality()
                    .equals(other.reportID, reportID)) &&
            (identical(other.queryParams, queryParams) ||
                const DeepCollectionEquality()
                    .equals(other.queryParams, queryParams)) &&
            (identical(other.emailID, emailID) ||
                const DeepCollectionEquality()
                    .equals(other.emailID, emailID)) &&
            (identical(other.groupName, groupName) ||
                const DeepCollectionEquality()
                    .equals(other.groupName, groupName)) &&
            (identical(other.timeZone, timeZone) ||
                const DeepCollectionEquality()
                    .equals(other.timeZone, timeZone)) &&
            (identical(other.reportType, reportType) ||
                const DeepCollectionEquality()
                    .equals(other.reportType, reportType)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(reportID) ^
      const DeepCollectionEquality().hash(queryParams) ^
      const DeepCollectionEquality().hash(emailID) ^
      const DeepCollectionEquality().hash(groupName) ^
      const DeepCollectionEquality().hash(timeZone) ^
      const DeepCollectionEquality().hash(reportType) ^
      runtimeType.hashCode;
}

extension $AppVersionExtension on AppVersion {
  AppVersion copyWith(
      {int? reportID,
      ReportParamsAppVersionObject? queryParams,
      String? emailID,
      String? groupName,
      String? timeZone,
      String? reportType}) {
    return AppVersion(
        reportID: reportID ?? this.reportID,
        queryParams: queryParams ?? this.queryParams,
        emailID: emailID ?? this.emailID,
        groupName: groupName ?? this.groupName,
        timeZone: timeZone ?? this.timeZone,
        reportType: reportType ?? this.reportType);
  }
}

@JsonSerializable(explicitToJson: true)
class ReportParamsAppVersionObject {
  ReportParamsAppVersionObject({
    this.groupid,
    this.groupName,
    this.applicationType,
    this.applicationname,
  });

  factory ReportParamsAppVersionObject.fromJson(Map<String, dynamic> json) =>
      _$ReportParamsAppVersionObjectFromJson(json);

  @JsonKey(name: 'groupid')
  final String? groupid;
  @JsonKey(name: 'GroupName')
  final String? groupName;
  @JsonKey(name: 'ApplicationType')
  final bool? applicationType;
  @JsonKey(name: 'applicationname')
  final bool? applicationname;
  static const fromJsonFactory = _$ReportParamsAppVersionObjectFromJson;
  static const toJsonFactory = _$ReportParamsAppVersionObjectToJson;
  Map<String, dynamic> toJson() => _$ReportParamsAppVersionObjectToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ReportParamsAppVersionObject &&
            (identical(other.groupid, groupid) ||
                const DeepCollectionEquality()
                    .equals(other.groupid, groupid)) &&
            (identical(other.groupName, groupName) ||
                const DeepCollectionEquality()
                    .equals(other.groupName, groupName)) &&
            (identical(other.applicationType, applicationType) ||
                const DeepCollectionEquality()
                    .equals(other.applicationType, applicationType)) &&
            (identical(other.applicationname, applicationname) ||
                const DeepCollectionEquality()
                    .equals(other.applicationname, applicationname)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(groupid) ^
      const DeepCollectionEquality().hash(groupName) ^
      const DeepCollectionEquality().hash(applicationType) ^
      const DeepCollectionEquality().hash(applicationname) ^
      runtimeType.hashCode;
}

extension $ReportParamsAppVersionObjectExtension
    on ReportParamsAppVersionObject {
  ReportParamsAppVersionObject copyWith(
      {String? groupid,
      String? groupName,
      bool? applicationType,
      bool? applicationname}) {
    return ReportParamsAppVersionObject(
        groupid: groupid ?? this.groupid,
        groupName: groupName ?? this.groupName,
        applicationType: applicationType ?? this.applicationType,
        applicationname: applicationname ?? this.applicationname);
  }
}

@JsonSerializable(explicitToJson: true)
class OnDemandAppVersion {
  OnDemandAppVersion();

  factory OnDemandAppVersion.fromJson(Map<String, dynamic> json) =>
      _$OnDemandAppVersionFromJson(json);

  static const fromJsonFactory = _$OnDemandAppVersionFromJson;
  static const toJsonFactory = _$OnDemandAppVersionToJson;
  Map<String, dynamic> toJson() => _$OnDemandAppVersionToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode => runtimeType.hashCode;
}

@JsonSerializable(explicitToJson: true)
class ScheduledAppVersion {
  ScheduledAppVersion({
    this.customScheduleTime,
  });

  factory ScheduledAppVersion.fromJson(Map<String, dynamic> json) =>
      _$ScheduledAppVersionFromJson(json);

  @JsonKey(name: 'CustomScheduleTime')
  final String? customScheduleTime;
  static const fromJsonFactory = _$ScheduledAppVersionFromJson;
  static const toJsonFactory = _$ScheduledAppVersionToJson;
  Map<String, dynamic> toJson() => _$ScheduledAppVersionToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ScheduledAppVersion &&
            (identical(other.customScheduleTime, customScheduleTime) ||
                const DeepCollectionEquality()
                    .equals(other.customScheduleTime, customScheduleTime)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(customScheduleTime) ^
      runtimeType.hashCode;
}

extension $ScheduledAppVersionExtension on ScheduledAppVersion {
  ScheduledAppVersion copyWith({String? customScheduleTime}) {
    return ScheduledAppVersion(
        customScheduleTime: customScheduleTime ?? this.customScheduleTime);
  }
}

@JsonSerializable(explicitToJson: true)
class LocationModel {
  LocationModel({
    this.deviceId,
    this.location,
  });

  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);

  @JsonKey(name: 'DeviceId')
  final String? deviceId;
  @JsonKey(name: 'Location', defaultValue: <LocationModel$Location>[])
  final List<LocationModel$Location>? location;
  static const fromJsonFactory = _$LocationModelFromJson;
  static const toJsonFactory = _$LocationModelToJson;
  Map<String, dynamic> toJson() => _$LocationModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LocationModel &&
            (identical(other.deviceId, deviceId) ||
                const DeepCollectionEquality()
                    .equals(other.deviceId, deviceId)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(deviceId) ^
      const DeepCollectionEquality().hash(location) ^
      runtimeType.hashCode;
}

extension $LocationModelExtension on LocationModel {
  LocationModel copyWith(
      {String? deviceId, List<LocationModel$Location>? location}) {
    return LocationModel(
        deviceId: deviceId ?? this.deviceId,
        location: location ?? this.location);
  }
}

@JsonSerializable(explicitToJson: true)
class AllMessageModel {
  AllMessageModel({
    this.total,
    this.rows,
  });

  factory AllMessageModel.fromJson(Map<String, dynamic> json) =>
      _$AllMessageModelFromJson(json);

  @JsonKey(name: 'total')
  final String? total;
  @JsonKey(name: 'rows', defaultValue: <AllMessageModel$Rows>[])
  final List<AllMessageModel$Rows>? rows;
  static const fromJsonFactory = _$AllMessageModelFromJson;
  static const toJsonFactory = _$AllMessageModelToJson;
  Map<String, dynamic> toJson() => _$AllMessageModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AllMessageModel &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
            (identical(other.rows, rows) ||
                const DeepCollectionEquality().equals(other.rows, rows)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(rows) ^
      runtimeType.hashCode;
}

extension $AllMessageModelExtension on AllMessageModel {
  AllMessageModel copyWith({String? total, List<AllMessageModel$Rows>? rows}) {
    return AllMessageModel(total: total ?? this.total, rows: rows ?? this.rows);
  }
}

@JsonSerializable(explicitToJson: true)
class MessageModel {
  MessageModel({
    this.messageId,
    this.deviceId,
    this.deviceName,
    this.subject,
    this.timeStamp,
    this.status,
    this.platformType,
  });

  factory MessageModel.fromJson(Map<String, dynamic> json) =>
      _$MessageModelFromJson(json);

  @JsonKey(name: 'MessageId')
  final String? messageId;
  @JsonKey(name: 'DeviceId')
  final String? deviceId;
  @JsonKey(name: 'DeviceName')
  final String? deviceName;
  @JsonKey(name: 'Subject')
  final String? subject;
  @JsonKey(name: 'TimeStamp')
  final String? timeStamp;
  @JsonKey(name: 'Status')
  final String? status;
  @JsonKey(name: 'PlatformType')
  final String? platformType;
  static const fromJsonFactory = _$MessageModelFromJson;
  static const toJsonFactory = _$MessageModelToJson;
  Map<String, dynamic> toJson() => _$MessageModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MessageModel &&
            (identical(other.messageId, messageId) ||
                const DeepCollectionEquality()
                    .equals(other.messageId, messageId)) &&
            (identical(other.deviceId, deviceId) ||
                const DeepCollectionEquality()
                    .equals(other.deviceId, deviceId)) &&
            (identical(other.deviceName, deviceName) ||
                const DeepCollectionEquality()
                    .equals(other.deviceName, deviceName)) &&
            (identical(other.subject, subject) ||
                const DeepCollectionEquality()
                    .equals(other.subject, subject)) &&
            (identical(other.timeStamp, timeStamp) ||
                const DeepCollectionEquality()
                    .equals(other.timeStamp, timeStamp)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.platformType, platformType) ||
                const DeepCollectionEquality()
                    .equals(other.platformType, platformType)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(messageId) ^
      const DeepCollectionEquality().hash(deviceId) ^
      const DeepCollectionEquality().hash(deviceName) ^
      const DeepCollectionEquality().hash(subject) ^
      const DeepCollectionEquality().hash(timeStamp) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(platformType) ^
      runtimeType.hashCode;
}

extension $MessageModelExtension on MessageModel {
  MessageModel copyWith(
      {String? messageId,
      String? deviceId,
      String? deviceName,
      String? subject,
      String? timeStamp,
      String? status,
      String? platformType}) {
    return MessageModel(
        messageId: messageId ?? this.messageId,
        deviceId: deviceId ?? this.deviceId,
        deviceName: deviceName ?? this.deviceName,
        subject: subject ?? this.subject,
        timeStamp: timeStamp ?? this.timeStamp,
        status: status ?? this.status,
        platformType: platformType ?? this.platformType);
  }
}

@JsonSerializable(explicitToJson: true)
class MessageIdModel {
  MessageIdModel({
    this.subject,
    this.body,
    this.date,
    this.time,
    this.sentTimeOnDevice,
    this.sentBy,
    this.deviceID,
    this.status,
  });

  factory MessageIdModel.fromJson(Map<String, dynamic> json) =>
      _$MessageIdModelFromJson(json);

  @JsonKey(name: 'Subject')
  final String? subject;
  @JsonKey(name: 'Body')
  final String? body;
  @JsonKey(name: 'Date')
  final String? date;
  @JsonKey(name: 'Time')
  final String? time;
  @JsonKey(name: 'SentTimeOnDevice')
  final String? sentTimeOnDevice;
  @JsonKey(name: 'SentBy')
  final String? sentBy;
  @JsonKey(name: 'DeviceID')
  final String? deviceID;
  @JsonKey(name: 'Status')
  final String? status;
  static const fromJsonFactory = _$MessageIdModelFromJson;
  static const toJsonFactory = _$MessageIdModelToJson;
  Map<String, dynamic> toJson() => _$MessageIdModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MessageIdModel &&
            (identical(other.subject, subject) ||
                const DeepCollectionEquality()
                    .equals(other.subject, subject)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)) &&
            (identical(other.sentTimeOnDevice, sentTimeOnDevice) ||
                const DeepCollectionEquality()
                    .equals(other.sentTimeOnDevice, sentTimeOnDevice)) &&
            (identical(other.sentBy, sentBy) ||
                const DeepCollectionEquality().equals(other.sentBy, sentBy)) &&
            (identical(other.deviceID, deviceID) ||
                const DeepCollectionEquality()
                    .equals(other.deviceID, deviceID)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(subject) ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(time) ^
      const DeepCollectionEquality().hash(sentTimeOnDevice) ^
      const DeepCollectionEquality().hash(sentBy) ^
      const DeepCollectionEquality().hash(deviceID) ^
      const DeepCollectionEquality().hash(status) ^
      runtimeType.hashCode;
}

extension $MessageIdModelExtension on MessageIdModel {
  MessageIdModel copyWith(
      {String? subject,
      String? body,
      String? date,
      String? time,
      String? sentTimeOnDevice,
      String? sentBy,
      String? deviceID,
      String? status}) {
    return MessageIdModel(
        subject: subject ?? this.subject,
        body: body ?? this.body,
        date: date ?? this.date,
        time: time ?? this.time,
        sentTimeOnDevice: sentTimeOnDevice ?? this.sentTimeOnDevice,
        sentBy: sentBy ?? this.sentBy,
        deviceID: deviceID ?? this.deviceID,
        status: status ?? this.status);
  }
}

@JsonSerializable(explicitToJson: true)
class Job {
  Job({
    required this.deviceID,
  });

  factory Job.fromJson(Map<String, dynamic> json) => _$JobFromJson(json);

  @JsonKey(name: 'DeviceID')
  final String deviceID;
  static const fromJsonFactory = _$JobFromJson;
  static const toJsonFactory = _$JobToJson;
  Map<String, dynamic> toJson() => _$JobToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Job &&
            (identical(other.deviceID, deviceID) ||
                const DeepCollectionEquality()
                    .equals(other.deviceID, deviceID)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(deviceID) ^ runtimeType.hashCode;
}

extension $JobExtension on Job {
  Job copyWith({String? deviceID}) {
    return Job(deviceID: deviceID ?? this.deviceID);
  }
}

@JsonSerializable(explicitToJson: true)
class RefreshDevice {
  RefreshDevice({
    this.jobType,
    this.deviceID,
  });

  factory RefreshDevice.fromJson(Map<String, dynamic> json) =>
      _$RefreshDeviceFromJson(json);

  @JsonKey(
      name: 'JobType',
      toJson: refreshDeviceJobTypeToJson,
      fromJson: refreshDeviceJobTypeFromJson)
  final enums.RefreshDeviceJobType? jobType;
  @JsonKey(name: 'DeviceID')
  final String? deviceID;
  static const fromJsonFactory = _$RefreshDeviceFromJson;
  static const toJsonFactory = _$RefreshDeviceToJson;
  Map<String, dynamic> toJson() => _$RefreshDeviceToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RefreshDevice &&
            (identical(other.jobType, jobType) ||
                const DeepCollectionEquality()
                    .equals(other.jobType, jobType)) &&
            (identical(other.deviceID, deviceID) ||
                const DeepCollectionEquality()
                    .equals(other.deviceID, deviceID)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobType) ^
      const DeepCollectionEquality().hash(deviceID) ^
      runtimeType.hashCode;
}

extension $RefreshDeviceExtension on RefreshDevice {
  RefreshDevice copyWith(
      {enums.RefreshDeviceJobType? jobType, String? deviceID}) {
    return RefreshDevice(
        jobType: jobType ?? this.jobType, deviceID: deviceID ?? this.deviceID);
  }
}

@JsonSerializable(explicitToJson: true)
class GetDeviceApps {
  GetDeviceApps({
    this.jobType,
    this.deviceID,
  });

  factory GetDeviceApps.fromJson(Map<String, dynamic> json) =>
      _$GetDeviceAppsFromJson(json);

  @JsonKey(
      name: 'JobType',
      toJson: getDeviceAppsJobTypeToJson,
      fromJson: getDeviceAppsJobTypeFromJson)
  final enums.GetDeviceAppsJobType? jobType;
  @JsonKey(name: 'DeviceID')
  final String? deviceID;
  static const fromJsonFactory = _$GetDeviceAppsFromJson;
  static const toJsonFactory = _$GetDeviceAppsToJson;
  Map<String, dynamic> toJson() => _$GetDeviceAppsToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetDeviceApps &&
            (identical(other.jobType, jobType) ||
                const DeepCollectionEquality()
                    .equals(other.jobType, jobType)) &&
            (identical(other.deviceID, deviceID) ||
                const DeepCollectionEquality()
                    .equals(other.deviceID, deviceID)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobType) ^
      const DeepCollectionEquality().hash(deviceID) ^
      runtimeType.hashCode;
}

extension $GetDeviceAppsExtension on GetDeviceApps {
  GetDeviceApps copyWith(
      {enums.GetDeviceAppsJobType? jobType, String? deviceID}) {
    return GetDeviceApps(
        jobType: jobType ?? this.jobType, deviceID: deviceID ?? this.deviceID);
  }
}

@JsonSerializable(explicitToJson: true)
class LockDevice {
  LockDevice({
    this.jobType,
    this.deviceID,
  });

  factory LockDevice.fromJson(Map<String, dynamic> json) =>
      _$LockDeviceFromJson(json);

  @JsonKey(
      name: 'JobType',
      toJson: lockDeviceJobTypeToJson,
      fromJson: lockDeviceJobTypeFromJson)
  final enums.LockDeviceJobType? jobType;
  @JsonKey(name: 'DeviceID')
  final String? deviceID;
  static const fromJsonFactory = _$LockDeviceFromJson;
  static const toJsonFactory = _$LockDeviceToJson;
  Map<String, dynamic> toJson() => _$LockDeviceToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LockDevice &&
            (identical(other.jobType, jobType) ||
                const DeepCollectionEquality()
                    .equals(other.jobType, jobType)) &&
            (identical(other.deviceID, deviceID) ||
                const DeepCollectionEquality()
                    .equals(other.deviceID, deviceID)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobType) ^
      const DeepCollectionEquality().hash(deviceID) ^
      runtimeType.hashCode;
}

extension $LockDeviceExtension on LockDevice {
  LockDevice copyWith({enums.LockDeviceJobType? jobType, String? deviceID}) {
    return LockDevice(
        jobType: jobType ?? this.jobType, deviceID: deviceID ?? this.deviceID);
  }
}

@JsonSerializable(explicitToJson: true)
class RebootDevice {
  RebootDevice({
    this.jobType,
    this.deviceID,
  });

  factory RebootDevice.fromJson(Map<String, dynamic> json) =>
      _$RebootDeviceFromJson(json);

  @JsonKey(
      name: 'JobType',
      toJson: rebootDeviceJobTypeToJson,
      fromJson: rebootDeviceJobTypeFromJson)
  final enums.RebootDeviceJobType? jobType;
  @JsonKey(name: 'DeviceID')
  final String? deviceID;
  static const fromJsonFactory = _$RebootDeviceFromJson;
  static const toJsonFactory = _$RebootDeviceToJson;
  Map<String, dynamic> toJson() => _$RebootDeviceToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RebootDevice &&
            (identical(other.jobType, jobType) ||
                const DeepCollectionEquality()
                    .equals(other.jobType, jobType)) &&
            (identical(other.deviceID, deviceID) ||
                const DeepCollectionEquality()
                    .equals(other.deviceID, deviceID)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobType) ^
      const DeepCollectionEquality().hash(deviceID) ^
      runtimeType.hashCode;
}

extension $RebootDeviceExtension on RebootDevice {
  RebootDevice copyWith(
      {enums.RebootDeviceJobType? jobType, String? deviceID}) {
    return RebootDevice(
        jobType: jobType ?? this.jobType, deviceID: deviceID ?? this.deviceID);
  }
}

@JsonSerializable(explicitToJson: true)
class Buzz {
  Buzz({
    this.jobType,
    this.payLoad,
    this.deviceID,
  });

  factory Buzz.fromJson(Map<String, dynamic> json) => _$BuzzFromJson(json);

  @JsonKey(
      name: 'JobType', toJson: buzzJobTypeToJson, fromJson: buzzJobTypeFromJson)
  final enums.BuzzJobType? jobType;
  @JsonKey(name: 'PayLoad')
  final String? payLoad;
  @JsonKey(name: 'DeviceID')
  final String? deviceID;
  static const fromJsonFactory = _$BuzzFromJson;
  static const toJsonFactory = _$BuzzToJson;
  Map<String, dynamic> toJson() => _$BuzzToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Buzz &&
            (identical(other.jobType, jobType) ||
                const DeepCollectionEquality()
                    .equals(other.jobType, jobType)) &&
            (identical(other.payLoad, payLoad) ||
                const DeepCollectionEquality()
                    .equals(other.payLoad, payLoad)) &&
            (identical(other.deviceID, deviceID) ||
                const DeepCollectionEquality()
                    .equals(other.deviceID, deviceID)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobType) ^
      const DeepCollectionEquality().hash(payLoad) ^
      const DeepCollectionEquality().hash(deviceID) ^
      runtimeType.hashCode;
}

extension $BuzzExtension on Buzz {
  Buzz copyWith(
      {enums.BuzzJobType? jobType, String? payLoad, String? deviceID}) {
    return Buzz(
        jobType: jobType ?? this.jobType,
        payLoad: payLoad ?? this.payLoad,
        deviceID: deviceID ?? this.deviceID);
  }
}

@JsonSerializable(explicitToJson: true)
class ChangePin {
  ChangePin({
    this.jobType,
    this.payLoad,
    this.deviceID,
  });

  factory ChangePin.fromJson(Map<String, dynamic> json) =>
      _$ChangePinFromJson(json);

  @JsonKey(
      name: 'JobType',
      toJson: changePinJobTypeToJson,
      fromJson: changePinJobTypeFromJson)
  final enums.ChangePinJobType? jobType;
  @JsonKey(name: 'PayLoad')
  final String? payLoad;
  @JsonKey(name: 'DeviceID')
  final String? deviceID;
  static const fromJsonFactory = _$ChangePinFromJson;
  static const toJsonFactory = _$ChangePinToJson;
  Map<String, dynamic> toJson() => _$ChangePinToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChangePin &&
            (identical(other.jobType, jobType) ||
                const DeepCollectionEquality()
                    .equals(other.jobType, jobType)) &&
            (identical(other.payLoad, payLoad) ||
                const DeepCollectionEquality()
                    .equals(other.payLoad, payLoad)) &&
            (identical(other.deviceID, deviceID) ||
                const DeepCollectionEquality()
                    .equals(other.deviceID, deviceID)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobType) ^
      const DeepCollectionEquality().hash(payLoad) ^
      const DeepCollectionEquality().hash(deviceID) ^
      runtimeType.hashCode;
}

extension $ChangePinExtension on ChangePin {
  ChangePin copyWith(
      {enums.ChangePinJobType? jobType, String? payLoad, String? deviceID}) {
    return ChangePin(
        jobType: jobType ?? this.jobType,
        payLoad: payLoad ?? this.payLoad,
        deviceID: deviceID ?? this.deviceID);
  }
}

@JsonSerializable(explicitToJson: true)
class CallTracking {
  CallTracking({
    this.jobType,
    this.payLoad,
    this.deviceID,
  });

  factory CallTracking.fromJson(Map<String, dynamic> json) =>
      _$CallTrackingFromJson(json);

  @JsonKey(
      name: 'JobType',
      toJson: callTrackingJobTypeToJson,
      fromJson: callTrackingJobTypeFromJson)
  final enums.CallTrackingJobType? jobType;
  @JsonKey(name: 'PayLoad')
  final String? payLoad;
  @JsonKey(name: 'DeviceID')
  final String? deviceID;
  static const fromJsonFactory = _$CallTrackingFromJson;
  static const toJsonFactory = _$CallTrackingToJson;
  Map<String, dynamic> toJson() => _$CallTrackingToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CallTracking &&
            (identical(other.jobType, jobType) ||
                const DeepCollectionEquality()
                    .equals(other.jobType, jobType)) &&
            (identical(other.payLoad, payLoad) ||
                const DeepCollectionEquality()
                    .equals(other.payLoad, payLoad)) &&
            (identical(other.deviceID, deviceID) ||
                const DeepCollectionEquality()
                    .equals(other.deviceID, deviceID)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobType) ^
      const DeepCollectionEquality().hash(payLoad) ^
      const DeepCollectionEquality().hash(deviceID) ^
      runtimeType.hashCode;
}

extension $CallTrackingExtension on CallTracking {
  CallTracking copyWith(
      {enums.CallTrackingJobType? jobType, String? payLoad, String? deviceID}) {
    return CallTracking(
        jobType: jobType ?? this.jobType,
        payLoad: payLoad ?? this.payLoad,
        deviceID: deviceID ?? this.deviceID);
  }
}

@JsonSerializable(explicitToJson: true)
class SMSTracking {
  SMSTracking({
    this.jobType,
    this.payLoad,
    this.deviceID,
  });

  factory SMSTracking.fromJson(Map<String, dynamic> json) =>
      _$SMSTrackingFromJson(json);

  @JsonKey(
      name: 'JobType',
      toJson: sMSTrackingJobTypeToJson,
      fromJson: sMSTrackingJobTypeFromJson)
  final enums.SMSTrackingJobType? jobType;
  @JsonKey(name: 'PayLoad')
  final String? payLoad;
  @JsonKey(name: 'DeviceID')
  final String? deviceID;
  static const fromJsonFactory = _$SMSTrackingFromJson;
  static const toJsonFactory = _$SMSTrackingToJson;
  Map<String, dynamic> toJson() => _$SMSTrackingToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SMSTracking &&
            (identical(other.jobType, jobType) ||
                const DeepCollectionEquality()
                    .equals(other.jobType, jobType)) &&
            (identical(other.payLoad, payLoad) ||
                const DeepCollectionEquality()
                    .equals(other.payLoad, payLoad)) &&
            (identical(other.deviceID, deviceID) ||
                const DeepCollectionEquality()
                    .equals(other.deviceID, deviceID)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobType) ^
      const DeepCollectionEquality().hash(payLoad) ^
      const DeepCollectionEquality().hash(deviceID) ^
      runtimeType.hashCode;
}

extension $SMSTrackingExtension on SMSTracking {
  SMSTracking copyWith(
      {enums.SMSTrackingJobType? jobType, String? payLoad, String? deviceID}) {
    return SMSTracking(
        jobType: jobType ?? this.jobType,
        payLoad: payLoad ?? this.payLoad,
        deviceID: deviceID ?? this.deviceID);
  }
}

@JsonSerializable(explicitToJson: true)
class Wipe {
  Wipe({
    this.jobType,
    this.deviceID,
  });

  factory Wipe.fromJson(Map<String, dynamic> json) => _$WipeFromJson(json);

  @JsonKey(
      name: 'JobType', toJson: wipeJobTypeToJson, fromJson: wipeJobTypeFromJson)
  final enums.WipeJobType? jobType;
  @JsonKey(name: 'DeviceID')
  final String? deviceID;
  static const fromJsonFactory = _$WipeFromJson;
  static const toJsonFactory = _$WipeToJson;
  Map<String, dynamic> toJson() => _$WipeToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Wipe &&
            (identical(other.jobType, jobType) ||
                const DeepCollectionEquality()
                    .equals(other.jobType, jobType)) &&
            (identical(other.deviceID, deviceID) ||
                const DeepCollectionEquality()
                    .equals(other.deviceID, deviceID)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobType) ^
      const DeepCollectionEquality().hash(deviceID) ^
      runtimeType.hashCode;
}

extension $WipeExtension on Wipe {
  Wipe copyWith({enums.WipeJobType? jobType, String? deviceID}) {
    return Wipe(
        jobType: jobType ?? this.jobType, deviceID: deviceID ?? this.deviceID);
  }
}

@JsonSerializable(explicitToJson: true)
class ChangeDeviceName {
  ChangeDeviceName({
    this.jobType,
    this.payLoad,
    this.deviceID,
  });

  factory ChangeDeviceName.fromJson(Map<String, dynamic> json) =>
      _$ChangeDeviceNameFromJson(json);

  @JsonKey(
      name: 'JobType',
      toJson: changeDeviceNameJobTypeToJson,
      fromJson: changeDeviceNameJobTypeFromJson)
  final enums.ChangeDeviceNameJobType? jobType;
  @JsonKey(name: 'PayLoad')
  final String? payLoad;
  @JsonKey(name: 'DeviceID')
  final String? deviceID;
  static const fromJsonFactory = _$ChangeDeviceNameFromJson;
  static const toJsonFactory = _$ChangeDeviceNameToJson;
  Map<String, dynamic> toJson() => _$ChangeDeviceNameToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChangeDeviceName &&
            (identical(other.jobType, jobType) ||
                const DeepCollectionEquality()
                    .equals(other.jobType, jobType)) &&
            (identical(other.payLoad, payLoad) ||
                const DeepCollectionEquality()
                    .equals(other.payLoad, payLoad)) &&
            (identical(other.deviceID, deviceID) ||
                const DeepCollectionEquality()
                    .equals(other.deviceID, deviceID)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobType) ^
      const DeepCollectionEquality().hash(payLoad) ^
      const DeepCollectionEquality().hash(deviceID) ^
      runtimeType.hashCode;
}

extension $ChangeDeviceNameExtension on ChangeDeviceName {
  ChangeDeviceName copyWith(
      {enums.ChangeDeviceNameJobType? jobType,
      String? payLoad,
      String? deviceID}) {
    return ChangeDeviceName(
        jobType: jobType ?? this.jobType,
        payLoad: payLoad ?? this.payLoad,
        deviceID: deviceID ?? this.deviceID);
  }
}

@JsonSerializable(explicitToJson: true)
class SetBluetoothName {
  SetBluetoothName({
    this.jobType,
    this.payLoad,
    this.deviceID,
  });

  factory SetBluetoothName.fromJson(Map<String, dynamic> json) =>
      _$SetBluetoothNameFromJson(json);

  @JsonKey(
      name: 'JobType',
      toJson: setBluetoothNameJobTypeToJson,
      fromJson: setBluetoothNameJobTypeFromJson)
  final enums.SetBluetoothNameJobType? jobType;
  @JsonKey(name: 'PayLoad')
  final String? payLoad;
  @JsonKey(name: 'DeviceID')
  final String? deviceID;
  static const fromJsonFactory = _$SetBluetoothNameFromJson;
  static const toJsonFactory = _$SetBluetoothNameToJson;
  Map<String, dynamic> toJson() => _$SetBluetoothNameToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SetBluetoothName &&
            (identical(other.jobType, jobType) ||
                const DeepCollectionEquality()
                    .equals(other.jobType, jobType)) &&
            (identical(other.payLoad, payLoad) ||
                const DeepCollectionEquality()
                    .equals(other.payLoad, payLoad)) &&
            (identical(other.deviceID, deviceID) ||
                const DeepCollectionEquality()
                    .equals(other.deviceID, deviceID)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobType) ^
      const DeepCollectionEquality().hash(payLoad) ^
      const DeepCollectionEquality().hash(deviceID) ^
      runtimeType.hashCode;
}

extension $SetBluetoothNameExtension on SetBluetoothName {
  SetBluetoothName copyWith(
      {enums.SetBluetoothNameJobType? jobType,
      String? payLoad,
      String? deviceID}) {
    return SetBluetoothName(
        jobType: jobType ?? this.jobType,
        payLoad: payLoad ?? this.payLoad,
        deviceID: deviceID ?? this.deviceID);
  }
}

@JsonSerializable(explicitToJson: true)
class SetDeviceNotes {
  SetDeviceNotes({
    this.jobType,
    this.payLoad,
    this.deviceID,
  });

  factory SetDeviceNotes.fromJson(Map<String, dynamic> json) =>
      _$SetDeviceNotesFromJson(json);

  @JsonKey(
      name: 'JobType',
      toJson: setDeviceNotesJobTypeToJson,
      fromJson: setDeviceNotesJobTypeFromJson)
  final enums.SetDeviceNotesJobType? jobType;
  @JsonKey(name: 'PayLoad')
  final String? payLoad;
  @JsonKey(name: 'DeviceID')
  final String? deviceID;
  static const fromJsonFactory = _$SetDeviceNotesFromJson;
  static const toJsonFactory = _$SetDeviceNotesToJson;
  Map<String, dynamic> toJson() => _$SetDeviceNotesToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SetDeviceNotes &&
            (identical(other.jobType, jobType) ||
                const DeepCollectionEquality()
                    .equals(other.jobType, jobType)) &&
            (identical(other.payLoad, payLoad) ||
                const DeepCollectionEquality()
                    .equals(other.payLoad, payLoad)) &&
            (identical(other.deviceID, deviceID) ||
                const DeepCollectionEquality()
                    .equals(other.deviceID, deviceID)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobType) ^
      const DeepCollectionEquality().hash(payLoad) ^
      const DeepCollectionEquality().hash(deviceID) ^
      runtimeType.hashCode;
}

extension $SetDeviceNotesExtension on SetDeviceNotes {
  SetDeviceNotes copyWith(
      {enums.SetDeviceNotesJobType? jobType,
      String? payLoad,
      String? deviceID}) {
    return SetDeviceNotes(
        jobType: jobType ?? this.jobType,
        payLoad: payLoad ?? this.payLoad,
        deviceID: deviceID ?? this.deviceID);
  }
}

@JsonSerializable(explicitToJson: true)
class ClearAppData {
  ClearAppData({
    this.jobType,
    this.payLoad,
    this.deviceID,
  });

  factory ClearAppData.fromJson(Map<String, dynamic> json) =>
      _$ClearAppDataFromJson(json);

  @JsonKey(
      name: 'JobType',
      toJson: clearAppDataJobTypeToJson,
      fromJson: clearAppDataJobTypeFromJson)
  final enums.ClearAppDataJobType? jobType;
  @JsonKey(name: 'PayLoad')
  final String? payLoad;
  @JsonKey(name: 'DeviceID')
  final String? deviceID;
  static const fromJsonFactory = _$ClearAppDataFromJson;
  static const toJsonFactory = _$ClearAppDataToJson;
  Map<String, dynamic> toJson() => _$ClearAppDataToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ClearAppData &&
            (identical(other.jobType, jobType) ||
                const DeepCollectionEquality()
                    .equals(other.jobType, jobType)) &&
            (identical(other.payLoad, payLoad) ||
                const DeepCollectionEquality()
                    .equals(other.payLoad, payLoad)) &&
            (identical(other.deviceID, deviceID) ||
                const DeepCollectionEquality()
                    .equals(other.deviceID, deviceID)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobType) ^
      const DeepCollectionEquality().hash(payLoad) ^
      const DeepCollectionEquality().hash(deviceID) ^
      runtimeType.hashCode;
}

extension $ClearAppDataExtension on ClearAppData {
  ClearAppData copyWith(
      {enums.ClearAppDataJobType? jobType, String? payLoad, String? deviceID}) {
    return ClearAppData(
        jobType: jobType ?? this.jobType,
        payLoad: payLoad ?? this.payLoad,
        deviceID: deviceID ?? this.deviceID);
  }
}

@JsonSerializable(explicitToJson: true)
class UninstallApplication {
  UninstallApplication({
    this.jobType,
    this.payLoad,
    this.deviceID,
  });

  factory UninstallApplication.fromJson(Map<String, dynamic> json) =>
      _$UninstallApplicationFromJson(json);

  @JsonKey(
      name: 'JobType',
      toJson: uninstallApplicationJobTypeToJson,
      fromJson: uninstallApplicationJobTypeFromJson)
  final enums.UninstallApplicationJobType? jobType;
  @JsonKey(name: 'PayLoad')
  final String? payLoad;
  @JsonKey(name: 'DeviceID')
  final String? deviceID;
  static const fromJsonFactory = _$UninstallApplicationFromJson;
  static const toJsonFactory = _$UninstallApplicationToJson;
  Map<String, dynamic> toJson() => _$UninstallApplicationToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UninstallApplication &&
            (identical(other.jobType, jobType) ||
                const DeepCollectionEquality()
                    .equals(other.jobType, jobType)) &&
            (identical(other.payLoad, payLoad) ||
                const DeepCollectionEquality()
                    .equals(other.payLoad, payLoad)) &&
            (identical(other.deviceID, deviceID) ||
                const DeepCollectionEquality()
                    .equals(other.deviceID, deviceID)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobType) ^
      const DeepCollectionEquality().hash(payLoad) ^
      const DeepCollectionEquality().hash(deviceID) ^
      runtimeType.hashCode;
}

extension $UninstallApplicationExtension on UninstallApplication {
  UninstallApplication copyWith(
      {enums.UninstallApplicationJobType? jobType,
      String? payLoad,
      String? deviceID}) {
    return UninstallApplication(
        jobType: jobType ?? this.jobType,
        payLoad: payLoad ?? this.payLoad,
        deviceID: deviceID ?? this.deviceID);
  }
}

@JsonSerializable(explicitToJson: true)
class LocationTracking {
  LocationTracking({
    this.jobType,
    this.payLoad,
    this.deviceID,
  });

  factory LocationTracking.fromJson(Map<String, dynamic> json) =>
      _$LocationTrackingFromJson(json);

  @JsonKey(
      name: 'JobType',
      toJson: locationTrackingJobTypeToJson,
      fromJson: locationTrackingJobTypeFromJson)
  final enums.LocationTrackingJobType? jobType;
  @JsonKey(name: 'PayLoad')
  final String? payLoad;
  @JsonKey(name: 'DeviceID')
  final String? deviceID;
  static const fromJsonFactory = _$LocationTrackingFromJson;
  static const toJsonFactory = _$LocationTrackingToJson;
  Map<String, dynamic> toJson() => _$LocationTrackingToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LocationTracking &&
            (identical(other.jobType, jobType) ||
                const DeepCollectionEquality()
                    .equals(other.jobType, jobType)) &&
            (identical(other.payLoad, payLoad) ||
                const DeepCollectionEquality()
                    .equals(other.payLoad, payLoad)) &&
            (identical(other.deviceID, deviceID) ||
                const DeepCollectionEquality()
                    .equals(other.deviceID, deviceID)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobType) ^
      const DeepCollectionEquality().hash(payLoad) ^
      const DeepCollectionEquality().hash(deviceID) ^
      runtimeType.hashCode;
}

extension $LocationTrackingExtension on LocationTracking {
  LocationTracking copyWith(
      {enums.LocationTrackingJobType? jobType,
      String? payLoad,
      String? deviceID}) {
    return LocationTracking(
        jobType: jobType ?? this.jobType,
        payLoad: payLoad ?? this.payLoad,
        deviceID: deviceID ?? this.deviceID);
  }
}

@JsonSerializable(explicitToJson: true)
class GeoFence {
  GeoFence({
    this.jobType,
    this.payLoad,
    this.deviceID,
  });

  factory GeoFence.fromJson(Map<String, dynamic> json) =>
      _$GeoFenceFromJson(json);

  @JsonKey(
      name: 'JobType',
      toJson: geoFenceJobTypeToJson,
      fromJson: geoFenceJobTypeFromJson)
  final enums.GeoFenceJobType? jobType;
  @JsonKey(name: 'PayLoad')
  final DynamicGeoFencingPayLoad? payLoad;
  @JsonKey(name: 'DeviceID')
  final String? deviceID;
  static const fromJsonFactory = _$GeoFenceFromJson;
  static const toJsonFactory = _$GeoFenceToJson;
  Map<String, dynamic> toJson() => _$GeoFenceToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GeoFence &&
            (identical(other.jobType, jobType) ||
                const DeepCollectionEquality()
                    .equals(other.jobType, jobType)) &&
            (identical(other.payLoad, payLoad) ||
                const DeepCollectionEquality()
                    .equals(other.payLoad, payLoad)) &&
            (identical(other.deviceID, deviceID) ||
                const DeepCollectionEquality()
                    .equals(other.deviceID, deviceID)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobType) ^
      const DeepCollectionEquality().hash(payLoad) ^
      const DeepCollectionEquality().hash(deviceID) ^
      runtimeType.hashCode;
}

extension $GeoFenceExtension on GeoFence {
  GeoFence copyWith(
      {enums.GeoFenceJobType? jobType,
      DynamicGeoFencingPayLoad? payLoad,
      String? deviceID}) {
    return GeoFence(
        jobType: jobType ?? this.jobType,
        payLoad: payLoad ?? this.payLoad,
        deviceID: deviceID ?? this.deviceID);
  }
}

@JsonSerializable(explicitToJson: true)
class DynamicGeoFencingPayLoad {
  DynamicGeoFencingPayLoad({
    this.enableFence,
    this.fence,
    this.jobOut,
    this.jobIn,
    this.fenceJobInDeployDelay,
    this.fenceJobOutDeployDelay,
    this.fenceJobInDeviceAlert,
    this.fenceJobInMDMAlert,
    this.fenceJobInEmailAlert,
    this.fenceJobInEmailId,
    this.fenceJobOutDeviceAlert,
    this.fenceJobOutMDMAlert,
    this.fenceJobOutEmailAlert,
    this.fenceJobOutEmailId,
  });

  factory DynamicGeoFencingPayLoad.fromJson(Map<String, dynamic> json) =>
      _$DynamicGeoFencingPayLoadFromJson(json);

  @JsonKey(name: 'EnableFence')
  final bool? enableFence;
  @JsonKey(name: 'Fence', defaultValue: <DynamicGeoFencingPayLoad$Fence>[])
  final List<DynamicGeoFencingPayLoad$Fence>? fence;
  @JsonKey(name: 'JobOut', defaultValue: <DynamicGeoFencingPayLoad$JobOut>[])
  final List<DynamicGeoFencingPayLoad$JobOut>? jobOut;
  @JsonKey(name: 'JobIn', defaultValue: <DynamicGeoFencingPayLoad$JobIn>[])
  final List<DynamicGeoFencingPayLoad$JobIn>? jobIn;
  @JsonKey(name: 'FenceJobInDeployDelay')
  final int? fenceJobInDeployDelay;
  @JsonKey(name: 'FenceJobOutDeployDelay')
  final int? fenceJobOutDeployDelay;
  @JsonKey(name: 'FenceJobInDeviceAlert')
  final bool? fenceJobInDeviceAlert;
  @JsonKey(name: 'FenceJobInMDMAlert')
  final bool? fenceJobInMDMAlert;
  @JsonKey(name: 'FenceJobInEmailAlert')
  final bool? fenceJobInEmailAlert;
  @JsonKey(name: 'FenceJobInEmailId')
  final String? fenceJobInEmailId;
  @JsonKey(name: 'FenceJobOutDeviceAlert')
  final bool? fenceJobOutDeviceAlert;
  @JsonKey(name: 'FenceJobOutMDMAlert')
  final bool? fenceJobOutMDMAlert;
  @JsonKey(name: 'FenceJobOutEmailAlert')
  final bool? fenceJobOutEmailAlert;
  @JsonKey(name: 'FenceJobOutEmailId')
  final String? fenceJobOutEmailId;
  static const fromJsonFactory = _$DynamicGeoFencingPayLoadFromJson;
  static const toJsonFactory = _$DynamicGeoFencingPayLoadToJson;
  Map<String, dynamic> toJson() => _$DynamicGeoFencingPayLoadToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DynamicGeoFencingPayLoad &&
            (identical(other.enableFence, enableFence) ||
                const DeepCollectionEquality()
                    .equals(other.enableFence, enableFence)) &&
            (identical(other.fence, fence) ||
                const DeepCollectionEquality().equals(other.fence, fence)) &&
            (identical(other.jobOut, jobOut) ||
                const DeepCollectionEquality().equals(other.jobOut, jobOut)) &&
            (identical(other.jobIn, jobIn) ||
                const DeepCollectionEquality().equals(other.jobIn, jobIn)) &&
            (identical(other.fenceJobInDeployDelay, fenceJobInDeployDelay) ||
                const DeepCollectionEquality().equals(
                    other.fenceJobInDeployDelay, fenceJobInDeployDelay)) &&
            (identical(other.fenceJobOutDeployDelay, fenceJobOutDeployDelay) ||
                const DeepCollectionEquality().equals(
                    other.fenceJobOutDeployDelay, fenceJobOutDeployDelay)) &&
            (identical(other.fenceJobInDeviceAlert, fenceJobInDeviceAlert) ||
                const DeepCollectionEquality().equals(
                    other.fenceJobInDeviceAlert, fenceJobInDeviceAlert)) &&
            (identical(other.fenceJobInMDMAlert, fenceJobInMDMAlert) ||
                const DeepCollectionEquality()
                    .equals(other.fenceJobInMDMAlert, fenceJobInMDMAlert)) &&
            (identical(other.fenceJobInEmailAlert, fenceJobInEmailAlert) ||
                const DeepCollectionEquality().equals(
                    other.fenceJobInEmailAlert, fenceJobInEmailAlert)) &&
            (identical(other.fenceJobInEmailId, fenceJobInEmailId) ||
                const DeepCollectionEquality()
                    .equals(other.fenceJobInEmailId, fenceJobInEmailId)) &&
            (identical(other.fenceJobOutDeviceAlert, fenceJobOutDeviceAlert) ||
                const DeepCollectionEquality().equals(
                    other.fenceJobOutDeviceAlert, fenceJobOutDeviceAlert)) &&
            (identical(other.fenceJobOutMDMAlert, fenceJobOutMDMAlert) ||
                const DeepCollectionEquality()
                    .equals(other.fenceJobOutMDMAlert, fenceJobOutMDMAlert)) &&
            (identical(other.fenceJobOutEmailAlert, fenceJobOutEmailAlert) ||
                const DeepCollectionEquality().equals(
                    other.fenceJobOutEmailAlert, fenceJobOutEmailAlert)) &&
            (identical(other.fenceJobOutEmailId, fenceJobOutEmailId) ||
                const DeepCollectionEquality()
                    .equals(other.fenceJobOutEmailId, fenceJobOutEmailId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(enableFence) ^
      const DeepCollectionEquality().hash(fence) ^
      const DeepCollectionEquality().hash(jobOut) ^
      const DeepCollectionEquality().hash(jobIn) ^
      const DeepCollectionEquality().hash(fenceJobInDeployDelay) ^
      const DeepCollectionEquality().hash(fenceJobOutDeployDelay) ^
      const DeepCollectionEquality().hash(fenceJobInDeviceAlert) ^
      const DeepCollectionEquality().hash(fenceJobInMDMAlert) ^
      const DeepCollectionEquality().hash(fenceJobInEmailAlert) ^
      const DeepCollectionEquality().hash(fenceJobInEmailId) ^
      const DeepCollectionEquality().hash(fenceJobOutDeviceAlert) ^
      const DeepCollectionEquality().hash(fenceJobOutMDMAlert) ^
      const DeepCollectionEquality().hash(fenceJobOutEmailAlert) ^
      const DeepCollectionEquality().hash(fenceJobOutEmailId) ^
      runtimeType.hashCode;
}

extension $DynamicGeoFencingPayLoadExtension on DynamicGeoFencingPayLoad {
  DynamicGeoFencingPayLoad copyWith(
      {bool? enableFence,
      List<DynamicGeoFencingPayLoad$Fence>? fence,
      List<DynamicGeoFencingPayLoad$JobOut>? jobOut,
      List<DynamicGeoFencingPayLoad$JobIn>? jobIn,
      int? fenceJobInDeployDelay,
      int? fenceJobOutDeployDelay,
      bool? fenceJobInDeviceAlert,
      bool? fenceJobInMDMAlert,
      bool? fenceJobInEmailAlert,
      String? fenceJobInEmailId,
      bool? fenceJobOutDeviceAlert,
      bool? fenceJobOutMDMAlert,
      bool? fenceJobOutEmailAlert,
      String? fenceJobOutEmailId}) {
    return DynamicGeoFencingPayLoad(
        enableFence: enableFence ?? this.enableFence,
        fence: fence ?? this.fence,
        jobOut: jobOut ?? this.jobOut,
        jobIn: jobIn ?? this.jobIn,
        fenceJobInDeployDelay:
            fenceJobInDeployDelay ?? this.fenceJobInDeployDelay,
        fenceJobOutDeployDelay:
            fenceJobOutDeployDelay ?? this.fenceJobOutDeployDelay,
        fenceJobInDeviceAlert:
            fenceJobInDeviceAlert ?? this.fenceJobInDeviceAlert,
        fenceJobInMDMAlert: fenceJobInMDMAlert ?? this.fenceJobInMDMAlert,
        fenceJobInEmailAlert: fenceJobInEmailAlert ?? this.fenceJobInEmailAlert,
        fenceJobInEmailId: fenceJobInEmailId ?? this.fenceJobInEmailId,
        fenceJobOutDeviceAlert:
            fenceJobOutDeviceAlert ?? this.fenceJobOutDeviceAlert,
        fenceJobOutMDMAlert: fenceJobOutMDMAlert ?? this.fenceJobOutMDMAlert,
        fenceJobOutEmailAlert:
            fenceJobOutEmailAlert ?? this.fenceJobOutEmailAlert,
        fenceJobOutEmailId: fenceJobOutEmailId ?? this.fenceJobOutEmailId);
  }
}

@JsonSerializable(explicitToJson: true)
class TimeFence {
  TimeFence({
    this.jobType,
    this.payLoad,
    this.deviceID,
  });

  factory TimeFence.fromJson(Map<String, dynamic> json) =>
      _$TimeFenceFromJson(json);

  @JsonKey(
      name: 'JobType',
      toJson: timeFenceJobTypeToJson,
      fromJson: timeFenceJobTypeFromJson)
  final enums.TimeFenceJobType? jobType;
  @JsonKey(name: 'PayLoad')
  final DynamicTimeFencingPayLoad? payLoad;
  @JsonKey(name: 'DeviceID')
  final String? deviceID;
  static const fromJsonFactory = _$TimeFenceFromJson;
  static const toJsonFactory = _$TimeFenceToJson;
  Map<String, dynamic> toJson() => _$TimeFenceToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TimeFence &&
            (identical(other.jobType, jobType) ||
                const DeepCollectionEquality()
                    .equals(other.jobType, jobType)) &&
            (identical(other.payLoad, payLoad) ||
                const DeepCollectionEquality()
                    .equals(other.payLoad, payLoad)) &&
            (identical(other.deviceID, deviceID) ||
                const DeepCollectionEquality()
                    .equals(other.deviceID, deviceID)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobType) ^
      const DeepCollectionEquality().hash(payLoad) ^
      const DeepCollectionEquality().hash(deviceID) ^
      runtimeType.hashCode;
}

extension $TimeFenceExtension on TimeFence {
  TimeFence copyWith(
      {enums.TimeFenceJobType? jobType,
      DynamicTimeFencingPayLoad? payLoad,
      String? deviceID}) {
    return TimeFence(
        jobType: jobType ?? this.jobType,
        payLoad: payLoad ?? this.payLoad,
        deviceID: deviceID ?? this.deviceID);
  }
}

@JsonSerializable(explicitToJson: true)
class DynamicTimeFencingPayLoad {
  DynamicTimeFencingPayLoad({
    this.enableFence,
    this.jobIn,
    this.jobOut,
    this.selectFence,
    this.fenceJobInDeviceAlert,
    this.fenceJobInMDMAlert,
    this.fenceJobInEmailAlert,
    this.fenceJobInEmailId,
    this.fenceJobOutDeviceAlert,
    this.fenceJobOutMDMAlert,
    this.fenceJobOutEmailAlert,
    this.fenceJobOutEmailId,
  });

  factory DynamicTimeFencingPayLoad.fromJson(Map<String, dynamic> json) =>
      _$DynamicTimeFencingPayLoadFromJson(json);

  @JsonKey(name: 'EnableFence')
  final bool? enableFence;
  @JsonKey(name: 'JobIn', defaultValue: <DynamicTimeFencingPayLoad$JobIn>[])
  final List<DynamicTimeFencingPayLoad$JobIn>? jobIn;
  @JsonKey(name: 'JobOut', defaultValue: <DynamicTimeFencingPayLoad$JobOut>[])
  final List<DynamicTimeFencingPayLoad$JobOut>? jobOut;
  @JsonKey(name: 'SelectFence')
  final DynamicTimeFencingPayLoad$SelectFence? selectFence;
  @JsonKey(name: 'FenceJobInDeviceAlert')
  final bool? fenceJobInDeviceAlert;
  @JsonKey(name: 'FenceJobInMDMAlert')
  final bool? fenceJobInMDMAlert;
  @JsonKey(name: 'FenceJobInEmailAlert')
  final bool? fenceJobInEmailAlert;
  @JsonKey(name: 'FenceJobInEmailId')
  final String? fenceJobInEmailId;
  @JsonKey(name: 'FenceJobOutDeviceAlert')
  final bool? fenceJobOutDeviceAlert;
  @JsonKey(name: 'FenceJobOutMDMAlert')
  final bool? fenceJobOutMDMAlert;
  @JsonKey(name: 'FenceJobOutEmailAlert')
  final bool? fenceJobOutEmailAlert;
  @JsonKey(name: 'FenceJobOutEmailId')
  final String? fenceJobOutEmailId;
  static const fromJsonFactory = _$DynamicTimeFencingPayLoadFromJson;
  static const toJsonFactory = _$DynamicTimeFencingPayLoadToJson;
  Map<String, dynamic> toJson() => _$DynamicTimeFencingPayLoadToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DynamicTimeFencingPayLoad &&
            (identical(other.enableFence, enableFence) ||
                const DeepCollectionEquality()
                    .equals(other.enableFence, enableFence)) &&
            (identical(other.jobIn, jobIn) ||
                const DeepCollectionEquality().equals(other.jobIn, jobIn)) &&
            (identical(other.jobOut, jobOut) ||
                const DeepCollectionEquality().equals(other.jobOut, jobOut)) &&
            (identical(other.selectFence, selectFence) ||
                const DeepCollectionEquality()
                    .equals(other.selectFence, selectFence)) &&
            (identical(other.fenceJobInDeviceAlert, fenceJobInDeviceAlert) ||
                const DeepCollectionEquality().equals(
                    other.fenceJobInDeviceAlert, fenceJobInDeviceAlert)) &&
            (identical(other.fenceJobInMDMAlert, fenceJobInMDMAlert) ||
                const DeepCollectionEquality()
                    .equals(other.fenceJobInMDMAlert, fenceJobInMDMAlert)) &&
            (identical(other.fenceJobInEmailAlert, fenceJobInEmailAlert) ||
                const DeepCollectionEquality().equals(
                    other.fenceJobInEmailAlert, fenceJobInEmailAlert)) &&
            (identical(other.fenceJobInEmailId, fenceJobInEmailId) ||
                const DeepCollectionEquality()
                    .equals(other.fenceJobInEmailId, fenceJobInEmailId)) &&
            (identical(other.fenceJobOutDeviceAlert, fenceJobOutDeviceAlert) ||
                const DeepCollectionEquality().equals(
                    other.fenceJobOutDeviceAlert, fenceJobOutDeviceAlert)) &&
            (identical(other.fenceJobOutMDMAlert, fenceJobOutMDMAlert) ||
                const DeepCollectionEquality()
                    .equals(other.fenceJobOutMDMAlert, fenceJobOutMDMAlert)) &&
            (identical(other.fenceJobOutEmailAlert, fenceJobOutEmailAlert) ||
                const DeepCollectionEquality().equals(
                    other.fenceJobOutEmailAlert, fenceJobOutEmailAlert)) &&
            (identical(other.fenceJobOutEmailId, fenceJobOutEmailId) ||
                const DeepCollectionEquality()
                    .equals(other.fenceJobOutEmailId, fenceJobOutEmailId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(enableFence) ^
      const DeepCollectionEquality().hash(jobIn) ^
      const DeepCollectionEquality().hash(jobOut) ^
      const DeepCollectionEquality().hash(selectFence) ^
      const DeepCollectionEquality().hash(fenceJobInDeviceAlert) ^
      const DeepCollectionEquality().hash(fenceJobInMDMAlert) ^
      const DeepCollectionEquality().hash(fenceJobInEmailAlert) ^
      const DeepCollectionEquality().hash(fenceJobInEmailId) ^
      const DeepCollectionEquality().hash(fenceJobOutDeviceAlert) ^
      const DeepCollectionEquality().hash(fenceJobOutMDMAlert) ^
      const DeepCollectionEquality().hash(fenceJobOutEmailAlert) ^
      const DeepCollectionEquality().hash(fenceJobOutEmailId) ^
      runtimeType.hashCode;
}

extension $DynamicTimeFencingPayLoadExtension on DynamicTimeFencingPayLoad {
  DynamicTimeFencingPayLoad copyWith(
      {bool? enableFence,
      List<DynamicTimeFencingPayLoad$JobIn>? jobIn,
      List<DynamicTimeFencingPayLoad$JobOut>? jobOut,
      DynamicTimeFencingPayLoad$SelectFence? selectFence,
      bool? fenceJobInDeviceAlert,
      bool? fenceJobInMDMAlert,
      bool? fenceJobInEmailAlert,
      String? fenceJobInEmailId,
      bool? fenceJobOutDeviceAlert,
      bool? fenceJobOutMDMAlert,
      bool? fenceJobOutEmailAlert,
      String? fenceJobOutEmailId}) {
    return DynamicTimeFencingPayLoad(
        enableFence: enableFence ?? this.enableFence,
        jobIn: jobIn ?? this.jobIn,
        jobOut: jobOut ?? this.jobOut,
        selectFence: selectFence ?? this.selectFence,
        fenceJobInDeviceAlert:
            fenceJobInDeviceAlert ?? this.fenceJobInDeviceAlert,
        fenceJobInMDMAlert: fenceJobInMDMAlert ?? this.fenceJobInMDMAlert,
        fenceJobInEmailAlert: fenceJobInEmailAlert ?? this.fenceJobInEmailAlert,
        fenceJobInEmailId: fenceJobInEmailId ?? this.fenceJobInEmailId,
        fenceJobOutDeviceAlert:
            fenceJobOutDeviceAlert ?? this.fenceJobOutDeviceAlert,
        fenceJobOutMDMAlert: fenceJobOutMDMAlert ?? this.fenceJobOutMDMAlert,
        fenceJobOutEmailAlert:
            fenceJobOutEmailAlert ?? this.fenceJobOutEmailAlert,
        fenceJobOutEmailId: fenceJobOutEmailId ?? this.fenceJobOutEmailId);
  }
}

@JsonSerializable(explicitToJson: true)
class NetworkFence {
  NetworkFence({
    this.jobType,
    this.payLoad,
    this.deviceID,
  });

  factory NetworkFence.fromJson(Map<String, dynamic> json) =>
      _$NetworkFenceFromJson(json);

  @JsonKey(
      name: 'JobType',
      toJson: networkFenceJobTypeToJson,
      fromJson: networkFenceJobTypeFromJson)
  final enums.NetworkFenceJobType? jobType;
  @JsonKey(name: 'PayLoad')
  final DynamicNetworkFencingPayLoad? payLoad;
  @JsonKey(name: 'DeviceID')
  final String? deviceID;
  static const fromJsonFactory = _$NetworkFenceFromJson;
  static const toJsonFactory = _$NetworkFenceToJson;
  Map<String, dynamic> toJson() => _$NetworkFenceToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NetworkFence &&
            (identical(other.jobType, jobType) ||
                const DeepCollectionEquality()
                    .equals(other.jobType, jobType)) &&
            (identical(other.payLoad, payLoad) ||
                const DeepCollectionEquality()
                    .equals(other.payLoad, payLoad)) &&
            (identical(other.deviceID, deviceID) ||
                const DeepCollectionEquality()
                    .equals(other.deviceID, deviceID)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobType) ^
      const DeepCollectionEquality().hash(payLoad) ^
      const DeepCollectionEquality().hash(deviceID) ^
      runtimeType.hashCode;
}

extension $NetworkFenceExtension on NetworkFence {
  NetworkFence copyWith(
      {enums.NetworkFenceJobType? jobType,
      DynamicNetworkFencingPayLoad? payLoad,
      String? deviceID}) {
    return NetworkFence(
        jobType: jobType ?? this.jobType,
        payLoad: payLoad ?? this.payLoad,
        deviceID: deviceID ?? this.deviceID);
  }
}

@JsonSerializable(explicitToJson: true)
class DynamicNetworkFencingPayLoad {
  DynamicNetworkFencingPayLoad({
    this.enableFence,
    this.jobIn,
    this.jobOut,
    this.fenceJobInDeployDelay,
    this.fenceJobOutDeployDelay,
    this.selectFence,
    this.fenceJobInDeviceAlert,
    this.fenceJobInMDMAlert,
    this.fenceJobInEmailAlert,
    this.fenceJobInEmailId,
    this.fenceJobOutDeviceAlert,
    this.fenceJobOutMDMAlert,
    this.fenceJobOutEmailAlert,
    this.fenceJobOutEmailId,
  });

  factory DynamicNetworkFencingPayLoad.fromJson(Map<String, dynamic> json) =>
      _$DynamicNetworkFencingPayLoadFromJson(json);

  @JsonKey(name: 'EnableFence')
  final String? enableFence;
  @JsonKey(name: 'JobIn')
  final DynamicNetworkFencingPayLoad$JobIn? jobIn;
  @JsonKey(name: 'JobOut')
  final DynamicNetworkFencingPayLoad$JobOut? jobOut;
  @JsonKey(name: 'FenceJobInDeployDelay')
  final String? fenceJobInDeployDelay;
  @JsonKey(name: 'FenceJobOutDeployDelay')
  final String? fenceJobOutDeployDelay;
  @JsonKey(name: 'SelectFence')
  final DynamicNetworkFencingPayLoad$SelectFence? selectFence;
  @JsonKey(name: 'FenceJobInDeviceAlert')
  final bool? fenceJobInDeviceAlert;
  @JsonKey(name: 'FenceJobInMDMAlert')
  final bool? fenceJobInMDMAlert;
  @JsonKey(name: 'FenceJobInEmailAlert')
  final bool? fenceJobInEmailAlert;
  @JsonKey(name: 'FenceJobInEmailId')
  final String? fenceJobInEmailId;
  @JsonKey(name: 'FenceJobOutDeviceAlert')
  final bool? fenceJobOutDeviceAlert;
  @JsonKey(name: 'FenceJobOutMDMAlert')
  final bool? fenceJobOutMDMAlert;
  @JsonKey(name: 'FenceJobOutEmailAlert')
  final bool? fenceJobOutEmailAlert;
  @JsonKey(name: 'FenceJobOutEmailId')
  final String? fenceJobOutEmailId;
  static const fromJsonFactory = _$DynamicNetworkFencingPayLoadFromJson;
  static const toJsonFactory = _$DynamicNetworkFencingPayLoadToJson;
  Map<String, dynamic> toJson() => _$DynamicNetworkFencingPayLoadToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DynamicNetworkFencingPayLoad &&
            (identical(other.enableFence, enableFence) ||
                const DeepCollectionEquality()
                    .equals(other.enableFence, enableFence)) &&
            (identical(other.jobIn, jobIn) ||
                const DeepCollectionEquality().equals(other.jobIn, jobIn)) &&
            (identical(other.jobOut, jobOut) ||
                const DeepCollectionEquality().equals(other.jobOut, jobOut)) &&
            (identical(other.fenceJobInDeployDelay, fenceJobInDeployDelay) ||
                const DeepCollectionEquality().equals(
                    other.fenceJobInDeployDelay, fenceJobInDeployDelay)) &&
            (identical(other.fenceJobOutDeployDelay, fenceJobOutDeployDelay) ||
                const DeepCollectionEquality().equals(
                    other.fenceJobOutDeployDelay, fenceJobOutDeployDelay)) &&
            (identical(other.selectFence, selectFence) ||
                const DeepCollectionEquality()
                    .equals(other.selectFence, selectFence)) &&
            (identical(other.fenceJobInDeviceAlert, fenceJobInDeviceAlert) ||
                const DeepCollectionEquality().equals(
                    other.fenceJobInDeviceAlert, fenceJobInDeviceAlert)) &&
            (identical(other.fenceJobInMDMAlert, fenceJobInMDMAlert) ||
                const DeepCollectionEquality()
                    .equals(other.fenceJobInMDMAlert, fenceJobInMDMAlert)) &&
            (identical(other.fenceJobInEmailAlert, fenceJobInEmailAlert) ||
                const DeepCollectionEquality().equals(
                    other.fenceJobInEmailAlert, fenceJobInEmailAlert)) &&
            (identical(other.fenceJobInEmailId, fenceJobInEmailId) ||
                const DeepCollectionEquality()
                    .equals(other.fenceJobInEmailId, fenceJobInEmailId)) &&
            (identical(other.fenceJobOutDeviceAlert, fenceJobOutDeviceAlert) ||
                const DeepCollectionEquality().equals(
                    other.fenceJobOutDeviceAlert, fenceJobOutDeviceAlert)) &&
            (identical(other.fenceJobOutMDMAlert, fenceJobOutMDMAlert) ||
                const DeepCollectionEquality()
                    .equals(other.fenceJobOutMDMAlert, fenceJobOutMDMAlert)) &&
            (identical(other.fenceJobOutEmailAlert, fenceJobOutEmailAlert) ||
                const DeepCollectionEquality().equals(
                    other.fenceJobOutEmailAlert, fenceJobOutEmailAlert)) &&
            (identical(other.fenceJobOutEmailId, fenceJobOutEmailId) ||
                const DeepCollectionEquality()
                    .equals(other.fenceJobOutEmailId, fenceJobOutEmailId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(enableFence) ^
      const DeepCollectionEquality().hash(jobIn) ^
      const DeepCollectionEquality().hash(jobOut) ^
      const DeepCollectionEquality().hash(fenceJobInDeployDelay) ^
      const DeepCollectionEquality().hash(fenceJobOutDeployDelay) ^
      const DeepCollectionEquality().hash(selectFence) ^
      const DeepCollectionEquality().hash(fenceJobInDeviceAlert) ^
      const DeepCollectionEquality().hash(fenceJobInMDMAlert) ^
      const DeepCollectionEquality().hash(fenceJobInEmailAlert) ^
      const DeepCollectionEquality().hash(fenceJobInEmailId) ^
      const DeepCollectionEquality().hash(fenceJobOutDeviceAlert) ^
      const DeepCollectionEquality().hash(fenceJobOutMDMAlert) ^
      const DeepCollectionEquality().hash(fenceJobOutEmailAlert) ^
      const DeepCollectionEquality().hash(fenceJobOutEmailId) ^
      runtimeType.hashCode;
}

extension $DynamicNetworkFencingPayLoadExtension
    on DynamicNetworkFencingPayLoad {
  DynamicNetworkFencingPayLoad copyWith(
      {String? enableFence,
      DynamicNetworkFencingPayLoad$JobIn? jobIn,
      DynamicNetworkFencingPayLoad$JobOut? jobOut,
      String? fenceJobInDeployDelay,
      String? fenceJobOutDeployDelay,
      DynamicNetworkFencingPayLoad$SelectFence? selectFence,
      bool? fenceJobInDeviceAlert,
      bool? fenceJobInMDMAlert,
      bool? fenceJobInEmailAlert,
      String? fenceJobInEmailId,
      bool? fenceJobOutDeviceAlert,
      bool? fenceJobOutMDMAlert,
      bool? fenceJobOutEmailAlert,
      String? fenceJobOutEmailId}) {
    return DynamicNetworkFencingPayLoad(
        enableFence: enableFence ?? this.enableFence,
        jobIn: jobIn ?? this.jobIn,
        jobOut: jobOut ?? this.jobOut,
        fenceJobInDeployDelay:
            fenceJobInDeployDelay ?? this.fenceJobInDeployDelay,
        fenceJobOutDeployDelay:
            fenceJobOutDeployDelay ?? this.fenceJobOutDeployDelay,
        selectFence: selectFence ?? this.selectFence,
        fenceJobInDeviceAlert:
            fenceJobInDeviceAlert ?? this.fenceJobInDeviceAlert,
        fenceJobInMDMAlert: fenceJobInMDMAlert ?? this.fenceJobInMDMAlert,
        fenceJobInEmailAlert: fenceJobInEmailAlert ?? this.fenceJobInEmailAlert,
        fenceJobInEmailId: fenceJobInEmailId ?? this.fenceJobInEmailId,
        fenceJobOutDeviceAlert:
            fenceJobOutDeviceAlert ?? this.fenceJobOutDeviceAlert,
        fenceJobOutMDMAlert: fenceJobOutMDMAlert ?? this.fenceJobOutMDMAlert,
        fenceJobOutEmailAlert:
            fenceJobOutEmailAlert ?? this.fenceJobOutEmailAlert,
        fenceJobOutEmailId: fenceJobOutEmailId ?? this.fenceJobOutEmailId);
  }
}

@JsonSerializable(explicitToJson: true)
class ImmediateGroup {
  ImmediateGroup({
    required this.groupId,
    required this.jobId,
    this.downloadType,
    required this.deviceChargingState,
  });

  factory ImmediateGroup.fromJson(Map<String, dynamic> json) =>
      _$ImmediateGroupFromJson(json);

  @JsonKey(name: 'GroupId')
  final String groupId;
  @JsonKey(name: 'JobId')
  final String jobId;
  @JsonKey(name: 'DownloadType')
  final int? downloadType;
  @JsonKey(name: 'DeviceChargingState')
  final String deviceChargingState;
  static const fromJsonFactory = _$ImmediateGroupFromJson;
  static const toJsonFactory = _$ImmediateGroupToJson;
  Map<String, dynamic> toJson() => _$ImmediateGroupToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ImmediateGroup &&
            (identical(other.groupId, groupId) ||
                const DeepCollectionEquality()
                    .equals(other.groupId, groupId)) &&
            (identical(other.jobId, jobId) ||
                const DeepCollectionEquality().equals(other.jobId, jobId)) &&
            (identical(other.downloadType, downloadType) ||
                const DeepCollectionEquality()
                    .equals(other.downloadType, downloadType)) &&
            (identical(other.deviceChargingState, deviceChargingState) ||
                const DeepCollectionEquality()
                    .equals(other.deviceChargingState, deviceChargingState)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(groupId) ^
      const DeepCollectionEquality().hash(jobId) ^
      const DeepCollectionEquality().hash(downloadType) ^
      const DeepCollectionEquality().hash(deviceChargingState) ^
      runtimeType.hashCode;
}

extension $ImmediateGroupExtension on ImmediateGroup {
  ImmediateGroup copyWith(
      {String? groupId,
      String? jobId,
      int? downloadType,
      String? deviceChargingState}) {
    return ImmediateGroup(
        groupId: groupId ?? this.groupId,
        jobId: jobId ?? this.jobId,
        downloadType: downloadType ?? this.downloadType,
        deviceChargingState: deviceChargingState ?? this.deviceChargingState);
  }
}

@JsonSerializable(explicitToJson: true)
class PeriodicallyGroup {
  PeriodicallyGroup({
    this.recursiveScheduleTime,
    this.groupId,
    this.jobId,
    this.downloadType,
    this.deviceChargingState,
  });

  factory PeriodicallyGroup.fromJson(Map<String, dynamic> json) =>
      _$PeriodicallyGroupFromJson(json);

  @JsonKey(name: 'RecursiveScheduleTime')
  final String? recursiveScheduleTime;
  @JsonKey(name: 'GroupId')
  final String? groupId;
  @JsonKey(name: 'JobId')
  final String? jobId;
  @JsonKey(name: 'DownloadType')
  final int? downloadType;
  @JsonKey(name: 'DeviceChargingState')
  final String? deviceChargingState;
  static const fromJsonFactory = _$PeriodicallyGroupFromJson;
  static const toJsonFactory = _$PeriodicallyGroupToJson;
  Map<String, dynamic> toJson() => _$PeriodicallyGroupToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PeriodicallyGroup &&
            (identical(other.recursiveScheduleTime, recursiveScheduleTime) ||
                const DeepCollectionEquality().equals(
                    other.recursiveScheduleTime, recursiveScheduleTime)) &&
            (identical(other.groupId, groupId) ||
                const DeepCollectionEquality()
                    .equals(other.groupId, groupId)) &&
            (identical(other.jobId, jobId) ||
                const DeepCollectionEquality().equals(other.jobId, jobId)) &&
            (identical(other.downloadType, downloadType) ||
                const DeepCollectionEquality()
                    .equals(other.downloadType, downloadType)) &&
            (identical(other.deviceChargingState, deviceChargingState) ||
                const DeepCollectionEquality()
                    .equals(other.deviceChargingState, deviceChargingState)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(recursiveScheduleTime) ^
      const DeepCollectionEquality().hash(groupId) ^
      const DeepCollectionEquality().hash(jobId) ^
      const DeepCollectionEquality().hash(downloadType) ^
      const DeepCollectionEquality().hash(deviceChargingState) ^
      runtimeType.hashCode;
}

extension $PeriodicallyGroupExtension on PeriodicallyGroup {
  PeriodicallyGroup copyWith(
      {String? recursiveScheduleTime,
      String? groupId,
      String? jobId,
      int? downloadType,
      String? deviceChargingState}) {
    return PeriodicallyGroup(
        recursiveScheduleTime:
            recursiveScheduleTime ?? this.recursiveScheduleTime,
        groupId: groupId ?? this.groupId,
        jobId: jobId ?? this.jobId,
        downloadType: downloadType ?? this.downloadType,
        deviceChargingState: deviceChargingState ?? this.deviceChargingState);
  }
}

@JsonSerializable(explicitToJson: true)
class DaysTimeGroup {
  DaysTimeGroup({
    this.recursiveScheduleTime,
    this.groupId,
    this.jobId,
    this.downloadType,
    this.deviceChargingState,
  });

  factory DaysTimeGroup.fromJson(Map<String, dynamic> json) =>
      _$DaysTimeGroupFromJson(json);

  @JsonKey(name: 'RecursiveScheduleTime')
  final String? recursiveScheduleTime;
  @JsonKey(name: 'GroupId')
  final String? groupId;
  @JsonKey(name: 'JobId')
  final String? jobId;
  @JsonKey(name: 'DownloadType')
  final int? downloadType;
  @JsonKey(name: 'DeviceChargingState')
  final String? deviceChargingState;
  static const fromJsonFactory = _$DaysTimeGroupFromJson;
  static const toJsonFactory = _$DaysTimeGroupToJson;
  Map<String, dynamic> toJson() => _$DaysTimeGroupToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DaysTimeGroup &&
            (identical(other.recursiveScheduleTime, recursiveScheduleTime) ||
                const DeepCollectionEquality().equals(
                    other.recursiveScheduleTime, recursiveScheduleTime)) &&
            (identical(other.groupId, groupId) ||
                const DeepCollectionEquality()
                    .equals(other.groupId, groupId)) &&
            (identical(other.jobId, jobId) ||
                const DeepCollectionEquality().equals(other.jobId, jobId)) &&
            (identical(other.downloadType, downloadType) ||
                const DeepCollectionEquality()
                    .equals(other.downloadType, downloadType)) &&
            (identical(other.deviceChargingState, deviceChargingState) ||
                const DeepCollectionEquality()
                    .equals(other.deviceChargingState, deviceChargingState)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(recursiveScheduleTime) ^
      const DeepCollectionEquality().hash(groupId) ^
      const DeepCollectionEquality().hash(jobId) ^
      const DeepCollectionEquality().hash(downloadType) ^
      const DeepCollectionEquality().hash(deviceChargingState) ^
      runtimeType.hashCode;
}

extension $DaysTimeGroupExtension on DaysTimeGroup {
  DaysTimeGroup copyWith(
      {String? recursiveScheduleTime,
      String? groupId,
      String? jobId,
      int? downloadType,
      String? deviceChargingState}) {
    return DaysTimeGroup(
        recursiveScheduleTime:
            recursiveScheduleTime ?? this.recursiveScheduleTime,
        groupId: groupId ?? this.groupId,
        jobId: jobId ?? this.jobId,
        downloadType: downloadType ?? this.downloadType,
        deviceChargingState: deviceChargingState ?? this.deviceChargingState);
  }
}

@JsonSerializable(explicitToJson: true)
class DateTimeGroup {
  DateTimeGroup({
    this.serverScheduleTime,
    this.groupId,
    this.jobId,
    this.downloadType,
    this.deviceChargingState,
  });

  factory DateTimeGroup.fromJson(Map<String, dynamic> json) =>
      _$DateTimeGroupFromJson(json);

  @JsonKey(name: 'ServerScheduleTime')
  final String? serverScheduleTime;
  @JsonKey(name: 'GroupId')
  final String? groupId;
  @JsonKey(name: 'JobId')
  final String? jobId;
  @JsonKey(name: 'DownloadType')
  final int? downloadType;
  @JsonKey(name: 'DeviceChargingState')
  final String? deviceChargingState;
  static const fromJsonFactory = _$DateTimeGroupFromJson;
  static const toJsonFactory = _$DateTimeGroupToJson;
  Map<String, dynamic> toJson() => _$DateTimeGroupToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DateTimeGroup &&
            (identical(other.serverScheduleTime, serverScheduleTime) ||
                const DeepCollectionEquality()
                    .equals(other.serverScheduleTime, serverScheduleTime)) &&
            (identical(other.groupId, groupId) ||
                const DeepCollectionEquality()
                    .equals(other.groupId, groupId)) &&
            (identical(other.jobId, jobId) ||
                const DeepCollectionEquality().equals(other.jobId, jobId)) &&
            (identical(other.downloadType, downloadType) ||
                const DeepCollectionEquality()
                    .equals(other.downloadType, downloadType)) &&
            (identical(other.deviceChargingState, deviceChargingState) ||
                const DeepCollectionEquality()
                    .equals(other.deviceChargingState, deviceChargingState)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(serverScheduleTime) ^
      const DeepCollectionEquality().hash(groupId) ^
      const DeepCollectionEquality().hash(jobId) ^
      const DeepCollectionEquality().hash(downloadType) ^
      const DeepCollectionEquality().hash(deviceChargingState) ^
      runtimeType.hashCode;
}

extension $DateTimeGroupExtension on DateTimeGroup {
  DateTimeGroup copyWith(
      {String? serverScheduleTime,
      String? groupId,
      String? jobId,
      int? downloadType,
      String? deviceChargingState}) {
    return DateTimeGroup(
        serverScheduleTime: serverScheduleTime ?? this.serverScheduleTime,
        groupId: groupId ?? this.groupId,
        jobId: jobId ?? this.jobId,
        downloadType: downloadType ?? this.downloadType,
        deviceChargingState: deviceChargingState ?? this.deviceChargingState);
  }
}

@JsonSerializable(explicitToJson: true)
class ImmediateTag {
  ImmediateTag({
    required this.tagId,
    required this.jobId,
    this.downloadType,
    this.deviceChargingState,
  });

  factory ImmediateTag.fromJson(Map<String, dynamic> json) =>
      _$ImmediateTagFromJson(json);

  @JsonKey(name: 'TagId')
  final String tagId;
  @JsonKey(name: 'JobId')
  final String jobId;
  @JsonKey(name: 'DownloadType')
  final int? downloadType;
  @JsonKey(name: 'DeviceChargingState')
  final String? deviceChargingState;
  static const fromJsonFactory = _$ImmediateTagFromJson;
  static const toJsonFactory = _$ImmediateTagToJson;
  Map<String, dynamic> toJson() => _$ImmediateTagToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ImmediateTag &&
            (identical(other.tagId, tagId) ||
                const DeepCollectionEquality().equals(other.tagId, tagId)) &&
            (identical(other.jobId, jobId) ||
                const DeepCollectionEquality().equals(other.jobId, jobId)) &&
            (identical(other.downloadType, downloadType) ||
                const DeepCollectionEquality()
                    .equals(other.downloadType, downloadType)) &&
            (identical(other.deviceChargingState, deviceChargingState) ||
                const DeepCollectionEquality()
                    .equals(other.deviceChargingState, deviceChargingState)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(tagId) ^
      const DeepCollectionEquality().hash(jobId) ^
      const DeepCollectionEquality().hash(downloadType) ^
      const DeepCollectionEquality().hash(deviceChargingState) ^
      runtimeType.hashCode;
}

extension $ImmediateTagExtension on ImmediateTag {
  ImmediateTag copyWith(
      {String? tagId,
      String? jobId,
      int? downloadType,
      String? deviceChargingState}) {
    return ImmediateTag(
        tagId: tagId ?? this.tagId,
        jobId: jobId ?? this.jobId,
        downloadType: downloadType ?? this.downloadType,
        deviceChargingState: deviceChargingState ?? this.deviceChargingState);
  }
}

@JsonSerializable(explicitToJson: true)
class PeriodicallyTag {
  PeriodicallyTag({
    this.recursiveScheduleTime,
    this.tagId,
    this.jobId,
    this.downloadType,
    this.deviceChargingState,
  });

  factory PeriodicallyTag.fromJson(Map<String, dynamic> json) =>
      _$PeriodicallyTagFromJson(json);

  @JsonKey(name: 'RecursiveScheduleTime')
  final String? recursiveScheduleTime;
  @JsonKey(name: 'TagId')
  final String? tagId;
  @JsonKey(name: 'JobId')
  final String? jobId;
  @JsonKey(name: 'DownloadType')
  final int? downloadType;
  @JsonKey(name: 'DeviceChargingState')
  final String? deviceChargingState;
  static const fromJsonFactory = _$PeriodicallyTagFromJson;
  static const toJsonFactory = _$PeriodicallyTagToJson;
  Map<String, dynamic> toJson() => _$PeriodicallyTagToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PeriodicallyTag &&
            (identical(other.recursiveScheduleTime, recursiveScheduleTime) ||
                const DeepCollectionEquality().equals(
                    other.recursiveScheduleTime, recursiveScheduleTime)) &&
            (identical(other.tagId, tagId) ||
                const DeepCollectionEquality().equals(other.tagId, tagId)) &&
            (identical(other.jobId, jobId) ||
                const DeepCollectionEquality().equals(other.jobId, jobId)) &&
            (identical(other.downloadType, downloadType) ||
                const DeepCollectionEquality()
                    .equals(other.downloadType, downloadType)) &&
            (identical(other.deviceChargingState, deviceChargingState) ||
                const DeepCollectionEquality()
                    .equals(other.deviceChargingState, deviceChargingState)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(recursiveScheduleTime) ^
      const DeepCollectionEquality().hash(tagId) ^
      const DeepCollectionEquality().hash(jobId) ^
      const DeepCollectionEquality().hash(downloadType) ^
      const DeepCollectionEquality().hash(deviceChargingState) ^
      runtimeType.hashCode;
}

extension $PeriodicallyTagExtension on PeriodicallyTag {
  PeriodicallyTag copyWith(
      {String? recursiveScheduleTime,
      String? tagId,
      String? jobId,
      int? downloadType,
      String? deviceChargingState}) {
    return PeriodicallyTag(
        recursiveScheduleTime:
            recursiveScheduleTime ?? this.recursiveScheduleTime,
        tagId: tagId ?? this.tagId,
        jobId: jobId ?? this.jobId,
        downloadType: downloadType ?? this.downloadType,
        deviceChargingState: deviceChargingState ?? this.deviceChargingState);
  }
}

@JsonSerializable(explicitToJson: true)
class DaysTimeTag {
  DaysTimeTag({
    this.recursiveScheduleTime,
    this.tagId,
    this.jobId,
    this.downloadType,
    this.deviceChargingState,
  });

  factory DaysTimeTag.fromJson(Map<String, dynamic> json) =>
      _$DaysTimeTagFromJson(json);

  @JsonKey(name: 'RecursiveScheduleTime')
  final String? recursiveScheduleTime;
  @JsonKey(name: 'TagId')
  final String? tagId;
  @JsonKey(name: 'JobId')
  final String? jobId;
  @JsonKey(name: 'DownloadType')
  final int? downloadType;
  @JsonKey(name: 'DeviceChargingState')
  final String? deviceChargingState;
  static const fromJsonFactory = _$DaysTimeTagFromJson;
  static const toJsonFactory = _$DaysTimeTagToJson;
  Map<String, dynamic> toJson() => _$DaysTimeTagToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DaysTimeTag &&
            (identical(other.recursiveScheduleTime, recursiveScheduleTime) ||
                const DeepCollectionEquality().equals(
                    other.recursiveScheduleTime, recursiveScheduleTime)) &&
            (identical(other.tagId, tagId) ||
                const DeepCollectionEquality().equals(other.tagId, tagId)) &&
            (identical(other.jobId, jobId) ||
                const DeepCollectionEquality().equals(other.jobId, jobId)) &&
            (identical(other.downloadType, downloadType) ||
                const DeepCollectionEquality()
                    .equals(other.downloadType, downloadType)) &&
            (identical(other.deviceChargingState, deviceChargingState) ||
                const DeepCollectionEquality()
                    .equals(other.deviceChargingState, deviceChargingState)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(recursiveScheduleTime) ^
      const DeepCollectionEquality().hash(tagId) ^
      const DeepCollectionEquality().hash(jobId) ^
      const DeepCollectionEquality().hash(downloadType) ^
      const DeepCollectionEquality().hash(deviceChargingState) ^
      runtimeType.hashCode;
}

extension $DaysTimeTagExtension on DaysTimeTag {
  DaysTimeTag copyWith(
      {String? recursiveScheduleTime,
      String? tagId,
      String? jobId,
      int? downloadType,
      String? deviceChargingState}) {
    return DaysTimeTag(
        recursiveScheduleTime:
            recursiveScheduleTime ?? this.recursiveScheduleTime,
        tagId: tagId ?? this.tagId,
        jobId: jobId ?? this.jobId,
        downloadType: downloadType ?? this.downloadType,
        deviceChargingState: deviceChargingState ?? this.deviceChargingState);
  }
}

@JsonSerializable(explicitToJson: true)
class DateTimeTag {
  DateTimeTag({
    this.serverScheduleTime,
    this.tagId,
    this.jobId,
    this.downloadType,
    this.deviceChargingState,
  });

  factory DateTimeTag.fromJson(Map<String, dynamic> json) =>
      _$DateTimeTagFromJson(json);

  @JsonKey(name: 'ServerScheduleTime')
  final String? serverScheduleTime;
  @JsonKey(name: 'TagId')
  final String? tagId;
  @JsonKey(name: 'JobId')
  final String? jobId;
  @JsonKey(name: 'DownloadType')
  final int? downloadType;
  @JsonKey(name: 'DeviceChargingState')
  final String? deviceChargingState;
  static const fromJsonFactory = _$DateTimeTagFromJson;
  static const toJsonFactory = _$DateTimeTagToJson;
  Map<String, dynamic> toJson() => _$DateTimeTagToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DateTimeTag &&
            (identical(other.serverScheduleTime, serverScheduleTime) ||
                const DeepCollectionEquality()
                    .equals(other.serverScheduleTime, serverScheduleTime)) &&
            (identical(other.tagId, tagId) ||
                const DeepCollectionEquality().equals(other.tagId, tagId)) &&
            (identical(other.jobId, jobId) ||
                const DeepCollectionEquality().equals(other.jobId, jobId)) &&
            (identical(other.downloadType, downloadType) ||
                const DeepCollectionEquality()
                    .equals(other.downloadType, downloadType)) &&
            (identical(other.deviceChargingState, deviceChargingState) ||
                const DeepCollectionEquality()
                    .equals(other.deviceChargingState, deviceChargingState)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(serverScheduleTime) ^
      const DeepCollectionEquality().hash(tagId) ^
      const DeepCollectionEquality().hash(jobId) ^
      const DeepCollectionEquality().hash(downloadType) ^
      const DeepCollectionEquality().hash(deviceChargingState) ^
      runtimeType.hashCode;
}

extension $DateTimeTagExtension on DateTimeTag {
  DateTimeTag copyWith(
      {String? serverScheduleTime,
      String? tagId,
      String? jobId,
      int? downloadType,
      String? deviceChargingState}) {
    return DateTimeTag(
        serverScheduleTime: serverScheduleTime ?? this.serverScheduleTime,
        tagId: tagId ?? this.tagId,
        jobId: jobId ?? this.jobId,
        downloadType: downloadType ?? this.downloadType,
        deviceChargingState: deviceChargingState ?? this.deviceChargingState);
  }
}

@JsonSerializable(explicitToJson: true)
class Immediate {
  Immediate({
    required this.deviceIds,
    required this.jobId,
    this.downloadType,
    required this.deviceChargingState,
  });

  factory Immediate.fromJson(Map<String, dynamic> json) =>
      _$ImmediateFromJson(json);

  @JsonKey(name: 'DeviceIds', defaultValue: <String>[])
  final List<String> deviceIds;
  @JsonKey(name: 'JobId')
  final String jobId;
  @JsonKey(name: 'DownloadType')
  final int? downloadType;
  @JsonKey(name: 'DeviceChargingState')
  final String deviceChargingState;
  static const fromJsonFactory = _$ImmediateFromJson;
  static const toJsonFactory = _$ImmediateToJson;
  Map<String, dynamic> toJson() => _$ImmediateToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Immediate &&
            (identical(other.deviceIds, deviceIds) ||
                const DeepCollectionEquality()
                    .equals(other.deviceIds, deviceIds)) &&
            (identical(other.jobId, jobId) ||
                const DeepCollectionEquality().equals(other.jobId, jobId)) &&
            (identical(other.downloadType, downloadType) ||
                const DeepCollectionEquality()
                    .equals(other.downloadType, downloadType)) &&
            (identical(other.deviceChargingState, deviceChargingState) ||
                const DeepCollectionEquality()
                    .equals(other.deviceChargingState, deviceChargingState)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(deviceIds) ^
      const DeepCollectionEquality().hash(jobId) ^
      const DeepCollectionEquality().hash(downloadType) ^
      const DeepCollectionEquality().hash(deviceChargingState) ^
      runtimeType.hashCode;
}

extension $ImmediateExtension on Immediate {
  Immediate copyWith(
      {List<String>? deviceIds,
      String? jobId,
      int? downloadType,
      String? deviceChargingState}) {
    return Immediate(
        deviceIds: deviceIds ?? this.deviceIds,
        jobId: jobId ?? this.jobId,
        downloadType: downloadType ?? this.downloadType,
        deviceChargingState: deviceChargingState ?? this.deviceChargingState);
  }
}

@JsonSerializable(explicitToJson: true)
class Periodically {
  Periodically({
    this.recursiveScheduleTime,
    this.deviceIds,
    this.jobId,
    this.downloadType,
    this.deviceChargingState,
  });

  factory Periodically.fromJson(Map<String, dynamic> json) =>
      _$PeriodicallyFromJson(json);

  @JsonKey(name: 'RecursiveScheduleTime')
  final String? recursiveScheduleTime;
  @JsonKey(name: 'DeviceIds', defaultValue: <String>[])
  final List<String>? deviceIds;
  @JsonKey(name: 'JobId')
  final String? jobId;
  @JsonKey(name: 'DownloadType')
  final int? downloadType;
  @JsonKey(name: 'DeviceChargingState')
  final String? deviceChargingState;
  static const fromJsonFactory = _$PeriodicallyFromJson;
  static const toJsonFactory = _$PeriodicallyToJson;
  Map<String, dynamic> toJson() => _$PeriodicallyToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Periodically &&
            (identical(other.recursiveScheduleTime, recursiveScheduleTime) ||
                const DeepCollectionEquality().equals(
                    other.recursiveScheduleTime, recursiveScheduleTime)) &&
            (identical(other.deviceIds, deviceIds) ||
                const DeepCollectionEquality()
                    .equals(other.deviceIds, deviceIds)) &&
            (identical(other.jobId, jobId) ||
                const DeepCollectionEquality().equals(other.jobId, jobId)) &&
            (identical(other.downloadType, downloadType) ||
                const DeepCollectionEquality()
                    .equals(other.downloadType, downloadType)) &&
            (identical(other.deviceChargingState, deviceChargingState) ||
                const DeepCollectionEquality()
                    .equals(other.deviceChargingState, deviceChargingState)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(recursiveScheduleTime) ^
      const DeepCollectionEquality().hash(deviceIds) ^
      const DeepCollectionEquality().hash(jobId) ^
      const DeepCollectionEquality().hash(downloadType) ^
      const DeepCollectionEquality().hash(deviceChargingState) ^
      runtimeType.hashCode;
}

extension $PeriodicallyExtension on Periodically {
  Periodically copyWith(
      {String? recursiveScheduleTime,
      List<String>? deviceIds,
      String? jobId,
      int? downloadType,
      String? deviceChargingState}) {
    return Periodically(
        recursiveScheduleTime:
            recursiveScheduleTime ?? this.recursiveScheduleTime,
        deviceIds: deviceIds ?? this.deviceIds,
        jobId: jobId ?? this.jobId,
        downloadType: downloadType ?? this.downloadType,
        deviceChargingState: deviceChargingState ?? this.deviceChargingState);
  }
}

@JsonSerializable(explicitToJson: true)
class DaysTime {
  DaysTime({
    this.recursiveScheduleTime,
    this.deviceIds,
    this.jobId,
    this.downloadType,
    this.deviceChargingState,
  });

  factory DaysTime.fromJson(Map<String, dynamic> json) =>
      _$DaysTimeFromJson(json);

  @JsonKey(name: 'RecursiveScheduleTime')
  final String? recursiveScheduleTime;
  @JsonKey(name: 'DeviceIds', defaultValue: <String>[])
  final List<String>? deviceIds;
  @JsonKey(name: 'JobId')
  final String? jobId;
  @JsonKey(name: 'DownloadType')
  final int? downloadType;
  @JsonKey(name: 'DeviceChargingState')
  final String? deviceChargingState;
  static const fromJsonFactory = _$DaysTimeFromJson;
  static const toJsonFactory = _$DaysTimeToJson;
  Map<String, dynamic> toJson() => _$DaysTimeToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DaysTime &&
            (identical(other.recursiveScheduleTime, recursiveScheduleTime) ||
                const DeepCollectionEquality().equals(
                    other.recursiveScheduleTime, recursiveScheduleTime)) &&
            (identical(other.deviceIds, deviceIds) ||
                const DeepCollectionEquality()
                    .equals(other.deviceIds, deviceIds)) &&
            (identical(other.jobId, jobId) ||
                const DeepCollectionEquality().equals(other.jobId, jobId)) &&
            (identical(other.downloadType, downloadType) ||
                const DeepCollectionEquality()
                    .equals(other.downloadType, downloadType)) &&
            (identical(other.deviceChargingState, deviceChargingState) ||
                const DeepCollectionEquality()
                    .equals(other.deviceChargingState, deviceChargingState)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(recursiveScheduleTime) ^
      const DeepCollectionEquality().hash(deviceIds) ^
      const DeepCollectionEquality().hash(jobId) ^
      const DeepCollectionEquality().hash(downloadType) ^
      const DeepCollectionEquality().hash(deviceChargingState) ^
      runtimeType.hashCode;
}

extension $DaysTimeExtension on DaysTime {
  DaysTime copyWith(
      {String? recursiveScheduleTime,
      List<String>? deviceIds,
      String? jobId,
      int? downloadType,
      String? deviceChargingState}) {
    return DaysTime(
        recursiveScheduleTime:
            recursiveScheduleTime ?? this.recursiveScheduleTime,
        deviceIds: deviceIds ?? this.deviceIds,
        jobId: jobId ?? this.jobId,
        downloadType: downloadType ?? this.downloadType,
        deviceChargingState: deviceChargingState ?? this.deviceChargingState);
  }
}

@JsonSerializable(explicitToJson: true)
class DateTime {
  DateTime({
    this.serverScheduleTime,
    this.deviceIds,
    this.jobId,
    this.downloadType,
    this.deviceChargingState,
  });

  factory DateTime.fromJson(Map<String, dynamic> json) =>
      _$DateTimeFromJson(json);

  @JsonKey(name: 'ServerScheduleTime')
  final String? serverScheduleTime;
  @JsonKey(name: 'DeviceIds', defaultValue: <String>[])
  final List<String>? deviceIds;
  @JsonKey(name: 'JobId')
  final String? jobId;
  @JsonKey(name: 'DownloadType')
  final int? downloadType;
  @JsonKey(name: 'DeviceChargingState')
  final String? deviceChargingState;
  static const fromJsonFactory = _$DateTimeFromJson;
  static const toJsonFactory = _$DateTimeToJson;
  Map<String, dynamic> toJson() => _$DateTimeToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DateTime &&
            (identical(other.serverScheduleTime, serverScheduleTime) ||
                const DeepCollectionEquality()
                    .equals(other.serverScheduleTime, serverScheduleTime)) &&
            (identical(other.deviceIds, deviceIds) ||
                const DeepCollectionEquality()
                    .equals(other.deviceIds, deviceIds)) &&
            (identical(other.jobId, jobId) ||
                const DeepCollectionEquality().equals(other.jobId, jobId)) &&
            (identical(other.downloadType, downloadType) ||
                const DeepCollectionEquality()
                    .equals(other.downloadType, downloadType)) &&
            (identical(other.deviceChargingState, deviceChargingState) ||
                const DeepCollectionEquality()
                    .equals(other.deviceChargingState, deviceChargingState)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(serverScheduleTime) ^
      const DeepCollectionEquality().hash(deviceIds) ^
      const DeepCollectionEquality().hash(jobId) ^
      const DeepCollectionEquality().hash(downloadType) ^
      const DeepCollectionEquality().hash(deviceChargingState) ^
      runtimeType.hashCode;
}

extension $DateTimeExtension on DateTime {
  DateTime copyWith(
      {String? serverScheduleTime,
      List<String>? deviceIds,
      String? jobId,
      int? downloadType,
      String? deviceChargingState}) {
    return DateTime(
        serverScheduleTime: serverScheduleTime ?? this.serverScheduleTime,
        deviceIds: deviceIds ?? this.deviceIds,
        jobId: jobId ?? this.jobId,
        downloadType: downloadType ?? this.downloadType,
        deviceChargingState: deviceChargingState ?? this.deviceChargingState);
  }
}

@JsonSerializable(explicitToJson: true)
class DeleteDevice {
  DeleteDevice({
    required this.deviceId,
    required this.action,
  });

  factory DeleteDevice.fromJson(Map<String, dynamic> json) =>
      _$DeleteDeviceFromJson(json);

  @JsonKey(name: 'DeviceId')
  final String deviceId;
  @JsonKey(
      name: 'Action',
      toJson: deleteDeviceActionToJson,
      fromJson: deleteDeviceActionFromJson)
  final enums.DeleteDeviceAction action;
  static const fromJsonFactory = _$DeleteDeviceFromJson;
  static const toJsonFactory = _$DeleteDeviceToJson;
  Map<String, dynamic> toJson() => _$DeleteDeviceToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeleteDevice &&
            (identical(other.deviceId, deviceId) ||
                const DeepCollectionEquality()
                    .equals(other.deviceId, deviceId)) &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(deviceId) ^
      const DeepCollectionEquality().hash(action) ^
      runtimeType.hashCode;
}

extension $DeleteDeviceExtension on DeleteDevice {
  DeleteDevice copyWith({String? deviceId, enums.DeleteDeviceAction? action}) {
    return DeleteDevice(
        deviceId: deviceId ?? this.deviceId, action: action ?? this.action);
  }
}

@JsonSerializable(explicitToJson: true)
class DataUsageOutput {
  DataUsageOutput({
    this.deviceId,
    this.deviceName,
    this.deviceTotalWifiDataUsage,
    this.deviceTotalMobileDataUsage,
    this.appsDataUsage,
    this.dataUsage,
    this.currentCycleStartDate,
    this.currentCycleEndDate,
    this.prevCycleStartDate,
    this.prevCycleEndDate,
  });

  factory DataUsageOutput.fromJson(Map<String, dynamic> json) =>
      _$DataUsageOutputFromJson(json);

  @JsonKey(name: 'DeviceId')
  final String? deviceId;
  @JsonKey(name: 'DeviceName')
  final String? deviceName;
  @JsonKey(name: 'DeviceTotalWifiDataUsage')
  final int? deviceTotalWifiDataUsage;
  @JsonKey(name: 'DeviceTotalMobileDataUsage')
  final int? deviceTotalMobileDataUsage;
  @JsonKey(
      name: 'AppsDataUsage', defaultValue: <DataUsageOutput$AppsDataUsage>[])
  final List<DataUsageOutput$AppsDataUsage>? appsDataUsage;
  @JsonKey(name: 'DataUsage', defaultValue: <DataUsageOutput$DataUsage>[])
  final List<DataUsageOutput$DataUsage>? dataUsage;
  @JsonKey(name: 'CurrentCycleStartDate')
  final String? currentCycleStartDate;
  @JsonKey(name: 'CurrentCycleEndDate')
  final String? currentCycleEndDate;
  @JsonKey(name: 'PrevCycleStartDate')
  final String? prevCycleStartDate;
  @JsonKey(name: 'PrevCycleEndDate')
  final String? prevCycleEndDate;
  static const fromJsonFactory = _$DataUsageOutputFromJson;
  static const toJsonFactory = _$DataUsageOutputToJson;
  Map<String, dynamic> toJson() => _$DataUsageOutputToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DataUsageOutput &&
            (identical(other.deviceId, deviceId) ||
                const DeepCollectionEquality()
                    .equals(other.deviceId, deviceId)) &&
            (identical(other.deviceName, deviceName) ||
                const DeepCollectionEquality()
                    .equals(other.deviceName, deviceName)) &&
            (identical(
                    other.deviceTotalWifiDataUsage, deviceTotalWifiDataUsage) ||
                const DeepCollectionEquality().equals(
                    other.deviceTotalWifiDataUsage,
                    deviceTotalWifiDataUsage)) &&
            (identical(other.deviceTotalMobileDataUsage,
                    deviceTotalMobileDataUsage) ||
                const DeepCollectionEquality().equals(
                    other.deviceTotalMobileDataUsage,
                    deviceTotalMobileDataUsage)) &&
            (identical(other.appsDataUsage, appsDataUsage) ||
                const DeepCollectionEquality()
                    .equals(other.appsDataUsage, appsDataUsage)) &&
            (identical(other.dataUsage, dataUsage) ||
                const DeepCollectionEquality()
                    .equals(other.dataUsage, dataUsage)) &&
            (identical(other.currentCycleStartDate, currentCycleStartDate) ||
                const DeepCollectionEquality().equals(
                    other.currentCycleStartDate, currentCycleStartDate)) &&
            (identical(other.currentCycleEndDate, currentCycleEndDate) ||
                const DeepCollectionEquality()
                    .equals(other.currentCycleEndDate, currentCycleEndDate)) &&
            (identical(other.prevCycleStartDate, prevCycleStartDate) ||
                const DeepCollectionEquality()
                    .equals(other.prevCycleStartDate, prevCycleStartDate)) &&
            (identical(other.prevCycleEndDate, prevCycleEndDate) ||
                const DeepCollectionEquality()
                    .equals(other.prevCycleEndDate, prevCycleEndDate)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(deviceId) ^
      const DeepCollectionEquality().hash(deviceName) ^
      const DeepCollectionEquality().hash(deviceTotalWifiDataUsage) ^
      const DeepCollectionEquality().hash(deviceTotalMobileDataUsage) ^
      const DeepCollectionEquality().hash(appsDataUsage) ^
      const DeepCollectionEquality().hash(dataUsage) ^
      const DeepCollectionEquality().hash(currentCycleStartDate) ^
      const DeepCollectionEquality().hash(currentCycleEndDate) ^
      const DeepCollectionEquality().hash(prevCycleStartDate) ^
      const DeepCollectionEquality().hash(prevCycleEndDate) ^
      runtimeType.hashCode;
}

extension $DataUsageOutputExtension on DataUsageOutput {
  DataUsageOutput copyWith(
      {String? deviceId,
      String? deviceName,
      int? deviceTotalWifiDataUsage,
      int? deviceTotalMobileDataUsage,
      List<DataUsageOutput$AppsDataUsage>? appsDataUsage,
      List<DataUsageOutput$DataUsage>? dataUsage,
      String? currentCycleStartDate,
      String? currentCycleEndDate,
      String? prevCycleStartDate,
      String? prevCycleEndDate}) {
    return DataUsageOutput(
        deviceId: deviceId ?? this.deviceId,
        deviceName: deviceName ?? this.deviceName,
        deviceTotalWifiDataUsage:
            deviceTotalWifiDataUsage ?? this.deviceTotalWifiDataUsage,
        deviceTotalMobileDataUsage:
            deviceTotalMobileDataUsage ?? this.deviceTotalMobileDataUsage,
        appsDataUsage: appsDataUsage ?? this.appsDataUsage,
        dataUsage: dataUsage ?? this.dataUsage,
        currentCycleStartDate:
            currentCycleStartDate ?? this.currentCycleStartDate,
        currentCycleEndDate: currentCycleEndDate ?? this.currentCycleEndDate,
        prevCycleStartDate: prevCycleStartDate ?? this.prevCycleStartDate,
        prevCycleEndDate: prevCycleEndDate ?? this.prevCycleEndDate);
  }
}

typedef DeviceLogOutput = List<DeviceLogOutput$Item>;

@JsonSerializable(explicitToJson: true)
class DeviceLogOutput$Item {
  DeviceLogOutput$Item({
    this.time,
    this.message,
    this.type,
  });

  factory DeviceLogOutput$Item.fromJson(Map<String, dynamic> json) =>
      _$DeviceLogOutput$ItemFromJson(json);

  @JsonKey(name: 'Time')
  final String? time;
  @JsonKey(name: 'Message')
  final String? message;
  @JsonKey(name: 'Type')
  final String? type;
  static const fromJsonFactory = _$DeviceLogOutput$ItemFromJson;
  static const toJsonFactory = _$DeviceLogOutput$ItemToJson;
  Map<String, dynamic> toJson() => _$DeviceLogOutput$ItemToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeviceLogOutput$Item &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(time) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $DeviceLogOutput$ItemExtension on DeviceLogOutput$Item {
  DeviceLogOutput$Item copyWith({String? time, String? message, String? type}) {
    return DeviceLogOutput$Item(
        time: time ?? this.time,
        message: message ?? this.message,
        type: type ?? this.type);
  }
}

@JsonSerializable(explicitToJson: true)
class ReportOutPutModel {
  ReportOutPutModel({
    this.reportID,
    this.reportName,
    this.reportDescription,
    this.useInfluxQueryReports,
  });

  factory ReportOutPutModel.fromJson(Map<String, dynamic> json) =>
      _$ReportOutPutModelFromJson(json);

  @JsonKey(name: 'ReportID')
  final int? reportID;
  @JsonKey(name: 'ReportName')
  final String? reportName;
  @JsonKey(name: 'ReportDescription')
  final String? reportDescription;
  @JsonKey(name: 'UseInfluxQueryReports')
  final String? useInfluxQueryReports;
  static const fromJsonFactory = _$ReportOutPutModelFromJson;
  static const toJsonFactory = _$ReportOutPutModelToJson;
  Map<String, dynamic> toJson() => _$ReportOutPutModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ReportOutPutModel &&
            (identical(other.reportID, reportID) ||
                const DeepCollectionEquality()
                    .equals(other.reportID, reportID)) &&
            (identical(other.reportName, reportName) ||
                const DeepCollectionEquality()
                    .equals(other.reportName, reportName)) &&
            (identical(other.reportDescription, reportDescription) ||
                const DeepCollectionEquality()
                    .equals(other.reportDescription, reportDescription)) &&
            (identical(other.useInfluxQueryReports, useInfluxQueryReports) ||
                const DeepCollectionEquality().equals(
                    other.useInfluxQueryReports, useInfluxQueryReports)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(reportID) ^
      const DeepCollectionEquality().hash(reportName) ^
      const DeepCollectionEquality().hash(reportDescription) ^
      const DeepCollectionEquality().hash(useInfluxQueryReports) ^
      runtimeType.hashCode;
}

extension $ReportOutPutModelExtension on ReportOutPutModel {
  ReportOutPutModel copyWith(
      {int? reportID,
      String? reportName,
      String? reportDescription,
      String? useInfluxQueryReports}) {
    return ReportOutPutModel(
        reportID: reportID ?? this.reportID,
        reportName: reportName ?? this.reportName,
        reportDescription: reportDescription ?? this.reportDescription,
        useInfluxQueryReports:
            useInfluxQueryReports ?? this.useInfluxQueryReports);
  }
}

@JsonSerializable(explicitToJson: true)
class ReportModel {
  ReportModel({
    this.offlineReportId,
    this.queryParams,
    this.reportType,
    this.timeZone,
    this.uRLReports,
    this.reportParams,
    this.reportID,
    this.sendMail,
    this.emailID,
    this.statusOfflineReports,
    this.timeStamp,
    this.isReadReports,
    this.statusReports,
    this.markDelete,
    this.groupName,
  });

  factory ReportModel.fromJson(Map<String, dynamic> json) =>
      _$ReportModelFromJson(json);

  @JsonKey(name: 'OfflineReportId')
  final String? offlineReportId;
  @JsonKey(name: 'QueryParams')
  final String? queryParams;
  @JsonKey(name: 'ReportType')
  final String? reportType;
  @JsonKey(name: 'TimeZone')
  final String? timeZone;
  @JsonKey(name: 'URLReports')
  final String? uRLReports;
  @JsonKey(name: 'ReportParams')
  final String? reportParams;
  @JsonKey(name: 'ReportID')
  final String? reportID;
  @JsonKey(name: 'SendMail')
  final bool? sendMail;
  @JsonKey(name: 'EmailID')
  final String? emailID;
  @JsonKey(name: 'StatusOfflineReports')
  final String? statusOfflineReports;
  @JsonKey(name: 'TimeStamp')
  final String? timeStamp;
  @JsonKey(name: 'isReadReports')
  final bool? isReadReports;
  @JsonKey(name: 'StatusReports')
  final bool? statusReports;
  @JsonKey(name: 'MarkDelete')
  final String? markDelete;
  @JsonKey(name: 'GroupName')
  final String? groupName;
  static const fromJsonFactory = _$ReportModelFromJson;
  static const toJsonFactory = _$ReportModelToJson;
  Map<String, dynamic> toJson() => _$ReportModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ReportModel &&
            (identical(other.offlineReportId, offlineReportId) ||
                const DeepCollectionEquality()
                    .equals(other.offlineReportId, offlineReportId)) &&
            (identical(other.queryParams, queryParams) ||
                const DeepCollectionEquality()
                    .equals(other.queryParams, queryParams)) &&
            (identical(other.reportType, reportType) ||
                const DeepCollectionEquality()
                    .equals(other.reportType, reportType)) &&
            (identical(other.timeZone, timeZone) ||
                const DeepCollectionEquality()
                    .equals(other.timeZone, timeZone)) &&
            (identical(other.uRLReports, uRLReports) ||
                const DeepCollectionEquality()
                    .equals(other.uRLReports, uRLReports)) &&
            (identical(other.reportParams, reportParams) ||
                const DeepCollectionEquality()
                    .equals(other.reportParams, reportParams)) &&
            (identical(other.reportID, reportID) ||
                const DeepCollectionEquality()
                    .equals(other.reportID, reportID)) &&
            (identical(other.sendMail, sendMail) ||
                const DeepCollectionEquality()
                    .equals(other.sendMail, sendMail)) &&
            (identical(other.emailID, emailID) ||
                const DeepCollectionEquality()
                    .equals(other.emailID, emailID)) &&
            (identical(other.statusOfflineReports, statusOfflineReports) ||
                const DeepCollectionEquality().equals(
                    other.statusOfflineReports, statusOfflineReports)) &&
            (identical(other.timeStamp, timeStamp) ||
                const DeepCollectionEquality()
                    .equals(other.timeStamp, timeStamp)) &&
            (identical(other.isReadReports, isReadReports) ||
                const DeepCollectionEquality()
                    .equals(other.isReadReports, isReadReports)) &&
            (identical(other.statusReports, statusReports) ||
                const DeepCollectionEquality()
                    .equals(other.statusReports, statusReports)) &&
            (identical(other.markDelete, markDelete) ||
                const DeepCollectionEquality()
                    .equals(other.markDelete, markDelete)) &&
            (identical(other.groupName, groupName) ||
                const DeepCollectionEquality()
                    .equals(other.groupName, groupName)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(offlineReportId) ^
      const DeepCollectionEquality().hash(queryParams) ^
      const DeepCollectionEquality().hash(reportType) ^
      const DeepCollectionEquality().hash(timeZone) ^
      const DeepCollectionEquality().hash(uRLReports) ^
      const DeepCollectionEquality().hash(reportParams) ^
      const DeepCollectionEquality().hash(reportID) ^
      const DeepCollectionEquality().hash(sendMail) ^
      const DeepCollectionEquality().hash(emailID) ^
      const DeepCollectionEquality().hash(statusOfflineReports) ^
      const DeepCollectionEquality().hash(timeStamp) ^
      const DeepCollectionEquality().hash(isReadReports) ^
      const DeepCollectionEquality().hash(statusReports) ^
      const DeepCollectionEquality().hash(markDelete) ^
      const DeepCollectionEquality().hash(groupName) ^
      runtimeType.hashCode;
}

extension $ReportModelExtension on ReportModel {
  ReportModel copyWith(
      {String? offlineReportId,
      String? queryParams,
      String? reportType,
      String? timeZone,
      String? uRLReports,
      String? reportParams,
      String? reportID,
      bool? sendMail,
      String? emailID,
      String? statusOfflineReports,
      String? timeStamp,
      bool? isReadReports,
      bool? statusReports,
      String? markDelete,
      String? groupName}) {
    return ReportModel(
        offlineReportId: offlineReportId ?? this.offlineReportId,
        queryParams: queryParams ?? this.queryParams,
        reportType: reportType ?? this.reportType,
        timeZone: timeZone ?? this.timeZone,
        uRLReports: uRLReports ?? this.uRLReports,
        reportParams: reportParams ?? this.reportParams,
        reportID: reportID ?? this.reportID,
        sendMail: sendMail ?? this.sendMail,
        emailID: emailID ?? this.emailID,
        statusOfflineReports: statusOfflineReports ?? this.statusOfflineReports,
        timeStamp: timeStamp ?? this.timeStamp,
        isReadReports: isReadReports ?? this.isReadReports,
        statusReports: statusReports ?? this.statusReports,
        markDelete: markDelete ?? this.markDelete,
        groupName: groupName ?? this.groupName);
  }
}

@JsonSerializable(explicitToJson: true)
class JobQueueDevice {
  JobQueueDevice({
    required this.deviceIds,
    this.showHistory,
    this.bShowAll,
    this.jobqueueStatus,
  });

  factory JobQueueDevice.fromJson(Map<String, dynamic> json) =>
      _$JobQueueDeviceFromJson(json);

  @JsonKey(name: 'DeviceIds')
  final String deviceIds;
  @JsonKey(name: 'ShowHistory')
  final bool? showHistory;
  @JsonKey(name: 'bShowAll')
  final bool? bShowAll;
  @JsonKey(
      name: 'JobqueueStatus',
      toJson: jobQueueDeviceJobqueueStatusToJson,
      fromJson: jobQueueDeviceJobqueueStatusFromJson)
  final enums.JobQueueDeviceJobqueueStatus? jobqueueStatus;
  static const fromJsonFactory = _$JobQueueDeviceFromJson;
  static const toJsonFactory = _$JobQueueDeviceToJson;
  Map<String, dynamic> toJson() => _$JobQueueDeviceToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is JobQueueDevice &&
            (identical(other.deviceIds, deviceIds) ||
                const DeepCollectionEquality()
                    .equals(other.deviceIds, deviceIds)) &&
            (identical(other.showHistory, showHistory) ||
                const DeepCollectionEquality()
                    .equals(other.showHistory, showHistory)) &&
            (identical(other.bShowAll, bShowAll) ||
                const DeepCollectionEquality()
                    .equals(other.bShowAll, bShowAll)) &&
            (identical(other.jobqueueStatus, jobqueueStatus) ||
                const DeepCollectionEquality()
                    .equals(other.jobqueueStatus, jobqueueStatus)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(deviceIds) ^
      const DeepCollectionEquality().hash(showHistory) ^
      const DeepCollectionEquality().hash(bShowAll) ^
      const DeepCollectionEquality().hash(jobqueueStatus) ^
      runtimeType.hashCode;
}

extension $JobQueueDeviceExtension on JobQueueDevice {
  JobQueueDevice copyWith(
      {String? deviceIds,
      bool? showHistory,
      bool? bShowAll,
      enums.JobQueueDeviceJobqueueStatus? jobqueueStatus}) {
    return JobQueueDevice(
        deviceIds: deviceIds ?? this.deviceIds,
        showHistory: showHistory ?? this.showHistory,
        bShowAll: bShowAll ?? this.bShowAll,
        jobqueueStatus: jobqueueStatus ?? this.jobqueueStatus);
  }
}

@JsonSerializable(explicitToJson: true)
class DynamicJobQueueDevice {
  DynamicJobQueueDevice({
    this.payLoad,
  });

  factory DynamicJobQueueDevice.fromJson(Map<String, dynamic> json) =>
      _$DynamicJobQueueDeviceFromJson(json);

  @JsonKey(name: 'PayLoad')
  final String? payLoad;
  static const fromJsonFactory = _$DynamicJobQueueDeviceFromJson;
  static const toJsonFactory = _$DynamicJobQueueDeviceToJson;
  Map<String, dynamic> toJson() => _$DynamicJobQueueDeviceToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DynamicJobQueueDevice &&
            (identical(other.payLoad, payLoad) ||
                const DeepCollectionEquality().equals(other.payLoad, payLoad)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(payLoad) ^ runtimeType.hashCode;
}

extension $DynamicJobQueueDeviceExtension on DynamicJobQueueDevice {
  DynamicJobQueueDevice copyWith({String? payLoad}) {
    return DynamicJobQueueDevice(payLoad: payLoad ?? this.payLoad);
  }
}

typedef DeviceAssignment = List<DeviceAssignment$Item>;

@JsonSerializable(explicitToJson: true)
class DeviceAssignment$Item {
  DeviceAssignment$Item({
    required this.deviceId,
    required this.groupId,
  });

  factory DeviceAssignment$Item.fromJson(Map<String, dynamic> json) =>
      _$DeviceAssignment$ItemFromJson(json);

  @JsonKey(name: 'DeviceId')
  final String deviceId;
  @JsonKey(name: 'GroupId')
  final String groupId;
  static const fromJsonFactory = _$DeviceAssignment$ItemFromJson;
  static const toJsonFactory = _$DeviceAssignment$ItemToJson;
  Map<String, dynamic> toJson() => _$DeviceAssignment$ItemToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeviceAssignment$Item &&
            (identical(other.deviceId, deviceId) ||
                const DeepCollectionEquality()
                    .equals(other.deviceId, deviceId)) &&
            (identical(other.groupId, groupId) ||
                const DeepCollectionEquality().equals(other.groupId, groupId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(deviceId) ^
      const DeepCollectionEquality().hash(groupId) ^
      runtimeType.hashCode;
}

extension $DeviceAssignment$ItemExtension on DeviceAssignment$Item {
  DeviceAssignment$Item copyWith({String? deviceId, String? groupId}) {
    return DeviceAssignment$Item(
        deviceId: deviceId ?? this.deviceId, groupId: groupId ?? this.groupId);
  }
}

@JsonSerializable(explicitToJson: true)
class JobOutputModel {
  JobOutputModel({
    this.jobID,
    this.jobFolderID,
    this.jobName,
    this.platform,
    this.type,
    this.size,
    this.lastModified,
    this.usesRemoteStorageJobtable,
  });

  factory JobOutputModel.fromJson(Map<String, dynamic> json) =>
      _$JobOutputModelFromJson(json);

  @JsonKey(name: 'JobID')
  final String? jobID;
  @JsonKey(name: 'JobFolderID')
  final String? jobFolderID;
  @JsonKey(name: 'JobName')
  final String? jobName;
  @JsonKey(name: 'Platform')
  final String? platform;
  @JsonKey(name: 'Type')
  final String? type;
  @JsonKey(name: 'Size')
  final String? size;
  @JsonKey(name: 'LastModified')
  final String? lastModified;
  @JsonKey(name: 'UsesRemoteStorageJobtable')
  final String? usesRemoteStorageJobtable;
  static const fromJsonFactory = _$JobOutputModelFromJson;
  static const toJsonFactory = _$JobOutputModelToJson;
  Map<String, dynamic> toJson() => _$JobOutputModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is JobOutputModel &&
            (identical(other.jobID, jobID) ||
                const DeepCollectionEquality().equals(other.jobID, jobID)) &&
            (identical(other.jobFolderID, jobFolderID) ||
                const DeepCollectionEquality()
                    .equals(other.jobFolderID, jobFolderID)) &&
            (identical(other.jobName, jobName) ||
                const DeepCollectionEquality()
                    .equals(other.jobName, jobName)) &&
            (identical(other.platform, platform) ||
                const DeepCollectionEquality()
                    .equals(other.platform, platform)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)) &&
            (identical(other.lastModified, lastModified) ||
                const DeepCollectionEquality()
                    .equals(other.lastModified, lastModified)) &&
            (identical(other.usesRemoteStorageJobtable,
                    usesRemoteStorageJobtable) ||
                const DeepCollectionEquality().equals(
                    other.usesRemoteStorageJobtable,
                    usesRemoteStorageJobtable)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobID) ^
      const DeepCollectionEquality().hash(jobFolderID) ^
      const DeepCollectionEquality().hash(jobName) ^
      const DeepCollectionEquality().hash(platform) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(size) ^
      const DeepCollectionEquality().hash(lastModified) ^
      const DeepCollectionEquality().hash(usesRemoteStorageJobtable) ^
      runtimeType.hashCode;
}

extension $JobOutputModelExtension on JobOutputModel {
  JobOutputModel copyWith(
      {String? jobID,
      String? jobFolderID,
      String? jobName,
      String? platform,
      String? type,
      String? size,
      String? lastModified,
      String? usesRemoteStorageJobtable}) {
    return JobOutputModel(
        jobID: jobID ?? this.jobID,
        jobFolderID: jobFolderID ?? this.jobFolderID,
        jobName: jobName ?? this.jobName,
        platform: platform ?? this.platform,
        type: type ?? this.type,
        size: size ?? this.size,
        lastModified: lastModified ?? this.lastModified,
        usesRemoteStorageJobtable:
            usesRemoteStorageJobtable ?? this.usesRemoteStorageJobtable);
  }
}

typedef EditGroupModel = List<EditGroupModel$Item>;

@JsonSerializable(explicitToJson: true)
class EditGroupModel$Item {
  EditGroupModel$Item({
    required this.groupName,
    required this.groupID,
  });

  factory EditGroupModel$Item.fromJson(Map<String, dynamic> json) =>
      _$EditGroupModel$ItemFromJson(json);

  @JsonKey(name: 'GroupName')
  final String groupName;
  @JsonKey(name: 'GroupID')
  final String groupID;
  static const fromJsonFactory = _$EditGroupModel$ItemFromJson;
  static const toJsonFactory = _$EditGroupModel$ItemToJson;
  Map<String, dynamic> toJson() => _$EditGroupModel$ItemToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EditGroupModel$Item &&
            (identical(other.groupName, groupName) ||
                const DeepCollectionEquality()
                    .equals(other.groupName, groupName)) &&
            (identical(other.groupID, groupID) ||
                const DeepCollectionEquality().equals(other.groupID, groupID)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(groupName) ^
      const DeepCollectionEquality().hash(groupID) ^
      runtimeType.hashCode;
}

extension $EditGroupModel$ItemExtension on EditGroupModel$Item {
  EditGroupModel$Item copyWith({String? groupName, String? groupID}) {
    return EditGroupModel$Item(
        groupName: groupName ?? this.groupName,
        groupID: groupID ?? this.groupID);
  }
}

@JsonSerializable(explicitToJson: true)
class GroupByIDModel {
  GroupByIDModel({
    this.online,
    this.offline,
    this.totalDevicesExcludingSubGroups,
    this.groups,
    this.totalSubgroups,
  });

  factory GroupByIDModel.fromJson(Map<String, dynamic> json) =>
      _$GroupByIDModelFromJson(json);

  @JsonKey(name: 'Online')
  final int? online;
  @JsonKey(name: 'Offline')
  final int? offline;
  @JsonKey(name: 'TotalDevicesExcludingSubGroups')
  final int? totalDevicesExcludingSubGroups;
  @JsonKey(name: 'Groups', defaultValue: <GroupByIDModel$Groups>[])
  final List<GroupByIDModel$Groups>? groups;
  @JsonKey(name: 'TotalSubgroups')
  final int? totalSubgroups;
  static const fromJsonFactory = _$GroupByIDModelFromJson;
  static const toJsonFactory = _$GroupByIDModelToJson;
  Map<String, dynamic> toJson() => _$GroupByIDModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GroupByIDModel &&
            (identical(other.online, online) ||
                const DeepCollectionEquality().equals(other.online, online)) &&
            (identical(other.offline, offline) ||
                const DeepCollectionEquality()
                    .equals(other.offline, offline)) &&
            (identical(other.totalDevicesExcludingSubGroups,
                    totalDevicesExcludingSubGroups) ||
                const DeepCollectionEquality().equals(
                    other.totalDevicesExcludingSubGroups,
                    totalDevicesExcludingSubGroups)) &&
            (identical(other.groups, groups) ||
                const DeepCollectionEquality().equals(other.groups, groups)) &&
            (identical(other.totalSubgroups, totalSubgroups) ||
                const DeepCollectionEquality()
                    .equals(other.totalSubgroups, totalSubgroups)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(online) ^
      const DeepCollectionEquality().hash(offline) ^
      const DeepCollectionEquality().hash(totalDevicesExcludingSubGroups) ^
      const DeepCollectionEquality().hash(groups) ^
      const DeepCollectionEquality().hash(totalSubgroups) ^
      runtimeType.hashCode;
}

extension $GroupByIDModelExtension on GroupByIDModel {
  GroupByIDModel copyWith(
      {int? online,
      int? offline,
      int? totalDevicesExcludingSubGroups,
      List<GroupByIDModel$Groups>? groups,
      int? totalSubgroups}) {
    return GroupByIDModel(
        online: online ?? this.online,
        offline: offline ?? this.offline,
        totalDevicesExcludingSubGroups: totalDevicesExcludingSubGroups ??
            this.totalDevicesExcludingSubGroups,
        groups: groups ?? this.groups,
        totalSubgroups: totalSubgroups ?? this.totalSubgroups);
  }
}

@JsonSerializable(explicitToJson: true)
class GroupGetModel {
  GroupGetModel({
    this.totalDevices,
    this.devices,
    this.groups,
    this.totalSubgroups,
  });

  factory GroupGetModel.fromJson(Map<String, dynamic> json) =>
      _$GroupGetModelFromJson(json);

  @JsonKey(name: 'TotalDevices')
  final int? totalDevices;
  @JsonKey(name: 'Devices')
  final int? devices;
  @JsonKey(name: 'Groups', defaultValue: <GroupGetModel$Groups>[])
  final List<GroupGetModel$Groups>? groups;
  @JsonKey(name: 'TotalSubgroups')
  final int? totalSubgroups;
  static const fromJsonFactory = _$GroupGetModelFromJson;
  static const toJsonFactory = _$GroupGetModelToJson;
  Map<String, dynamic> toJson() => _$GroupGetModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GroupGetModel &&
            (identical(other.totalDevices, totalDevices) ||
                const DeepCollectionEquality()
                    .equals(other.totalDevices, totalDevices)) &&
            (identical(other.devices, devices) ||
                const DeepCollectionEquality()
                    .equals(other.devices, devices)) &&
            (identical(other.groups, groups) ||
                const DeepCollectionEquality().equals(other.groups, groups)) &&
            (identical(other.totalSubgroups, totalSubgroups) ||
                const DeepCollectionEquality()
                    .equals(other.totalSubgroups, totalSubgroups)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalDevices) ^
      const DeepCollectionEquality().hash(devices) ^
      const DeepCollectionEquality().hash(groups) ^
      const DeepCollectionEquality().hash(totalSubgroups) ^
      runtimeType.hashCode;
}

extension $GroupGetModelExtension on GroupGetModel {
  GroupGetModel copyWith(
      {int? totalDevices,
      int? devices,
      List<GroupGetModel$Groups>? groups,
      int? totalSubgroups}) {
    return GroupGetModel(
        totalDevices: totalDevices ?? this.totalDevices,
        devices: devices ?? this.devices,
        groups: groups ?? this.groups,
        totalSubgroups: totalSubgroups ?? this.totalSubgroups);
  }
}

@JsonSerializable(explicitToJson: true)
class GroupGetAllModel {
  GroupGetAllModel({
    this.groups,
    this.totalSubgroups,
  });

  factory GroupGetAllModel.fromJson(Map<String, dynamic> json) =>
      _$GroupGetAllModelFromJson(json);

  @JsonKey(name: 'Groups', defaultValue: <GroupGetAllModel$Groups>[])
  final List<GroupGetAllModel$Groups>? groups;
  @JsonKey(name: 'TotalSubgroups')
  final int? totalSubgroups;
  static const fromJsonFactory = _$GroupGetAllModelFromJson;
  static const toJsonFactory = _$GroupGetAllModelToJson;
  Map<String, dynamic> toJson() => _$GroupGetAllModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GroupGetAllModel &&
            (identical(other.groups, groups) ||
                const DeepCollectionEquality().equals(other.groups, groups)) &&
            (identical(other.totalSubgroups, totalSubgroups) ||
                const DeepCollectionEquality()
                    .equals(other.totalSubgroups, totalSubgroups)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(groups) ^
      const DeepCollectionEquality().hash(totalSubgroups) ^
      runtimeType.hashCode;
}

extension $GroupGetAllModelExtension on GroupGetAllModel {
  GroupGetAllModel copyWith(
      {List<GroupGetAllModel$Groups>? groups, int? totalSubgroups}) {
    return GroupGetAllModel(
        groups: groups ?? this.groups,
        totalSubgroups: totalSubgroups ?? this.totalSubgroups);
  }
}

@JsonSerializable(explicitToJson: true)
class GroupPostOutputModel {
  GroupPostOutputModel();

  factory GroupPostOutputModel.fromJson(Map<String, dynamic> json) =>
      _$GroupPostOutputModelFromJson(json);

  static const fromJsonFactory = _$GroupPostOutputModelFromJson;
  static const toJsonFactory = _$GroupPostOutputModelToJson;
  Map<String, dynamic> toJson() => _$GroupPostOutputModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode => runtimeType.hashCode;
}

@JsonSerializable(explicitToJson: true)
class GroupModel {
  GroupModel({
    required this.groupName,
    required this.groupID,
  });

  factory GroupModel.fromJson(Map<String, dynamic> json) =>
      _$GroupModelFromJson(json);

  @JsonKey(name: 'GroupName')
  final String groupName;
  @JsonKey(name: 'GroupID')
  final String groupID;
  static const fromJsonFactory = _$GroupModelFromJson;
  static const toJsonFactory = _$GroupModelToJson;
  Map<String, dynamic> toJson() => _$GroupModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GroupModel &&
            (identical(other.groupName, groupName) ||
                const DeepCollectionEquality()
                    .equals(other.groupName, groupName)) &&
            (identical(other.groupID, groupID) ||
                const DeepCollectionEquality().equals(other.groupID, groupID)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(groupName) ^
      const DeepCollectionEquality().hash(groupID) ^
      runtimeType.hashCode;
}

extension $GroupModelExtension on GroupModel {
  GroupModel copyWith({String? groupName, String? groupID}) {
    return GroupModel(
        groupName: groupName ?? this.groupName,
        groupID: groupID ?? this.groupID);
  }
}

@JsonSerializable(explicitToJson: true)
class JobDeleteModel {
  JobDeleteModel({
    required this.folderId,
    required this.jobID,
    this.jobType,
  });

  factory JobDeleteModel.fromJson(Map<String, dynamic> json) =>
      _$JobDeleteModelFromJson(json);

  @JsonKey(name: 'FolderId')
  final String folderId;
  @JsonKey(name: 'JobID')
  final String jobID;
  @JsonKey(name: 'JobType')
  final String? jobType;
  static const fromJsonFactory = _$JobDeleteModelFromJson;
  static const toJsonFactory = _$JobDeleteModelToJson;
  Map<String, dynamic> toJson() => _$JobDeleteModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is JobDeleteModel &&
            (identical(other.folderId, folderId) ||
                const DeepCollectionEquality()
                    .equals(other.folderId, folderId)) &&
            (identical(other.jobID, jobID) ||
                const DeepCollectionEquality().equals(other.jobID, jobID)) &&
            (identical(other.jobType, jobType) ||
                const DeepCollectionEquality().equals(other.jobType, jobType)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(folderId) ^
      const DeepCollectionEquality().hash(jobID) ^
      const DeepCollectionEquality().hash(jobType) ^
      runtimeType.hashCode;
}

extension $JobDeleteModelExtension on JobDeleteModel {
  JobDeleteModel copyWith({String? folderId, String? jobID, String? jobType}) {
    return JobDeleteModel(
        folderId: folderId ?? this.folderId,
        jobID: jobID ?? this.jobID,
        jobType: jobType ?? this.jobType);
  }
}

@JsonSerializable(explicitToJson: true)
class SetDeviceName {
  SetDeviceName({
    required this.deviceId,
    required this.deviceName,
  });

  factory SetDeviceName.fromJson(Map<String, dynamic> json) =>
      _$SetDeviceNameFromJson(json);

  @JsonKey(name: 'DeviceId')
  final String deviceId;
  @JsonKey(name: 'DeviceName')
  final String deviceName;
  static const fromJsonFactory = _$SetDeviceNameFromJson;
  static const toJsonFactory = _$SetDeviceNameToJson;
  Map<String, dynamic> toJson() => _$SetDeviceNameToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SetDeviceName &&
            (identical(other.deviceId, deviceId) ||
                const DeepCollectionEquality()
                    .equals(other.deviceId, deviceId)) &&
            (identical(other.deviceName, deviceName) ||
                const DeepCollectionEquality()
                    .equals(other.deviceName, deviceName)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(deviceId) ^
      const DeepCollectionEquality().hash(deviceName) ^
      runtimeType.hashCode;
}

extension $SetDeviceNameExtension on SetDeviceName {
  SetDeviceName copyWith({String? deviceId, String? deviceName}) {
    return SetDeviceName(
        deviceId: deviceId ?? this.deviceId,
        deviceName: deviceName ?? this.deviceName);
  }
}

typedef DeviceModel = List<DeviceModel$Item>;

@JsonSerializable(explicitToJson: true)
class DeviceModel$Item {
  DeviceModel$Item({
    this.deviceID,
    this.connectionStatus,
    this.groupID,
    this.deviceIPAddress,
    this.deviceName,
    this.userID,
    this.lastTimeStamp,
    this.deviceModelName,
    this.platformType,
    this.$Operator,
    this.battery,
    this.phoneSignal,
    this.agentVersion,
    this.sureLockVersion,
    this.sureFoxVersion,
    this.sureVideoVersion,
    this.defaultHome,
    this.notes,
    this.imei,
    this.imsi,
    this.phoneNumber,
    this.serialNumber,
    this.trackingOn,
    this.trackingInterval,
    this.callLogTrackingOn,
    this.callLogTrackingInterval,
    this.protocol,
    this.jobsFailed,
    this.rootStatus,
    this.macAddress,
    this.securityPolicyPickedByDevice,
    this.securityPolicyEnablePassword,
    this.securityPolicyMinPasswordLength,
    this.securityPolicyPasswordQuality,
    this.securityPolicyPasswordTimeout,
    this.securityPolicyPasswordMaxAttempts,
    this.enablePeripheralPolicy,
    this.disableWifi,
    this.disableBluetooth,
    this.disableCamera,
    this.enforceEncrypyion,
    this.disableGPS,
    this.disableMobileData,
    this.jobsInQueue,
    this.jobsDeployed,
    this.deviceTimeStamp,
    this.wifiSignal,
    this.wifiSSID,
    this.deviceLocalIPAddress,
    this.totalPhysicalMemory,
    this.totalStorageMemory,
    this.availableStorageMemory,
    this.knoxStatus,
    this.phoneRoaming,
    this.batteryChemistry,
    this.backupBatteryPercent,
    this.oSVersion,
    this.dataUsage,
    this.securityPolicyPickedByDeviceApplied,
    this.securityPolicyEnablePasswordApplied,
    this.securityPolicyMinPasswordLengthApplied,
    this.securityPolicyPasswordQualityApplied,
    this.securityPolicyPasswordTimeoutApplied,
    this.securityPolicyPasswordMaxAttemptsApplied,
    this.enablePeripheralPolicyApplied,
    this.disableWifiApplied,
    this.disableBluetoothApplied,
    this.disableCameraApplied,
    this.enforceEncrypyionApplied,
    this.disableGPSApplied,
    this.disableMobileDataApplied,
    this.releaseVersion,
    this.deviceRegistered,
    this.cpuUsage,
    this.gpuUsage,
    this.temperature,
    this.smsLogTrackingOn,
    this.smsLogTrackingInterval,
    this.afwProfile,
    this.isenrolled,
    this.isSupervised,
    this.currentWorkProfile,
    this.mobileDataUsageTrackingOn,
    this.batteryState,
    this.iOsVendorId,
    this.enrollmentMode,
    this.additionalMAC,
    this.sureLockLicense,
    this.sureFoxLicense,
    this.sureVideoLicense,
    this.sureLockAdmin,
    this.sureFoxAdmin,
    this.sureVideoAdmin,
    this.sureMDMNixAdmin,
    this.nixPollingType,
    this.networkType,
    this.locationTimeStamp,
    this.geoFence,
    this.timeFence,
    this.networkFence,
    this.applicationVersionList,
    this.customColumnsList,
    this.gPSEnabled,
    this.bluetoothEnabled,
    this.uSBPluggedIn,
    this.sureLockSettingsVersionCode,
    this.osBuildNumber,
    this.memoryStorageAvailable,
    this.availablePhysicalMemory,
    this.realDeviceName,
    this.bssid,
    this.simSerialNumber,
    this.deviceUserName,
    this.deviceApprovedStatus,
    this.securityPatchDate,
    this.deviceGroupPath,
    this.organizationUnit,
    this.assetId,
    this.locationInfo,
    this.activationLockBypassCode,
    this.sureLockPermissionData,
    this.mTPSystemScanTimeStamp,
    this.mTPSystemScanThreatCount,
    this.isMobileHotSpotEnabled,
    this.isEncryptionEnabled,
    this.imei2,
    this.ctsProfileMatch,
    this.basicIntegrity,
    this.verifyAppEnable,
    this.aDBEnable,
    this.allowUnknownSource,
    this.deviceTimeZone,
    this.thingsData,
    this.jobsInProgress,
    this.androidID,
    this.hashCode,
    this.efotaRegistrationStatus,
    this.currentFirmwareVersion,
    this.currentUserWorkProfile,
    this.isLostModeEnabled,
  });

  factory DeviceModel$Item.fromJson(Map<String, dynamic> json) =>
      _$DeviceModel$ItemFromJson(json);

  @JsonKey(name: 'DeviceID')
  final String? deviceID;
  @JsonKey(
      name: 'ConnectionStatus',
      toJson: deviceModel$ItemConnectionStatusToJson,
      fromJson: deviceModel$ItemConnectionStatusFromJson)
  final enums.DeviceModel$ItemConnectionStatus? connectionStatus;
  @JsonKey(name: 'GroupID')
  final String? groupID;
  @JsonKey(name: 'DeviceIPAddress')
  final String? deviceIPAddress;
  @JsonKey(name: 'DeviceName')
  final String? deviceName;
  @JsonKey(name: 'UserID')
  final String? userID;
  @JsonKey(name: 'LastTimeStamp')
  final String? lastTimeStamp;
  @JsonKey(name: 'DeviceModelName')
  final String? deviceModelName;
  @JsonKey(name: 'PlatformType')
  final String? platformType;
  @JsonKey(name: 'Operator')
  final String? $Operator;
  @JsonKey(name: 'Battery')
  final String? battery;
  @JsonKey(name: 'PhoneSignal')
  final String? phoneSignal;
  @JsonKey(name: 'AgentVersion')
  final String? agentVersion;
  @JsonKey(name: 'SureLockVersion')
  final String? sureLockVersion;
  @JsonKey(name: 'SureFoxVersion')
  final String? sureFoxVersion;
  @JsonKey(name: 'SureVideoVersion')
  final String? sureVideoVersion;
  @JsonKey(name: 'DefaultHome')
  final String? defaultHome;
  @JsonKey(name: 'Notes')
  final String? notes;
  @JsonKey(name: 'IMEI')
  final String? imei;
  @JsonKey(name: 'IMSI')
  final String? imsi;
  @JsonKey(name: 'PhoneNumber')
  final String? phoneNumber;
  @JsonKey(name: 'SerialNumber')
  final String? serialNumber;
  @JsonKey(name: 'TrackingOn')
  final String? trackingOn;
  @JsonKey(name: 'TrackingInterval')
  final String? trackingInterval;
  @JsonKey(name: 'CallLogTrackingOn')
  final String? callLogTrackingOn;
  @JsonKey(name: 'CallLogTrackingInterval')
  final String? callLogTrackingInterval;
  @JsonKey(name: 'Protocol')
  final String? protocol;
  @JsonKey(name: 'JobsFailed')
  final String? jobsFailed;
  @JsonKey(name: 'RootStatus')
  final String? rootStatus;
  @JsonKey(name: 'MacAddress')
  final String? macAddress;
  @JsonKey(name: 'SecurityPolicyPickedByDevice')
  final String? securityPolicyPickedByDevice;
  @JsonKey(name: 'SecurityPolicyEnablePassword')
  final String? securityPolicyEnablePassword;
  @JsonKey(name: 'SecurityPolicyMinPasswordLength')
  final String? securityPolicyMinPasswordLength;
  @JsonKey(name: 'SecurityPolicyPasswordQuality')
  final String? securityPolicyPasswordQuality;
  @JsonKey(name: 'SecurityPolicyPasswordTimeout')
  final String? securityPolicyPasswordTimeout;
  @JsonKey(name: 'SecurityPolicyPasswordMaxAttempts')
  final String? securityPolicyPasswordMaxAttempts;
  @JsonKey(name: 'EnablePeripheralPolicy')
  final String? enablePeripheralPolicy;
  @JsonKey(name: 'DisableWifi')
  final String? disableWifi;
  @JsonKey(name: 'DisableBluetooth')
  final String? disableBluetooth;
  @JsonKey(name: 'DisableCamera')
  final String? disableCamera;
  @JsonKey(name: 'EnforceEncrypyion')
  final String? enforceEncrypyion;
  @JsonKey(name: 'DisableGPS')
  final String? disableGPS;
  @JsonKey(name: 'DisableMobileData')
  final String? disableMobileData;
  @JsonKey(name: 'JobsInQueue')
  final String? jobsInQueue;
  @JsonKey(name: 'JobsDeployed')
  final String? jobsDeployed;
  @JsonKey(name: 'DeviceTimeStamp')
  final String? deviceTimeStamp;
  @JsonKey(name: 'WifiSignal')
  final String? wifiSignal;
  @JsonKey(name: 'WifiSSID')
  final String? wifiSSID;
  @JsonKey(name: 'DeviceLocalIPAddress')
  final String? deviceLocalIPAddress;
  @JsonKey(name: 'TotalPhysicalMemory')
  final String? totalPhysicalMemory;
  @JsonKey(name: 'TotalStorageMemory')
  final String? totalStorageMemory;
  @JsonKey(name: 'AvailableStorageMemory')
  final String? availableStorageMemory;
  @JsonKey(name: 'KnoxStatus')
  final String? knoxStatus;
  @JsonKey(name: 'PhoneRoaming')
  final String? phoneRoaming;
  @JsonKey(
      name: 'BatteryChemistry',
      toJson: deviceModel$ItemBatteryChemistryToJson,
      fromJson: deviceModel$ItemBatteryChemistryFromJson)
  final enums.DeviceModel$ItemBatteryChemistry? batteryChemistry;
  @JsonKey(name: 'BackupBatteryPercent')
  final String? backupBatteryPercent;
  @JsonKey(name: 'OSVersion')
  final String? oSVersion;
  @JsonKey(name: 'DataUsage')
  final String? dataUsage;
  @JsonKey(name: 'SecurityPolicyPickedByDeviceApplied')
  final String? securityPolicyPickedByDeviceApplied;
  @JsonKey(name: 'SecurityPolicyEnablePasswordApplied')
  final String? securityPolicyEnablePasswordApplied;
  @JsonKey(name: 'SecurityPolicyMinPasswordLengthApplied')
  final String? securityPolicyMinPasswordLengthApplied;
  @JsonKey(name: 'SecurityPolicyPasswordQualityApplied')
  final String? securityPolicyPasswordQualityApplied;
  @JsonKey(name: 'SecurityPolicyPasswordTimeoutApplied')
  final String? securityPolicyPasswordTimeoutApplied;
  @JsonKey(name: 'SecurityPolicyPasswordMaxAttemptsApplied')
  final String? securityPolicyPasswordMaxAttemptsApplied;
  @JsonKey(name: 'EnablePeripheralPolicyApplied')
  final String? enablePeripheralPolicyApplied;
  @JsonKey(name: 'DisableWifiApplied')
  final String? disableWifiApplied;
  @JsonKey(name: 'DisableBluetoothApplied')
  final String? disableBluetoothApplied;
  @JsonKey(name: 'DisableCameraApplied')
  final String? disableCameraApplied;
  @JsonKey(name: 'EnforceEncrypyionApplied')
  final String? enforceEncrypyionApplied;
  @JsonKey(name: 'DisableGPSApplied')
  final String? disableGPSApplied;
  @JsonKey(name: 'DisableMobileDataApplied')
  final String? disableMobileDataApplied;
  @JsonKey(name: 'ReleaseVersion')
  final String? releaseVersion;
  @JsonKey(name: 'DeviceRegistered')
  final String? deviceRegistered;
  @JsonKey(name: 'CpuUsage')
  final String? cpuUsage;
  @JsonKey(name: 'GpuUsage')
  final String? gpuUsage;
  @JsonKey(name: 'Temperature')
  final String? temperature;
  @JsonKey(name: 'SmsLogTrackingOn')
  final String? smsLogTrackingOn;
  @JsonKey(name: 'SmsLogTrackingInterval')
  final String? smsLogTrackingInterval;
  @JsonKey(name: 'AfwProfile')
  final String? afwProfile;
  @JsonKey(name: 'Isenrolled')
  final String? isenrolled;
  @JsonKey(name: 'IsSupervised')
  final String? isSupervised;
  @JsonKey(name: 'CurrentWorkProfile')
  final String? currentWorkProfile;
  @JsonKey(name: 'MobileDataUsageTrackingOn')
  final String? mobileDataUsageTrackingOn;
  @JsonKey(name: 'batteryState')
  final String? batteryState;
  @JsonKey(name: 'iOsVendorId')
  final String? iOsVendorId;
  @JsonKey(name: 'EnrollmentMode')
  final String? enrollmentMode;
  @JsonKey(name: 'AdditionalMAC')
  final String? additionalMAC;
  @JsonKey(name: 'SureLockLicense')
  final String? sureLockLicense;
  @JsonKey(name: 'SureFoxLicense')
  final String? sureFoxLicense;
  @JsonKey(name: 'SureVideoLicense')
  final String? sureVideoLicense;
  @JsonKey(name: 'SureLockAdmin')
  final String? sureLockAdmin;
  @JsonKey(name: 'SureFoxAdmin')
  final String? sureFoxAdmin;
  @JsonKey(name: 'SureVideoAdmin')
  final String? sureVideoAdmin;
  @JsonKey(name: 'SureMDMNixAdmin')
  final String? sureMDMNixAdmin;
  @JsonKey(name: 'NixPollingType')
  final String? nixPollingType;
  @JsonKey(name: 'NetworkType')
  final String? networkType;
  @JsonKey(name: 'LocationTimeStamp')
  final String? locationTimeStamp;
  @JsonKey(name: 'GeoFence')
  final String? geoFence;
  @JsonKey(name: 'TimeFence')
  final String? timeFence;
  @JsonKey(name: 'NetworkFence')
  final String? networkFence;
  @JsonKey(name: 'ApplicationVersionList')
  final String? applicationVersionList;
  @JsonKey(name: 'CustomColumnsList')
  final String? customColumnsList;
  @JsonKey(name: 'GPSEnabled')
  final String? gPSEnabled;
  @JsonKey(name: 'BluetoothEnabled')
  final String? bluetoothEnabled;
  @JsonKey(name: 'USBPluggedIn')
  final String? uSBPluggedIn;
  @JsonKey(name: 'SureLockSettingsVersionCode')
  final String? sureLockSettingsVersionCode;
  @JsonKey(name: 'OsBuildNumber')
  final String? osBuildNumber;
  @JsonKey(name: 'MemoryStorageAvailable')
  final String? memoryStorageAvailable;
  @JsonKey(name: 'AvailablePhysicalMemory')
  final String? availablePhysicalMemory;
  @JsonKey(name: 'RealDeviceName')
  final String? realDeviceName;
  @JsonKey(name: 'BSSID')
  final String? bssid;
  @JsonKey(name: 'SimSerialNumber')
  final String? simSerialNumber;
  @JsonKey(name: 'DeviceUserName')
  final String? deviceUserName;
  @JsonKey(name: 'DeviceApprovedStatus')
  final String? deviceApprovedStatus;
  @JsonKey(name: 'SecurityPatchDate')
  final String? securityPatchDate;
  @JsonKey(name: 'DeviceGroupPath')
  final String? deviceGroupPath;
  @JsonKey(name: 'OrganizationUnit')
  final String? organizationUnit;
  @JsonKey(name: 'AssetId')
  final String? assetId;
  @JsonKey(name: 'LocationInfo')
  final String? locationInfo;
  @JsonKey(name: 'ActivationLockBypassCode')
  final String? activationLockBypassCode;
  @JsonKey(name: 'SureLockPermissionData')
  final String? sureLockPermissionData;
  @JsonKey(name: 'MTPSystemScanTimeStamp')
  final String? mTPSystemScanTimeStamp;
  @JsonKey(name: 'MTPSystemScanThreatCount')
  final String? mTPSystemScanThreatCount;
  @JsonKey(name: 'IsMobileHotSpotEnabled')
  final String? isMobileHotSpotEnabled;
  @JsonKey(name: 'IsEncryptionEnabled')
  final String? isEncryptionEnabled;
  @JsonKey(name: 'IMEI2')
  final String? imei2;
  @JsonKey(name: 'CtsProfileMatch')
  final String? ctsProfileMatch;
  @JsonKey(name: 'BasicIntegrity')
  final String? basicIntegrity;
  @JsonKey(name: 'VerifyAppEnable')
  final String? verifyAppEnable;
  @JsonKey(name: 'ADBEnable')
  final String? aDBEnable;
  @JsonKey(name: 'AllowUnknownSource')
  final String? allowUnknownSource;
  @JsonKey(name: 'DeviceTimeZone')
  final String? deviceTimeZone;
  @JsonKey(name: 'ThingsData')
  final String? thingsData;
  @JsonKey(name: 'JobsInProgress')
  final String? jobsInProgress;
  @JsonKey(name: 'AndroidID')
  final String? androidID;
  @JsonKey(name: 'HashCode')
  final String? hashCode;
  @JsonKey(name: 'EfotaRegistrationStatus')
  final String? efotaRegistrationStatus;
  @JsonKey(name: 'CurrentFirmwareVersion')
  final String? currentFirmwareVersion;
  @JsonKey(name: 'CurrentUserWorkProfile')
  final String? currentUserWorkProfile;
  @JsonKey(name: 'IsLostModeEnabled')
  final String? isLostModeEnabled;
  static const fromJsonFactory = _$DeviceModel$ItemFromJson;
  static const toJsonFactory = _$DeviceModel$ItemToJson;
  Map<String, dynamic> toJson() => _$DeviceModel$ItemToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeviceModel$Item &&
            (identical(other.deviceID, deviceID) ||
                const DeepCollectionEquality()
                    .equals(other.deviceID, deviceID)) &&
            (identical(other.connectionStatus, connectionStatus) ||
                const DeepCollectionEquality()
                    .equals(other.connectionStatus, connectionStatus)) &&
            (identical(other.groupID, groupID) ||
                const DeepCollectionEquality()
                    .equals(other.groupID, groupID)) &&
            (identical(other.deviceIPAddress, deviceIPAddress) ||
                const DeepCollectionEquality()
                    .equals(other.deviceIPAddress, deviceIPAddress)) &&
            (identical(other.deviceName, deviceName) ||
                const DeepCollectionEquality()
                    .equals(other.deviceName, deviceName)) &&
            (identical(other.userID, userID) ||
                const DeepCollectionEquality().equals(other.userID, userID)) &&
            (identical(other.lastTimeStamp, lastTimeStamp) ||
                const DeepCollectionEquality()
                    .equals(other.lastTimeStamp, lastTimeStamp)) &&
            (identical(other.deviceModelName, deviceModelName) ||
                const DeepCollectionEquality()
                    .equals(other.deviceModelName, deviceModelName)) &&
            (identical(other.platformType, platformType) ||
                const DeepCollectionEquality()
                    .equals(other.platformType, platformType)) &&
            (identical(other.$Operator, $Operator) ||
                const DeepCollectionEquality()
                    .equals(other.$Operator, $Operator)) &&
            (identical(other.battery, battery) ||
                const DeepCollectionEquality()
                    .equals(other.battery, battery)) &&
            (identical(other.phoneSignal, phoneSignal) ||
                const DeepCollectionEquality()
                    .equals(other.phoneSignal, phoneSignal)) &&
            (identical(other.agentVersion, agentVersion) ||
                const DeepCollectionEquality()
                    .equals(other.agentVersion, agentVersion)) &&
            (identical(other.sureLockVersion, sureLockVersion) ||
                const DeepCollectionEquality()
                    .equals(other.sureLockVersion, sureLockVersion)) &&
            (identical(other.sureFoxVersion, sureFoxVersion) ||
                const DeepCollectionEquality()
                    .equals(other.sureFoxVersion, sureFoxVersion)) &&
            (identical(other.sureVideoVersion, sureVideoVersion) ||
                const DeepCollectionEquality()
                    .equals(other.sureVideoVersion, sureVideoVersion)) &&
            (identical(other.defaultHome, defaultHome) ||
                const DeepCollectionEquality()
                    .equals(other.defaultHome, defaultHome)) &&
            (identical(other.notes, notes) ||
                const DeepCollectionEquality().equals(other.notes, notes)) &&
            (identical(other.imei, imei) ||
                const DeepCollectionEquality().equals(other.imei, imei)) &&
            (identical(other.imsi, imsi) ||
                const DeepCollectionEquality().equals(other.imsi, imsi)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.serialNumber, serialNumber) ||
                const DeepCollectionEquality()
                    .equals(other.serialNumber, serialNumber)) &&
            (identical(other.trackingOn, trackingOn) ||
                const DeepCollectionEquality()
                    .equals(other.trackingOn, trackingOn)) &&
            (identical(other.trackingInterval, trackingInterval) ||
                const DeepCollectionEquality().equals(other.trackingInterval, trackingInterval)) &&
            (identical(other.callLogTrackingOn, callLogTrackingOn) || const DeepCollectionEquality().equals(other.callLogTrackingOn, callLogTrackingOn)) &&
            (identical(other.callLogTrackingInterval, callLogTrackingInterval) || const DeepCollectionEquality().equals(other.callLogTrackingInterval, callLogTrackingInterval)) &&
            (identical(other.protocol, protocol) || const DeepCollectionEquality().equals(other.protocol, protocol)) &&
            (identical(other.jobsFailed, jobsFailed) || const DeepCollectionEquality().equals(other.jobsFailed, jobsFailed)) &&
            (identical(other.rootStatus, rootStatus) || const DeepCollectionEquality().equals(other.rootStatus, rootStatus)) &&
            (identical(other.macAddress, macAddress) || const DeepCollectionEquality().equals(other.macAddress, macAddress)) &&
            (identical(other.securityPolicyPickedByDevice, securityPolicyPickedByDevice) || const DeepCollectionEquality().equals(other.securityPolicyPickedByDevice, securityPolicyPickedByDevice)) &&
            (identical(other.securityPolicyEnablePassword, securityPolicyEnablePassword) || const DeepCollectionEquality().equals(other.securityPolicyEnablePassword, securityPolicyEnablePassword)) &&
            (identical(other.securityPolicyMinPasswordLength, securityPolicyMinPasswordLength) || const DeepCollectionEquality().equals(other.securityPolicyMinPasswordLength, securityPolicyMinPasswordLength)) &&
            (identical(other.securityPolicyPasswordQuality, securityPolicyPasswordQuality) || const DeepCollectionEquality().equals(other.securityPolicyPasswordQuality, securityPolicyPasswordQuality)) &&
            (identical(other.securityPolicyPasswordTimeout, securityPolicyPasswordTimeout) || const DeepCollectionEquality().equals(other.securityPolicyPasswordTimeout, securityPolicyPasswordTimeout)) &&
            (identical(other.securityPolicyPasswordMaxAttempts, securityPolicyPasswordMaxAttempts) || const DeepCollectionEquality().equals(other.securityPolicyPasswordMaxAttempts, securityPolicyPasswordMaxAttempts)) &&
            (identical(other.enablePeripheralPolicy, enablePeripheralPolicy) || const DeepCollectionEquality().equals(other.enablePeripheralPolicy, enablePeripheralPolicy)) &&
            (identical(other.disableWifi, disableWifi) || const DeepCollectionEquality().equals(other.disableWifi, disableWifi)) &&
            (identical(other.disableBluetooth, disableBluetooth) || const DeepCollectionEquality().equals(other.disableBluetooth, disableBluetooth)) &&
            (identical(other.disableCamera, disableCamera) || const DeepCollectionEquality().equals(other.disableCamera, disableCamera)) &&
            (identical(other.enforceEncrypyion, enforceEncrypyion) || const DeepCollectionEquality().equals(other.enforceEncrypyion, enforceEncrypyion)) &&
            (identical(other.disableGPS, disableGPS) || const DeepCollectionEquality().equals(other.disableGPS, disableGPS)) &&
            (identical(other.disableMobileData, disableMobileData) || const DeepCollectionEquality().equals(other.disableMobileData, disableMobileData)) &&
            (identical(other.jobsInQueue, jobsInQueue) || const DeepCollectionEquality().equals(other.jobsInQueue, jobsInQueue)) &&
            (identical(other.jobsDeployed, jobsDeployed) || const DeepCollectionEquality().equals(other.jobsDeployed, jobsDeployed)) &&
            (identical(other.deviceTimeStamp, deviceTimeStamp) || const DeepCollectionEquality().equals(other.deviceTimeStamp, deviceTimeStamp)) &&
            (identical(other.wifiSignal, wifiSignal) || const DeepCollectionEquality().equals(other.wifiSignal, wifiSignal)) &&
            (identical(other.wifiSSID, wifiSSID) || const DeepCollectionEquality().equals(other.wifiSSID, wifiSSID)) &&
            (identical(other.deviceLocalIPAddress, deviceLocalIPAddress) || const DeepCollectionEquality().equals(other.deviceLocalIPAddress, deviceLocalIPAddress)) &&
            (identical(other.totalPhysicalMemory, totalPhysicalMemory) || const DeepCollectionEquality().equals(other.totalPhysicalMemory, totalPhysicalMemory)) &&
            (identical(other.totalStorageMemory, totalStorageMemory) || const DeepCollectionEquality().equals(other.totalStorageMemory, totalStorageMemory)) &&
            (identical(other.availableStorageMemory, availableStorageMemory) || const DeepCollectionEquality().equals(other.availableStorageMemory, availableStorageMemory)) &&
            (identical(other.knoxStatus, knoxStatus) || const DeepCollectionEquality().equals(other.knoxStatus, knoxStatus)) &&
            (identical(other.phoneRoaming, phoneRoaming) || const DeepCollectionEquality().equals(other.phoneRoaming, phoneRoaming)) &&
            (identical(other.batteryChemistry, batteryChemistry) || const DeepCollectionEquality().equals(other.batteryChemistry, batteryChemistry)) &&
            (identical(other.backupBatteryPercent, backupBatteryPercent) || const DeepCollectionEquality().equals(other.backupBatteryPercent, backupBatteryPercent)) &&
            (identical(other.oSVersion, oSVersion) || const DeepCollectionEquality().equals(other.oSVersion, oSVersion)) &&
            (identical(other.dataUsage, dataUsage) || const DeepCollectionEquality().equals(other.dataUsage, dataUsage)) &&
            (identical(other.securityPolicyPickedByDeviceApplied, securityPolicyPickedByDeviceApplied) || const DeepCollectionEquality().equals(other.securityPolicyPickedByDeviceApplied, securityPolicyPickedByDeviceApplied)) &&
            (identical(other.securityPolicyEnablePasswordApplied, securityPolicyEnablePasswordApplied) || const DeepCollectionEquality().equals(other.securityPolicyEnablePasswordApplied, securityPolicyEnablePasswordApplied)) &&
            (identical(other.securityPolicyMinPasswordLengthApplied, securityPolicyMinPasswordLengthApplied) || const DeepCollectionEquality().equals(other.securityPolicyMinPasswordLengthApplied, securityPolicyMinPasswordLengthApplied)) &&
            (identical(other.securityPolicyPasswordQualityApplied, securityPolicyPasswordQualityApplied) || const DeepCollectionEquality().equals(other.securityPolicyPasswordQualityApplied, securityPolicyPasswordQualityApplied)) &&
            (identical(other.securityPolicyPasswordTimeoutApplied, securityPolicyPasswordTimeoutApplied) || const DeepCollectionEquality().equals(other.securityPolicyPasswordTimeoutApplied, securityPolicyPasswordTimeoutApplied)) &&
            (identical(other.securityPolicyPasswordMaxAttemptsApplied, securityPolicyPasswordMaxAttemptsApplied) || const DeepCollectionEquality().equals(other.securityPolicyPasswordMaxAttemptsApplied, securityPolicyPasswordMaxAttemptsApplied)) &&
            (identical(other.enablePeripheralPolicyApplied, enablePeripheralPolicyApplied) || const DeepCollectionEquality().equals(other.enablePeripheralPolicyApplied, enablePeripheralPolicyApplied)) &&
            (identical(other.disableWifiApplied, disableWifiApplied) || const DeepCollectionEquality().equals(other.disableWifiApplied, disableWifiApplied)) &&
            (identical(other.disableBluetoothApplied, disableBluetoothApplied) || const DeepCollectionEquality().equals(other.disableBluetoothApplied, disableBluetoothApplied)) &&
            (identical(other.disableCameraApplied, disableCameraApplied) || const DeepCollectionEquality().equals(other.disableCameraApplied, disableCameraApplied)) &&
            (identical(other.enforceEncrypyionApplied, enforceEncrypyionApplied) || const DeepCollectionEquality().equals(other.enforceEncrypyionApplied, enforceEncrypyionApplied)) &&
            (identical(other.disableGPSApplied, disableGPSApplied) || const DeepCollectionEquality().equals(other.disableGPSApplied, disableGPSApplied)) &&
            (identical(other.disableMobileDataApplied, disableMobileDataApplied) || const DeepCollectionEquality().equals(other.disableMobileDataApplied, disableMobileDataApplied)) &&
            (identical(other.releaseVersion, releaseVersion) || const DeepCollectionEquality().equals(other.releaseVersion, releaseVersion)) &&
            (identical(other.deviceRegistered, deviceRegistered) || const DeepCollectionEquality().equals(other.deviceRegistered, deviceRegistered)) &&
            (identical(other.cpuUsage, cpuUsage) || const DeepCollectionEquality().equals(other.cpuUsage, cpuUsage)) &&
            (identical(other.gpuUsage, gpuUsage) || const DeepCollectionEquality().equals(other.gpuUsage, gpuUsage)) &&
            (identical(other.temperature, temperature) || const DeepCollectionEquality().equals(other.temperature, temperature)) &&
            (identical(other.smsLogTrackingOn, smsLogTrackingOn) || const DeepCollectionEquality().equals(other.smsLogTrackingOn, smsLogTrackingOn)) &&
            (identical(other.smsLogTrackingInterval, smsLogTrackingInterval) || const DeepCollectionEquality().equals(other.smsLogTrackingInterval, smsLogTrackingInterval)) &&
            (identical(other.afwProfile, afwProfile) || const DeepCollectionEquality().equals(other.afwProfile, afwProfile)) &&
            (identical(other.isenrolled, isenrolled) || const DeepCollectionEquality().equals(other.isenrolled, isenrolled)) &&
            (identical(other.isSupervised, isSupervised) || const DeepCollectionEquality().equals(other.isSupervised, isSupervised)) &&
            (identical(other.currentWorkProfile, currentWorkProfile) || const DeepCollectionEquality().equals(other.currentWorkProfile, currentWorkProfile)) &&
            (identical(other.mobileDataUsageTrackingOn, mobileDataUsageTrackingOn) || const DeepCollectionEquality().equals(other.mobileDataUsageTrackingOn, mobileDataUsageTrackingOn)) &&
            (identical(other.batteryState, batteryState) || const DeepCollectionEquality().equals(other.batteryState, batteryState)) &&
            (identical(other.iOsVendorId, iOsVendorId) || const DeepCollectionEquality().equals(other.iOsVendorId, iOsVendorId)) &&
            (identical(other.enrollmentMode, enrollmentMode) || const DeepCollectionEquality().equals(other.enrollmentMode, enrollmentMode)) &&
            (identical(other.additionalMAC, additionalMAC) || const DeepCollectionEquality().equals(other.additionalMAC, additionalMAC)) &&
            (identical(other.sureLockLicense, sureLockLicense) || const DeepCollectionEquality().equals(other.sureLockLicense, sureLockLicense)) &&
            (identical(other.sureFoxLicense, sureFoxLicense) || const DeepCollectionEquality().equals(other.sureFoxLicense, sureFoxLicense)) &&
            (identical(other.sureVideoLicense, sureVideoLicense) || const DeepCollectionEquality().equals(other.sureVideoLicense, sureVideoLicense)) &&
            (identical(other.sureLockAdmin, sureLockAdmin) || const DeepCollectionEquality().equals(other.sureLockAdmin, sureLockAdmin)) &&
            (identical(other.sureFoxAdmin, sureFoxAdmin) || const DeepCollectionEquality().equals(other.sureFoxAdmin, sureFoxAdmin)) &&
            (identical(other.sureVideoAdmin, sureVideoAdmin) || const DeepCollectionEquality().equals(other.sureVideoAdmin, sureVideoAdmin)) &&
            (identical(other.sureMDMNixAdmin, sureMDMNixAdmin) || const DeepCollectionEquality().equals(other.sureMDMNixAdmin, sureMDMNixAdmin)) &&
            (identical(other.nixPollingType, nixPollingType) || const DeepCollectionEquality().equals(other.nixPollingType, nixPollingType)) &&
            (identical(other.networkType, networkType) || const DeepCollectionEquality().equals(other.networkType, networkType)) &&
            (identical(other.locationTimeStamp, locationTimeStamp) || const DeepCollectionEquality().equals(other.locationTimeStamp, locationTimeStamp)) &&
            (identical(other.geoFence, geoFence) || const DeepCollectionEquality().equals(other.geoFence, geoFence)) &&
            (identical(other.timeFence, timeFence) || const DeepCollectionEquality().equals(other.timeFence, timeFence)) &&
            (identical(other.networkFence, networkFence) || const DeepCollectionEquality().equals(other.networkFence, networkFence)) &&
            (identical(other.applicationVersionList, applicationVersionList) || const DeepCollectionEquality().equals(other.applicationVersionList, applicationVersionList)) &&
            (identical(other.customColumnsList, customColumnsList) || const DeepCollectionEquality().equals(other.customColumnsList, customColumnsList)) &&
            (identical(other.gPSEnabled, gPSEnabled) || const DeepCollectionEquality().equals(other.gPSEnabled, gPSEnabled)) &&
            (identical(other.bluetoothEnabled, bluetoothEnabled) || const DeepCollectionEquality().equals(other.bluetoothEnabled, bluetoothEnabled)) &&
            (identical(other.uSBPluggedIn, uSBPluggedIn) || const DeepCollectionEquality().equals(other.uSBPluggedIn, uSBPluggedIn)) &&
            (identical(other.sureLockSettingsVersionCode, sureLockSettingsVersionCode) || const DeepCollectionEquality().equals(other.sureLockSettingsVersionCode, sureLockSettingsVersionCode)) &&
            (identical(other.osBuildNumber, osBuildNumber) || const DeepCollectionEquality().equals(other.osBuildNumber, osBuildNumber)) &&
            (identical(other.memoryStorageAvailable, memoryStorageAvailable) || const DeepCollectionEquality().equals(other.memoryStorageAvailable, memoryStorageAvailable)) &&
            (identical(other.availablePhysicalMemory, availablePhysicalMemory) || const DeepCollectionEquality().equals(other.availablePhysicalMemory, availablePhysicalMemory)) &&
            (identical(other.realDeviceName, realDeviceName) || const DeepCollectionEquality().equals(other.realDeviceName, realDeviceName)) &&
            (identical(other.bssid, bssid) || const DeepCollectionEquality().equals(other.bssid, bssid)) &&
            (identical(other.simSerialNumber, simSerialNumber) || const DeepCollectionEquality().equals(other.simSerialNumber, simSerialNumber)) &&
            (identical(other.deviceUserName, deviceUserName) || const DeepCollectionEquality().equals(other.deviceUserName, deviceUserName)) &&
            (identical(other.deviceApprovedStatus, deviceApprovedStatus) || const DeepCollectionEquality().equals(other.deviceApprovedStatus, deviceApprovedStatus)) &&
            (identical(other.securityPatchDate, securityPatchDate) || const DeepCollectionEquality().equals(other.securityPatchDate, securityPatchDate)) &&
            (identical(other.deviceGroupPath, deviceGroupPath) || const DeepCollectionEquality().equals(other.deviceGroupPath, deviceGroupPath)) &&
            (identical(other.organizationUnit, organizationUnit) || const DeepCollectionEquality().equals(other.organizationUnit, organizationUnit)) &&
            (identical(other.assetId, assetId) || const DeepCollectionEquality().equals(other.assetId, assetId)) &&
            (identical(other.locationInfo, locationInfo) || const DeepCollectionEquality().equals(other.locationInfo, locationInfo)) &&
            (identical(other.activationLockBypassCode, activationLockBypassCode) || const DeepCollectionEquality().equals(other.activationLockBypassCode, activationLockBypassCode)) &&
            (identical(other.sureLockPermissionData, sureLockPermissionData) || const DeepCollectionEquality().equals(other.sureLockPermissionData, sureLockPermissionData)) &&
            (identical(other.mTPSystemScanTimeStamp, mTPSystemScanTimeStamp) || const DeepCollectionEquality().equals(other.mTPSystemScanTimeStamp, mTPSystemScanTimeStamp)) &&
            (identical(other.mTPSystemScanThreatCount, mTPSystemScanThreatCount) || const DeepCollectionEquality().equals(other.mTPSystemScanThreatCount, mTPSystemScanThreatCount)) &&
            (identical(other.isMobileHotSpotEnabled, isMobileHotSpotEnabled) || const DeepCollectionEquality().equals(other.isMobileHotSpotEnabled, isMobileHotSpotEnabled)) &&
            (identical(other.isEncryptionEnabled, isEncryptionEnabled) || const DeepCollectionEquality().equals(other.isEncryptionEnabled, isEncryptionEnabled)) &&
            (identical(other.imei2, imei2) || const DeepCollectionEquality().equals(other.imei2, imei2)) &&
            (identical(other.ctsProfileMatch, ctsProfileMatch) || const DeepCollectionEquality().equals(other.ctsProfileMatch, ctsProfileMatch)) &&
            (identical(other.basicIntegrity, basicIntegrity) || const DeepCollectionEquality().equals(other.basicIntegrity, basicIntegrity)) &&
            (identical(other.verifyAppEnable, verifyAppEnable) || const DeepCollectionEquality().equals(other.verifyAppEnable, verifyAppEnable)) &&
            (identical(other.aDBEnable, aDBEnable) || const DeepCollectionEquality().equals(other.aDBEnable, aDBEnable)) &&
            (identical(other.allowUnknownSource, allowUnknownSource) || const DeepCollectionEquality().equals(other.allowUnknownSource, allowUnknownSource)) &&
            (identical(other.deviceTimeZone, deviceTimeZone) || const DeepCollectionEquality().equals(other.deviceTimeZone, deviceTimeZone)) &&
            (identical(other.thingsData, thingsData) || const DeepCollectionEquality().equals(other.thingsData, thingsData)) &&
            (identical(other.jobsInProgress, jobsInProgress) || const DeepCollectionEquality().equals(other.jobsInProgress, jobsInProgress)) &&
            (identical(other.androidID, androidID) || const DeepCollectionEquality().equals(other.androidID, androidID)) &&
            (identical(other.hashCode, hashCode) || const DeepCollectionEquality().equals(other.hashCode, hashCode)) &&
            (identical(other.efotaRegistrationStatus, efotaRegistrationStatus) || const DeepCollectionEquality().equals(other.efotaRegistrationStatus, efotaRegistrationStatus)) &&
            (identical(other.currentFirmwareVersion, currentFirmwareVersion) || const DeepCollectionEquality().equals(other.currentFirmwareVersion, currentFirmwareVersion)) &&
            (identical(other.currentUserWorkProfile, currentUserWorkProfile) || const DeepCollectionEquality().equals(other.currentUserWorkProfile, currentUserWorkProfile)) &&
            (identical(other.isLostModeEnabled, isLostModeEnabled) || const DeepCollectionEquality().equals(other.isLostModeEnabled, isLostModeEnabled)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(deviceID) ^
      const DeepCollectionEquality().hash(connectionStatus) ^
      const DeepCollectionEquality().hash(groupID) ^
      const DeepCollectionEquality().hash(deviceIPAddress) ^
      const DeepCollectionEquality().hash(deviceName) ^
      const DeepCollectionEquality().hash(userID) ^
      const DeepCollectionEquality().hash(lastTimeStamp) ^
      const DeepCollectionEquality().hash(deviceModelName) ^
      const DeepCollectionEquality().hash(platformType) ^
      const DeepCollectionEquality().hash($Operator) ^
      const DeepCollectionEquality().hash(battery) ^
      const DeepCollectionEquality().hash(phoneSignal) ^
      const DeepCollectionEquality().hash(agentVersion) ^
      const DeepCollectionEquality().hash(sureLockVersion) ^
      const DeepCollectionEquality().hash(sureFoxVersion) ^
      const DeepCollectionEquality().hash(sureVideoVersion) ^
      const DeepCollectionEquality().hash(defaultHome) ^
      const DeepCollectionEquality().hash(notes) ^
      const DeepCollectionEquality().hash(imei) ^
      const DeepCollectionEquality().hash(imsi) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(serialNumber) ^
      const DeepCollectionEquality().hash(trackingOn) ^
      const DeepCollectionEquality().hash(trackingInterval) ^
      const DeepCollectionEquality().hash(callLogTrackingOn) ^
      const DeepCollectionEquality().hash(callLogTrackingInterval) ^
      const DeepCollectionEquality().hash(protocol) ^
      const DeepCollectionEquality().hash(jobsFailed) ^
      const DeepCollectionEquality().hash(rootStatus) ^
      const DeepCollectionEquality().hash(macAddress) ^
      const DeepCollectionEquality().hash(securityPolicyPickedByDevice) ^
      const DeepCollectionEquality().hash(securityPolicyEnablePassword) ^
      const DeepCollectionEquality().hash(securityPolicyMinPasswordLength) ^
      const DeepCollectionEquality().hash(securityPolicyPasswordQuality) ^
      const DeepCollectionEquality().hash(securityPolicyPasswordTimeout) ^
      const DeepCollectionEquality().hash(securityPolicyPasswordMaxAttempts) ^
      const DeepCollectionEquality().hash(enablePeripheralPolicy) ^
      const DeepCollectionEquality().hash(disableWifi) ^
      const DeepCollectionEquality().hash(disableBluetooth) ^
      const DeepCollectionEquality().hash(disableCamera) ^
      const DeepCollectionEquality().hash(enforceEncrypyion) ^
      const DeepCollectionEquality().hash(disableGPS) ^
      const DeepCollectionEquality().hash(disableMobileData) ^
      const DeepCollectionEquality().hash(jobsInQueue) ^
      const DeepCollectionEquality().hash(jobsDeployed) ^
      const DeepCollectionEquality().hash(deviceTimeStamp) ^
      const DeepCollectionEquality().hash(wifiSignal) ^
      const DeepCollectionEquality().hash(wifiSSID) ^
      const DeepCollectionEquality().hash(deviceLocalIPAddress) ^
      const DeepCollectionEquality().hash(totalPhysicalMemory) ^
      const DeepCollectionEquality().hash(totalStorageMemory) ^
      const DeepCollectionEquality().hash(availableStorageMemory) ^
      const DeepCollectionEquality().hash(knoxStatus) ^
      const DeepCollectionEquality().hash(phoneRoaming) ^
      const DeepCollectionEquality().hash(batteryChemistry) ^
      const DeepCollectionEquality().hash(backupBatteryPercent) ^
      const DeepCollectionEquality().hash(oSVersion) ^
      const DeepCollectionEquality().hash(dataUsage) ^
      const DeepCollectionEquality().hash(securityPolicyPickedByDeviceApplied) ^
      const DeepCollectionEquality().hash(securityPolicyEnablePasswordApplied) ^
      const DeepCollectionEquality()
          .hash(securityPolicyMinPasswordLengthApplied) ^
      const DeepCollectionEquality()
          .hash(securityPolicyPasswordQualityApplied) ^
      const DeepCollectionEquality()
          .hash(securityPolicyPasswordTimeoutApplied) ^
      const DeepCollectionEquality()
          .hash(securityPolicyPasswordMaxAttemptsApplied) ^
      const DeepCollectionEquality().hash(enablePeripheralPolicyApplied) ^
      const DeepCollectionEquality().hash(disableWifiApplied) ^
      const DeepCollectionEquality().hash(disableBluetoothApplied) ^
      const DeepCollectionEquality().hash(disableCameraApplied) ^
      const DeepCollectionEquality().hash(enforceEncrypyionApplied) ^
      const DeepCollectionEquality().hash(disableGPSApplied) ^
      const DeepCollectionEquality().hash(disableMobileDataApplied) ^
      const DeepCollectionEquality().hash(releaseVersion) ^
      const DeepCollectionEquality().hash(deviceRegistered) ^
      const DeepCollectionEquality().hash(cpuUsage) ^
      const DeepCollectionEquality().hash(gpuUsage) ^
      const DeepCollectionEquality().hash(temperature) ^
      const DeepCollectionEquality().hash(smsLogTrackingOn) ^
      const DeepCollectionEquality().hash(smsLogTrackingInterval) ^
      const DeepCollectionEquality().hash(afwProfile) ^
      const DeepCollectionEquality().hash(isenrolled) ^
      const DeepCollectionEquality().hash(isSupervised) ^
      const DeepCollectionEquality().hash(currentWorkProfile) ^
      const DeepCollectionEquality().hash(mobileDataUsageTrackingOn) ^
      const DeepCollectionEquality().hash(batteryState) ^
      const DeepCollectionEquality().hash(iOsVendorId) ^
      const DeepCollectionEquality().hash(enrollmentMode) ^
      const DeepCollectionEquality().hash(additionalMAC) ^
      const DeepCollectionEquality().hash(sureLockLicense) ^
      const DeepCollectionEquality().hash(sureFoxLicense) ^
      const DeepCollectionEquality().hash(sureVideoLicense) ^
      const DeepCollectionEquality().hash(sureLockAdmin) ^
      const DeepCollectionEquality().hash(sureFoxAdmin) ^
      const DeepCollectionEquality().hash(sureVideoAdmin) ^
      const DeepCollectionEquality().hash(sureMDMNixAdmin) ^
      const DeepCollectionEquality().hash(nixPollingType) ^
      const DeepCollectionEquality().hash(networkType) ^
      const DeepCollectionEquality().hash(locationTimeStamp) ^
      const DeepCollectionEquality().hash(geoFence) ^
      const DeepCollectionEquality().hash(timeFence) ^
      const DeepCollectionEquality().hash(networkFence) ^
      const DeepCollectionEquality().hash(applicationVersionList) ^
      const DeepCollectionEquality().hash(customColumnsList) ^
      const DeepCollectionEquality().hash(gPSEnabled) ^
      const DeepCollectionEquality().hash(bluetoothEnabled) ^
      const DeepCollectionEquality().hash(uSBPluggedIn) ^
      const DeepCollectionEquality().hash(sureLockSettingsVersionCode) ^
      const DeepCollectionEquality().hash(osBuildNumber) ^
      const DeepCollectionEquality().hash(memoryStorageAvailable) ^
      const DeepCollectionEquality().hash(availablePhysicalMemory) ^
      const DeepCollectionEquality().hash(realDeviceName) ^
      const DeepCollectionEquality().hash(bssid) ^
      const DeepCollectionEquality().hash(simSerialNumber) ^
      const DeepCollectionEquality().hash(deviceUserName) ^
      const DeepCollectionEquality().hash(deviceApprovedStatus) ^
      const DeepCollectionEquality().hash(securityPatchDate) ^
      const DeepCollectionEquality().hash(deviceGroupPath) ^
      const DeepCollectionEquality().hash(organizationUnit) ^
      const DeepCollectionEquality().hash(assetId) ^
      const DeepCollectionEquality().hash(locationInfo) ^
      const DeepCollectionEquality().hash(activationLockBypassCode) ^
      const DeepCollectionEquality().hash(sureLockPermissionData) ^
      const DeepCollectionEquality().hash(mTPSystemScanTimeStamp) ^
      const DeepCollectionEquality().hash(mTPSystemScanThreatCount) ^
      const DeepCollectionEquality().hash(isMobileHotSpotEnabled) ^
      const DeepCollectionEquality().hash(isEncryptionEnabled) ^
      const DeepCollectionEquality().hash(imei2) ^
      const DeepCollectionEquality().hash(ctsProfileMatch) ^
      const DeepCollectionEquality().hash(basicIntegrity) ^
      const DeepCollectionEquality().hash(verifyAppEnable) ^
      const DeepCollectionEquality().hash(aDBEnable) ^
      const DeepCollectionEquality().hash(allowUnknownSource) ^
      const DeepCollectionEquality().hash(deviceTimeZone) ^
      const DeepCollectionEquality().hash(thingsData) ^
      const DeepCollectionEquality().hash(jobsInProgress) ^
      const DeepCollectionEquality().hash(androidID) ^
      const DeepCollectionEquality().hash(hashCode) ^
      const DeepCollectionEquality().hash(efotaRegistrationStatus) ^
      const DeepCollectionEquality().hash(currentFirmwareVersion) ^
      const DeepCollectionEquality().hash(currentUserWorkProfile) ^
      const DeepCollectionEquality().hash(isLostModeEnabled) ^
      runtimeType.hashCode;
}

extension $DeviceModel$ItemExtension on DeviceModel$Item {
  DeviceModel$Item copyWith(
      {String? deviceID,
      enums.DeviceModel$ItemConnectionStatus? connectionStatus,
      String? groupID,
      String? deviceIPAddress,
      String? deviceName,
      String? userID,
      String? lastTimeStamp,
      String? deviceModelName,
      String? platformType,
      String? $Operator,
      String? battery,
      String? phoneSignal,
      String? agentVersion,
      String? sureLockVersion,
      String? sureFoxVersion,
      String? sureVideoVersion,
      String? defaultHome,
      String? notes,
      String? imei,
      String? imsi,
      String? phoneNumber,
      String? serialNumber,
      String? trackingOn,
      String? trackingInterval,
      String? callLogTrackingOn,
      String? callLogTrackingInterval,
      String? protocol,
      String? jobsFailed,
      String? rootStatus,
      String? macAddress,
      String? securityPolicyPickedByDevice,
      String? securityPolicyEnablePassword,
      String? securityPolicyMinPasswordLength,
      String? securityPolicyPasswordQuality,
      String? securityPolicyPasswordTimeout,
      String? securityPolicyPasswordMaxAttempts,
      String? enablePeripheralPolicy,
      String? disableWifi,
      String? disableBluetooth,
      String? disableCamera,
      String? enforceEncrypyion,
      String? disableGPS,
      String? disableMobileData,
      String? jobsInQueue,
      String? jobsDeployed,
      String? deviceTimeStamp,
      String? wifiSignal,
      String? wifiSSID,
      String? deviceLocalIPAddress,
      String? totalPhysicalMemory,
      String? totalStorageMemory,
      String? availableStorageMemory,
      String? knoxStatus,
      String? phoneRoaming,
      enums.DeviceModel$ItemBatteryChemistry? batteryChemistry,
      String? backupBatteryPercent,
      String? oSVersion,
      String? dataUsage,
      String? securityPolicyPickedByDeviceApplied,
      String? securityPolicyEnablePasswordApplied,
      String? securityPolicyMinPasswordLengthApplied,
      String? securityPolicyPasswordQualityApplied,
      String? securityPolicyPasswordTimeoutApplied,
      String? securityPolicyPasswordMaxAttemptsApplied,
      String? enablePeripheralPolicyApplied,
      String? disableWifiApplied,
      String? disableBluetoothApplied,
      String? disableCameraApplied,
      String? enforceEncrypyionApplied,
      String? disableGPSApplied,
      String? disableMobileDataApplied,
      String? releaseVersion,
      String? deviceRegistered,
      String? cpuUsage,
      String? gpuUsage,
      String? temperature,
      String? smsLogTrackingOn,
      String? smsLogTrackingInterval,
      String? afwProfile,
      String? isenrolled,
      String? isSupervised,
      String? currentWorkProfile,
      String? mobileDataUsageTrackingOn,
      String? batteryState,
      String? iOsVendorId,
      String? enrollmentMode,
      String? additionalMAC,
      String? sureLockLicense,
      String? sureFoxLicense,
      String? sureVideoLicense,
      String? sureLockAdmin,
      String? sureFoxAdmin,
      String? sureVideoAdmin,
      String? sureMDMNixAdmin,
      String? nixPollingType,
      String? networkType,
      String? locationTimeStamp,
      String? geoFence,
      String? timeFence,
      String? networkFence,
      String? applicationVersionList,
      String? customColumnsList,
      String? gPSEnabled,
      String? bluetoothEnabled,
      String? uSBPluggedIn,
      String? sureLockSettingsVersionCode,
      String? osBuildNumber,
      String? memoryStorageAvailable,
      String? availablePhysicalMemory,
      String? realDeviceName,
      String? bssid,
      String? simSerialNumber,
      String? deviceUserName,
      String? deviceApprovedStatus,
      String? securityPatchDate,
      String? deviceGroupPath,
      String? organizationUnit,
      String? assetId,
      String? locationInfo,
      String? activationLockBypassCode,
      String? sureLockPermissionData,
      String? mTPSystemScanTimeStamp,
      String? mTPSystemScanThreatCount,
      String? isMobileHotSpotEnabled,
      String? isEncryptionEnabled,
      String? imei2,
      String? ctsProfileMatch,
      String? basicIntegrity,
      String? verifyAppEnable,
      String? aDBEnable,
      String? allowUnknownSource,
      String? deviceTimeZone,
      String? thingsData,
      String? jobsInProgress,
      String? androidID,
      String? hashCode,
      String? efotaRegistrationStatus,
      String? currentFirmwareVersion,
      String? currentUserWorkProfile,
      String? isLostModeEnabled}) {
    return DeviceModel$Item(
        deviceID: deviceID ?? this.deviceID,
        connectionStatus: connectionStatus ?? this.connectionStatus,
        groupID: groupID ?? this.groupID,
        deviceIPAddress: deviceIPAddress ?? this.deviceIPAddress,
        deviceName: deviceName ?? this.deviceName,
        userID: userID ?? this.userID,
        lastTimeStamp: lastTimeStamp ?? this.lastTimeStamp,
        deviceModelName: deviceModelName ?? this.deviceModelName,
        platformType: platformType ?? this.platformType,
        $Operator: $Operator ?? this.$Operator,
        battery: battery ?? this.battery,
        phoneSignal: phoneSignal ?? this.phoneSignal,
        agentVersion: agentVersion ?? this.agentVersion,
        sureLockVersion: sureLockVersion ?? this.sureLockVersion,
        sureFoxVersion: sureFoxVersion ?? this.sureFoxVersion,
        sureVideoVersion: sureVideoVersion ?? this.sureVideoVersion,
        defaultHome: defaultHome ?? this.defaultHome,
        notes: notes ?? this.notes,
        imei: imei ?? this.imei,
        imsi: imsi ?? this.imsi,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        serialNumber: serialNumber ?? this.serialNumber,
        trackingOn: trackingOn ?? this.trackingOn,
        trackingInterval: trackingInterval ?? this.trackingInterval,
        callLogTrackingOn: callLogTrackingOn ?? this.callLogTrackingOn,
        callLogTrackingInterval:
            callLogTrackingInterval ?? this.callLogTrackingInterval,
        protocol: protocol ?? this.protocol,
        jobsFailed: jobsFailed ?? this.jobsFailed,
        rootStatus: rootStatus ?? this.rootStatus,
        macAddress: macAddress ?? this.macAddress,
        securityPolicyPickedByDevice:
            securityPolicyPickedByDevice ?? this.securityPolicyPickedByDevice,
        securityPolicyEnablePassword:
            securityPolicyEnablePassword ?? this.securityPolicyEnablePassword,
        securityPolicyMinPasswordLength: securityPolicyMinPasswordLength ??
            this.securityPolicyMinPasswordLength,
        securityPolicyPasswordQuality:
            securityPolicyPasswordQuality ?? this.securityPolicyPasswordQuality,
        securityPolicyPasswordTimeout:
            securityPolicyPasswordTimeout ?? this.securityPolicyPasswordTimeout,
        securityPolicyPasswordMaxAttempts: securityPolicyPasswordMaxAttempts ??
            this.securityPolicyPasswordMaxAttempts,
        enablePeripheralPolicy:
            enablePeripheralPolicy ?? this.enablePeripheralPolicy,
        disableWifi: disableWifi ?? this.disableWifi,
        disableBluetooth: disableBluetooth ?? this.disableBluetooth,
        disableCamera: disableCamera ?? this.disableCamera,
        enforceEncrypyion: enforceEncrypyion ?? this.enforceEncrypyion,
        disableGPS: disableGPS ?? this.disableGPS,
        disableMobileData: disableMobileData ?? this.disableMobileData,
        jobsInQueue: jobsInQueue ?? this.jobsInQueue,
        jobsDeployed: jobsDeployed ?? this.jobsDeployed,
        deviceTimeStamp: deviceTimeStamp ?? this.deviceTimeStamp,
        wifiSignal: wifiSignal ?? this.wifiSignal,
        wifiSSID: wifiSSID ?? this.wifiSSID,
        deviceLocalIPAddress: deviceLocalIPAddress ?? this.deviceLocalIPAddress,
        totalPhysicalMemory: totalPhysicalMemory ?? this.totalPhysicalMemory,
        totalStorageMemory: totalStorageMemory ?? this.totalStorageMemory,
        availableStorageMemory:
            availableStorageMemory ?? this.availableStorageMemory,
        knoxStatus: knoxStatus ?? this.knoxStatus,
        phoneRoaming: phoneRoaming ?? this.phoneRoaming,
        batteryChemistry: batteryChemistry ?? this.batteryChemistry,
        backupBatteryPercent: backupBatteryPercent ?? this.backupBatteryPercent,
        oSVersion: oSVersion ?? this.oSVersion,
        dataUsage: dataUsage ?? this.dataUsage,
        securityPolicyPickedByDeviceApplied: securityPolicyPickedByDeviceApplied ??
            this.securityPolicyPickedByDeviceApplied,
        securityPolicyEnablePasswordApplied: securityPolicyEnablePasswordApplied ??
            this.securityPolicyEnablePasswordApplied,
        securityPolicyMinPasswordLengthApplied:
            securityPolicyMinPasswordLengthApplied ??
                this.securityPolicyMinPasswordLengthApplied,
        securityPolicyPasswordQualityApplied:
            securityPolicyPasswordQualityApplied ??
                this.securityPolicyPasswordQualityApplied,
        securityPolicyPasswordTimeoutApplied:
            securityPolicyPasswordTimeoutApplied ??
                this.securityPolicyPasswordTimeoutApplied,
        securityPolicyPasswordMaxAttemptsApplied:
            securityPolicyPasswordMaxAttemptsApplied ??
                this.securityPolicyPasswordMaxAttemptsApplied,
        enablePeripheralPolicyApplied:
            enablePeripheralPolicyApplied ?? this.enablePeripheralPolicyApplied,
        disableWifiApplied: disableWifiApplied ?? this.disableWifiApplied,
        disableBluetoothApplied:
            disableBluetoothApplied ?? this.disableBluetoothApplied,
        disableCameraApplied: disableCameraApplied ?? this.disableCameraApplied,
        enforceEncrypyionApplied:
            enforceEncrypyionApplied ?? this.enforceEncrypyionApplied,
        disableGPSApplied: disableGPSApplied ?? this.disableGPSApplied,
        disableMobileDataApplied:
            disableMobileDataApplied ?? this.disableMobileDataApplied,
        releaseVersion: releaseVersion ?? this.releaseVersion,
        deviceRegistered: deviceRegistered ?? this.deviceRegistered,
        cpuUsage: cpuUsage ?? this.cpuUsage,
        gpuUsage: gpuUsage ?? this.gpuUsage,
        temperature: temperature ?? this.temperature,
        smsLogTrackingOn: smsLogTrackingOn ?? this.smsLogTrackingOn,
        smsLogTrackingInterval:
            smsLogTrackingInterval ?? this.smsLogTrackingInterval,
        afwProfile: afwProfile ?? this.afwProfile,
        isenrolled: isenrolled ?? this.isenrolled,
        isSupervised: isSupervised ?? this.isSupervised,
        currentWorkProfile: currentWorkProfile ?? this.currentWorkProfile,
        mobileDataUsageTrackingOn:
            mobileDataUsageTrackingOn ?? this.mobileDataUsageTrackingOn,
        batteryState: batteryState ?? this.batteryState,
        iOsVendorId: iOsVendorId ?? this.iOsVendorId,
        enrollmentMode: enrollmentMode ?? this.enrollmentMode,
        additionalMAC: additionalMAC ?? this.additionalMAC,
        sureLockLicense: sureLockLicense ?? this.sureLockLicense,
        sureFoxLicense: sureFoxLicense ?? this.sureFoxLicense,
        sureVideoLicense: sureVideoLicense ?? this.sureVideoLicense,
        sureLockAdmin: sureLockAdmin ?? this.sureLockAdmin,
        sureFoxAdmin: sureFoxAdmin ?? this.sureFoxAdmin,
        sureVideoAdmin: sureVideoAdmin ?? this.sureVideoAdmin,
        sureMDMNixAdmin: sureMDMNixAdmin ?? this.sureMDMNixAdmin,
        nixPollingType: nixPollingType ?? this.nixPollingType,
        networkType: networkType ?? this.networkType,
        locationTimeStamp: locationTimeStamp ?? this.locationTimeStamp,
        geoFence: geoFence ?? this.geoFence,
        timeFence: timeFence ?? this.timeFence,
        networkFence: networkFence ?? this.networkFence,
        applicationVersionList:
            applicationVersionList ?? this.applicationVersionList,
        customColumnsList: customColumnsList ?? this.customColumnsList,
        gPSEnabled: gPSEnabled ?? this.gPSEnabled,
        bluetoothEnabled: bluetoothEnabled ?? this.bluetoothEnabled,
        uSBPluggedIn: uSBPluggedIn ?? this.uSBPluggedIn,
        sureLockSettingsVersionCode:
            sureLockSettingsVersionCode ?? this.sureLockSettingsVersionCode,
        osBuildNumber: osBuildNumber ?? this.osBuildNumber,
        memoryStorageAvailable: memoryStorageAvailable ?? this.memoryStorageAvailable,
        availablePhysicalMemory: availablePhysicalMemory ?? this.availablePhysicalMemory,
        realDeviceName: realDeviceName ?? this.realDeviceName,
        bssid: bssid ?? this.bssid,
        simSerialNumber: simSerialNumber ?? this.simSerialNumber,
        deviceUserName: deviceUserName ?? this.deviceUserName,
        deviceApprovedStatus: deviceApprovedStatus ?? this.deviceApprovedStatus,
        securityPatchDate: securityPatchDate ?? this.securityPatchDate,
        deviceGroupPath: deviceGroupPath ?? this.deviceGroupPath,
        organizationUnit: organizationUnit ?? this.organizationUnit,
        assetId: assetId ?? this.assetId,
        locationInfo: locationInfo ?? this.locationInfo,
        activationLockBypassCode: activationLockBypassCode ?? this.activationLockBypassCode,
        sureLockPermissionData: sureLockPermissionData ?? this.sureLockPermissionData,
        mTPSystemScanTimeStamp: mTPSystemScanTimeStamp ?? this.mTPSystemScanTimeStamp,
        mTPSystemScanThreatCount: mTPSystemScanThreatCount ?? this.mTPSystemScanThreatCount,
        isMobileHotSpotEnabled: isMobileHotSpotEnabled ?? this.isMobileHotSpotEnabled,
        isEncryptionEnabled: isEncryptionEnabled ?? this.isEncryptionEnabled,
        imei2: imei2 ?? this.imei2,
        ctsProfileMatch: ctsProfileMatch ?? this.ctsProfileMatch,
        basicIntegrity: basicIntegrity ?? this.basicIntegrity,
        verifyAppEnable: verifyAppEnable ?? this.verifyAppEnable,
        aDBEnable: aDBEnable ?? this.aDBEnable,
        allowUnknownSource: allowUnknownSource ?? this.allowUnknownSource,
        deviceTimeZone: deviceTimeZone ?? this.deviceTimeZone,
        thingsData: thingsData ?? this.thingsData,
        jobsInProgress: jobsInProgress ?? this.jobsInProgress,
        androidID: androidID ?? this.androidID,
        hashCode: hashCode ?? this.hashCode,
        efotaRegistrationStatus: efotaRegistrationStatus ?? this.efotaRegistrationStatus,
        currentFirmwareVersion: currentFirmwareVersion ?? this.currentFirmwareVersion,
        currentUserWorkProfile: currentUserWorkProfile ?? this.currentUserWorkProfile,
        isLostModeEnabled: isLostModeEnabled ?? this.isLostModeEnabled);
  }
}

@JsonSerializable(explicitToJson: true)
class JobCreateModel {
  JobCreateModel({
    required this.jobName,
    required this.folderId,
  });

  factory JobCreateModel.fromJson(Map<String, dynamic> json) =>
      _$JobCreateModelFromJson(json);

  @JsonKey(name: 'JobName')
  final String jobName;
  @JsonKey(name: 'FolderId')
  final String folderId;
  static const fromJsonFactory = _$JobCreateModelFromJson;
  static const toJsonFactory = _$JobCreateModelToJson;
  Map<String, dynamic> toJson() => _$JobCreateModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is JobCreateModel &&
            (identical(other.jobName, jobName) ||
                const DeepCollectionEquality()
                    .equals(other.jobName, jobName)) &&
            (identical(other.folderId, folderId) ||
                const DeepCollectionEquality()
                    .equals(other.folderId, folderId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobName) ^
      const DeepCollectionEquality().hash(folderId) ^
      runtimeType.hashCode;
}

extension $JobCreateModelExtension on JobCreateModel {
  JobCreateModel copyWith({String? jobName, String? folderId}) {
    return JobCreateModel(
        jobName: jobName ?? this.jobName, folderId: folderId ?? this.folderId);
  }
}

@JsonSerializable(explicitToJson: true)
class ThirdPartyAppSettingsJob {
  ThirdPartyAppSettingsJob({
    this.jobType,
    this.platform,
    this.payLoad,
    this.jobName,
    this.folderId,
  });

  factory ThirdPartyAppSettingsJob.fromJson(Map<String, dynamic> json) =>
      _$ThirdPartyAppSettingsJobFromJson(json);

  @JsonKey(name: 'JobType')
  final String? jobType;
  @JsonKey(name: 'Platform')
  final String? platform;
  @JsonKey(name: 'PayLoad')
  final ThirdPartyAppSettingsPayLoad? payLoad;
  @JsonKey(name: 'JobName')
  final String? jobName;
  @JsonKey(name: 'FolderId')
  final String? folderId;
  static const fromJsonFactory = _$ThirdPartyAppSettingsJobFromJson;
  static const toJsonFactory = _$ThirdPartyAppSettingsJobToJson;
  Map<String, dynamic> toJson() => _$ThirdPartyAppSettingsJobToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ThirdPartyAppSettingsJob &&
            (identical(other.jobType, jobType) ||
                const DeepCollectionEquality()
                    .equals(other.jobType, jobType)) &&
            (identical(other.platform, platform) ||
                const DeepCollectionEquality()
                    .equals(other.platform, platform)) &&
            (identical(other.payLoad, payLoad) ||
                const DeepCollectionEquality()
                    .equals(other.payLoad, payLoad)) &&
            (identical(other.jobName, jobName) ||
                const DeepCollectionEquality()
                    .equals(other.jobName, jobName)) &&
            (identical(other.folderId, folderId) ||
                const DeepCollectionEquality()
                    .equals(other.folderId, folderId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobType) ^
      const DeepCollectionEquality().hash(platform) ^
      const DeepCollectionEquality().hash(payLoad) ^
      const DeepCollectionEquality().hash(jobName) ^
      const DeepCollectionEquality().hash(folderId) ^
      runtimeType.hashCode;
}

extension $ThirdPartyAppSettingsJobExtension on ThirdPartyAppSettingsJob {
  ThirdPartyAppSettingsJob copyWith(
      {String? jobType,
      String? platform,
      ThirdPartyAppSettingsPayLoad? payLoad,
      String? jobName,
      String? folderId}) {
    return ThirdPartyAppSettingsJob(
        jobType: jobType ?? this.jobType,
        platform: platform ?? this.platform,
        payLoad: payLoad ?? this.payLoad,
        jobName: jobName ?? this.jobName,
        folderId: folderId ?? this.folderId);
  }
}

@JsonSerializable(explicitToJson: true)
class ThirdPartyAppSettingsPayLoad {
  ThirdPartyAppSettingsPayLoad({
    this.settingsXML,
    this.password,
    this.type,
  });

  factory ThirdPartyAppSettingsPayLoad.fromJson(Map<String, dynamic> json) =>
      _$ThirdPartyAppSettingsPayLoadFromJson(json);

  @JsonKey(name: 'SettingsXML')
  final String? settingsXML;
  @JsonKey(name: 'Password')
  final String? password;
  @JsonKey(name: 'Type')
  final int? type;
  static const fromJsonFactory = _$ThirdPartyAppSettingsPayLoadFromJson;
  static const toJsonFactory = _$ThirdPartyAppSettingsPayLoadToJson;
  Map<String, dynamic> toJson() => _$ThirdPartyAppSettingsPayLoadToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ThirdPartyAppSettingsPayLoad &&
            (identical(other.settingsXML, settingsXML) ||
                const DeepCollectionEquality()
                    .equals(other.settingsXML, settingsXML)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(settingsXML) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $ThirdPartyAppSettingsPayLoadExtension
    on ThirdPartyAppSettingsPayLoad {
  ThirdPartyAppSettingsPayLoad copyWith(
      {String? settingsXML, String? password, int? type}) {
    return ThirdPartyAppSettingsPayLoad(
        settingsXML: settingsXML ?? this.settingsXML,
        password: password ?? this.password,
        type: type ?? this.type);
  }
}

@JsonSerializable(explicitToJson: true)
class AndroidThirdPartyAppSettings {
  AndroidThirdPartyAppSettings({
    this.minimumVersion,
    this.versionCompare,
    this.jobName,
    this.folderId,
  });

  factory AndroidThirdPartyAppSettings.fromJson(Map<String, dynamic> json) =>
      _$AndroidThirdPartyAppSettingsFromJson(json);

  @JsonKey(name: 'MinimumVersion')
  final String? minimumVersion;
  @JsonKey(name: 'VersionCompare')
  final String? versionCompare;
  @JsonKey(name: 'JobName')
  final String? jobName;
  @JsonKey(name: 'FolderId')
  final String? folderId;
  static const fromJsonFactory = _$AndroidThirdPartyAppSettingsFromJson;
  static const toJsonFactory = _$AndroidThirdPartyAppSettingsToJson;
  Map<String, dynamic> toJson() => _$AndroidThirdPartyAppSettingsToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AndroidThirdPartyAppSettings &&
            (identical(other.minimumVersion, minimumVersion) ||
                const DeepCollectionEquality()
                    .equals(other.minimumVersion, minimumVersion)) &&
            (identical(other.versionCompare, versionCompare) ||
                const DeepCollectionEquality()
                    .equals(other.versionCompare, versionCompare)) &&
            (identical(other.jobName, jobName) ||
                const DeepCollectionEquality()
                    .equals(other.jobName, jobName)) &&
            (identical(other.folderId, folderId) ||
                const DeepCollectionEquality()
                    .equals(other.folderId, folderId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(minimumVersion) ^
      const DeepCollectionEquality().hash(versionCompare) ^
      const DeepCollectionEquality().hash(jobName) ^
      const DeepCollectionEquality().hash(folderId) ^
      runtimeType.hashCode;
}

extension $AndroidThirdPartyAppSettingsExtension
    on AndroidThirdPartyAppSettings {
  AndroidThirdPartyAppSettings copyWith(
      {String? minimumVersion,
      String? versionCompare,
      String? jobName,
      String? folderId}) {
    return AndroidThirdPartyAppSettings(
        minimumVersion: minimumVersion ?? this.minimumVersion,
        versionCompare: versionCompare ?? this.versionCompare,
        jobName: jobName ?? this.jobName,
        folderId: folderId ?? this.folderId);
  }
}

@JsonSerializable(explicitToJson: true)
class OthersThirdPartyAppSettings {
  OthersThirdPartyAppSettings();

  factory OthersThirdPartyAppSettings.fromJson(Map<String, dynamic> json) =>
      _$OthersThirdPartyAppSettingsFromJson(json);

  static const fromJsonFactory = _$OthersThirdPartyAppSettingsFromJson;
  static const toJsonFactory = _$OthersThirdPartyAppSettingsToJson;
  Map<String, dynamic> toJson() => _$OthersThirdPartyAppSettingsToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode => runtimeType.hashCode;
}

@JsonSerializable(explicitToJson: true)
class CompliancePolicyJob {
  CompliancePolicyJob({
    this.jobType,
    this.payLoad,
    this.platform,
    this.jobName,
    this.folderId,
  });

  factory CompliancePolicyJob.fromJson(Map<String, dynamic> json) =>
      _$CompliancePolicyJobFromJson(json);

  @JsonKey(name: 'JobType')
  final String? jobType;
  @JsonKey(name: 'PayLoad')
  final CompliancePolicyPayLoad? payLoad;
  @JsonKey(name: 'Platform')
  final String? platform;
  @JsonKey(name: 'JobName')
  final String? jobName;
  @JsonKey(name: 'FolderId')
  final String? folderId;
  static const fromJsonFactory = _$CompliancePolicyJobFromJson;
  static const toJsonFactory = _$CompliancePolicyJobToJson;
  Map<String, dynamic> toJson() => _$CompliancePolicyJobToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CompliancePolicyJob &&
            (identical(other.jobType, jobType) ||
                const DeepCollectionEquality()
                    .equals(other.jobType, jobType)) &&
            (identical(other.payLoad, payLoad) ||
                const DeepCollectionEquality()
                    .equals(other.payLoad, payLoad)) &&
            (identical(other.platform, platform) ||
                const DeepCollectionEquality()
                    .equals(other.platform, platform)) &&
            (identical(other.jobName, jobName) ||
                const DeepCollectionEquality()
                    .equals(other.jobName, jobName)) &&
            (identical(other.folderId, folderId) ||
                const DeepCollectionEquality()
                    .equals(other.folderId, folderId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobType) ^
      const DeepCollectionEquality().hash(payLoad) ^
      const DeepCollectionEquality().hash(platform) ^
      const DeepCollectionEquality().hash(jobName) ^
      const DeepCollectionEquality().hash(folderId) ^
      runtimeType.hashCode;
}

extension $CompliancePolicyJobExtension on CompliancePolicyJob {
  CompliancePolicyJob copyWith(
      {String? jobType,
      CompliancePolicyPayLoad? payLoad,
      String? platform,
      String? jobName,
      String? folderId}) {
    return CompliancePolicyJob(
        jobType: jobType ?? this.jobType,
        payLoad: payLoad ?? this.payLoad,
        platform: platform ?? this.platform,
        jobName: jobName ?? this.jobName,
        folderId: folderId ?? this.folderId);
  }
}

typedef CompliancePolicyPayLoad = List<CompliancePolicyPayLoad$Item>;

@JsonSerializable(explicitToJson: true)
class CompliancePolicyPayLoad$Item {
  CompliancePolicyPayLoad$Item({
    this.oSVersionRule,
    this.jailBrokenRootedRule,
    this.onlineConnectivityRule,
    this.simChangeRule,
    this.passcodePolicyRule,
    this.batteryRule,
    this.applicationPolicyRule,
    this.isEnable,
  });

  factory CompliancePolicyPayLoad$Item.fromJson(Map<String, dynamic> json) =>
      _$CompliancePolicyPayLoad$ItemFromJson(json);

  @JsonKey(name: 'OSVersionRule')
  final CompliancePolicyPayLoad$Item$OSVersionRule? oSVersionRule;
  @JsonKey(name: 'JailBrokenRootedRule')
  final CompliancePolicyPayLoad$Item$JailBrokenRootedRule? jailBrokenRootedRule;
  @JsonKey(name: 'OnlineConnectivityRule')
  final CompliancePolicyPayLoad$Item$OnlineConnectivityRule?
      onlineConnectivityRule;
  @JsonKey(name: 'SimChangeRule')
  final CompliancePolicyPayLoad$Item$SimChangeRule? simChangeRule;
  @JsonKey(name: 'PasscodePolicyRule')
  final CompliancePolicyPayLoad$Item$PasscodePolicyRule? passcodePolicyRule;
  @JsonKey(name: 'BatteryRule')
  final CompliancePolicyPayLoad$Item$BatteryRule? batteryRule;
  @JsonKey(name: 'ApplicationPolicyRule')
  final CompliancePolicyPayLoad$Item$ApplicationPolicyRule?
      applicationPolicyRule;
  @JsonKey(name: 'IsEnable')
  final bool? isEnable;
  static const fromJsonFactory = _$CompliancePolicyPayLoad$ItemFromJson;
  static const toJsonFactory = _$CompliancePolicyPayLoad$ItemToJson;
  Map<String, dynamic> toJson() => _$CompliancePolicyPayLoad$ItemToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CompliancePolicyPayLoad$Item &&
            (identical(other.oSVersionRule, oSVersionRule) ||
                const DeepCollectionEquality()
                    .equals(other.oSVersionRule, oSVersionRule)) &&
            (identical(other.jailBrokenRootedRule, jailBrokenRootedRule) ||
                const DeepCollectionEquality().equals(
                    other.jailBrokenRootedRule, jailBrokenRootedRule)) &&
            (identical(other.onlineConnectivityRule, onlineConnectivityRule) ||
                const DeepCollectionEquality().equals(
                    other.onlineConnectivityRule, onlineConnectivityRule)) &&
            (identical(other.simChangeRule, simChangeRule) ||
                const DeepCollectionEquality()
                    .equals(other.simChangeRule, simChangeRule)) &&
            (identical(other.passcodePolicyRule, passcodePolicyRule) ||
                const DeepCollectionEquality()
                    .equals(other.passcodePolicyRule, passcodePolicyRule)) &&
            (identical(other.batteryRule, batteryRule) ||
                const DeepCollectionEquality()
                    .equals(other.batteryRule, batteryRule)) &&
            (identical(other.applicationPolicyRule, applicationPolicyRule) ||
                const DeepCollectionEquality().equals(
                    other.applicationPolicyRule, applicationPolicyRule)) &&
            (identical(other.isEnable, isEnable) ||
                const DeepCollectionEquality()
                    .equals(other.isEnable, isEnable)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(oSVersionRule) ^
      const DeepCollectionEquality().hash(jailBrokenRootedRule) ^
      const DeepCollectionEquality().hash(onlineConnectivityRule) ^
      const DeepCollectionEquality().hash(simChangeRule) ^
      const DeepCollectionEquality().hash(passcodePolicyRule) ^
      const DeepCollectionEquality().hash(batteryRule) ^
      const DeepCollectionEquality().hash(applicationPolicyRule) ^
      const DeepCollectionEquality().hash(isEnable) ^
      runtimeType.hashCode;
}

extension $CompliancePolicyPayLoad$ItemExtension
    on CompliancePolicyPayLoad$Item {
  CompliancePolicyPayLoad$Item copyWith(
      {CompliancePolicyPayLoad$Item$OSVersionRule? oSVersionRule,
      CompliancePolicyPayLoad$Item$JailBrokenRootedRule? jailBrokenRootedRule,
      CompliancePolicyPayLoad$Item$OnlineConnectivityRule?
          onlineConnectivityRule,
      CompliancePolicyPayLoad$Item$SimChangeRule? simChangeRule,
      CompliancePolicyPayLoad$Item$PasscodePolicyRule? passcodePolicyRule,
      CompliancePolicyPayLoad$Item$BatteryRule? batteryRule,
      CompliancePolicyPayLoad$Item$ApplicationPolicyRule? applicationPolicyRule,
      bool? isEnable}) {
    return CompliancePolicyPayLoad$Item(
        oSVersionRule: oSVersionRule ?? this.oSVersionRule,
        jailBrokenRootedRule: jailBrokenRootedRule ?? this.jailBrokenRootedRule,
        onlineConnectivityRule:
            onlineConnectivityRule ?? this.onlineConnectivityRule,
        simChangeRule: simChangeRule ?? this.simChangeRule,
        passcodePolicyRule: passcodePolicyRule ?? this.passcodePolicyRule,
        batteryRule: batteryRule ?? this.batteryRule,
        applicationPolicyRule:
            applicationPolicyRule ?? this.applicationPolicyRule,
        isEnable: isEnable ?? this.isEnable);
  }
}

typedef ActionCompliance = List<ActionCompliance$Item>;

@JsonSerializable(explicitToJson: true)
class ActionCompliance$Item {
  ActionCompliance$Item({
    this.type,
    this.delayTime,
    this.delayunit,
    this.phonenumber,
    this.emailids,
    this.jobids,
  });

  factory ActionCompliance$Item.fromJson(Map<String, dynamic> json) =>
      _$ActionCompliance$ItemFromJson(json);

  @JsonKey(
      name: 'type',
      toJson: actionCompliance$ItemTypeToJson,
      fromJson: actionCompliance$ItemTypeFromJson)
  final enums.ActionCompliance$ItemType? type;
  @JsonKey(name: 'delayTime')
  final String? delayTime;
  @JsonKey(
      name: 'delayunit',
      toJson: actionCompliance$ItemDelayunitToJson,
      fromJson: actionCompliance$ItemDelayunitFromJson)
  final enums.ActionCompliance$ItemDelayunit? delayunit;
  @JsonKey(name: 'phonenumber')
  final String? phonenumber;
  @JsonKey(name: 'emailids')
  final String? emailids;
  @JsonKey(name: 'jobids', defaultValue: <Object>[])
  final List<Object>? jobids;
  static const fromJsonFactory = _$ActionCompliance$ItemFromJson;
  static const toJsonFactory = _$ActionCompliance$ItemToJson;
  Map<String, dynamic> toJson() => _$ActionCompliance$ItemToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ActionCompliance$Item &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.delayTime, delayTime) ||
                const DeepCollectionEquality()
                    .equals(other.delayTime, delayTime)) &&
            (identical(other.delayunit, delayunit) ||
                const DeepCollectionEquality()
                    .equals(other.delayunit, delayunit)) &&
            (identical(other.phonenumber, phonenumber) ||
                const DeepCollectionEquality()
                    .equals(other.phonenumber, phonenumber)) &&
            (identical(other.emailids, emailids) ||
                const DeepCollectionEquality()
                    .equals(other.emailids, emailids)) &&
            (identical(other.jobids, jobids) ||
                const DeepCollectionEquality().equals(other.jobids, jobids)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(delayTime) ^
      const DeepCollectionEquality().hash(delayunit) ^
      const DeepCollectionEquality().hash(phonenumber) ^
      const DeepCollectionEquality().hash(emailids) ^
      const DeepCollectionEquality().hash(jobids) ^
      runtimeType.hashCode;
}

extension $ActionCompliance$ItemExtension on ActionCompliance$Item {
  ActionCompliance$Item copyWith(
      {enums.ActionCompliance$ItemType? type,
      String? delayTime,
      enums.ActionCompliance$ItemDelayunit? delayunit,
      String? phonenumber,
      String? emailids,
      List<Object>? jobids}) {
    return ActionCompliance$Item(
        type: type ?? this.type,
        delayTime: delayTime ?? this.delayTime,
        delayunit: delayunit ?? this.delayunit,
        phonenumber: phonenumber ?? this.phonenumber,
        emailids: emailids ?? this.emailids,
        jobids: jobids ?? this.jobids);
  }
}

@JsonSerializable(explicitToJson: true)
class SecurityPolicyJob {
  SecurityPolicyJob({
    this.jobType,
    this.payLoad,
    this.platform,
    this.jobName,
    this.folderId,
  });

  factory SecurityPolicyJob.fromJson(Map<String, dynamic> json) =>
      _$SecurityPolicyJobFromJson(json);

  @JsonKey(name: 'JobType')
  final String? jobType;
  @JsonKey(name: 'PayLoad')
  final SecurityPolicyPayLoad? payLoad;
  @JsonKey(name: 'Platform')
  final String? platform;
  @JsonKey(name: 'JobName')
  final String? jobName;
  @JsonKey(name: 'FolderId')
  final String? folderId;
  static const fromJsonFactory = _$SecurityPolicyJobFromJson;
  static const toJsonFactory = _$SecurityPolicyJobToJson;
  Map<String, dynamic> toJson() => _$SecurityPolicyJobToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SecurityPolicyJob &&
            (identical(other.jobType, jobType) ||
                const DeepCollectionEquality()
                    .equals(other.jobType, jobType)) &&
            (identical(other.payLoad, payLoad) ||
                const DeepCollectionEquality()
                    .equals(other.payLoad, payLoad)) &&
            (identical(other.platform, platform) ||
                const DeepCollectionEquality()
                    .equals(other.platform, platform)) &&
            (identical(other.jobName, jobName) ||
                const DeepCollectionEquality()
                    .equals(other.jobName, jobName)) &&
            (identical(other.folderId, folderId) ||
                const DeepCollectionEquality()
                    .equals(other.folderId, folderId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobType) ^
      const DeepCollectionEquality().hash(payLoad) ^
      const DeepCollectionEquality().hash(platform) ^
      const DeepCollectionEquality().hash(jobName) ^
      const DeepCollectionEquality().hash(folderId) ^
      runtimeType.hashCode;
}

extension $SecurityPolicyJobExtension on SecurityPolicyJob {
  SecurityPolicyJob copyWith(
      {String? jobType,
      SecurityPolicyPayLoad? payLoad,
      String? platform,
      String? jobName,
      String? folderId}) {
    return SecurityPolicyJob(
        jobType: jobType ?? this.jobType,
        payLoad: payLoad ?? this.payLoad,
        platform: platform ?? this.platform,
        jobName: jobName ?? this.jobName,
        folderId: folderId ?? this.folderId);
  }
}

typedef SecurityPolicyPayLoad = List<SecurityPolicyPayLoad$Item>;

@JsonSerializable(explicitToJson: true)
class SecurityPolicyPayLoad$Item {
  SecurityPolicyPayLoad$Item({
    this.passwordPolicy,
    this.peripheralSettings,
  });

  factory SecurityPolicyPayLoad$Item.fromJson(Map<String, dynamic> json) =>
      _$SecurityPolicyPayLoad$ItemFromJson(json);

  @JsonKey(name: 'PasswordPolicy')
  final SecurityPolicyPayLoad$Item$PasswordPolicy? passwordPolicy;
  @JsonKey(name: 'PeripheralSettings')
  final SecurityPolicyPayLoad$Item$PeripheralSettings? peripheralSettings;
  static const fromJsonFactory = _$SecurityPolicyPayLoad$ItemFromJson;
  static const toJsonFactory = _$SecurityPolicyPayLoad$ItemToJson;
  Map<String, dynamic> toJson() => _$SecurityPolicyPayLoad$ItemToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SecurityPolicyPayLoad$Item &&
            (identical(other.passwordPolicy, passwordPolicy) ||
                const DeepCollectionEquality()
                    .equals(other.passwordPolicy, passwordPolicy)) &&
            (identical(other.peripheralSettings, peripheralSettings) ||
                const DeepCollectionEquality()
                    .equals(other.peripheralSettings, peripheralSettings)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(passwordPolicy) ^
      const DeepCollectionEquality().hash(peripheralSettings) ^
      runtimeType.hashCode;
}

extension $SecurityPolicyPayLoad$ItemExtension on SecurityPolicyPayLoad$Item {
  SecurityPolicyPayLoad$Item copyWith(
      {SecurityPolicyPayLoad$Item$PasswordPolicy? passwordPolicy,
      SecurityPolicyPayLoad$Item$PeripheralSettings? peripheralSettings}) {
    return SecurityPolicyPayLoad$Item(
        passwordPolicy: passwordPolicy ?? this.passwordPolicy,
        peripheralSettings: peripheralSettings ?? this.peripheralSettings);
  }
}

@JsonSerializable(explicitToJson: true)
class RemoteBuzzJob {
  RemoteBuzzJob({
    this.jobType,
    this.payLoad,
    this.platform,
    this.jobName,
    this.folderId,
  });

  factory RemoteBuzzJob.fromJson(Map<String, dynamic> json) =>
      _$RemoteBuzzJobFromJson(json);

  @JsonKey(name: 'JobType')
  final String? jobType;
  @JsonKey(name: 'PayLoad')
  final RemoteBuzzPayLoad? payLoad;
  @JsonKey(name: 'Platform')
  final String? platform;
  @JsonKey(name: 'JobName')
  final String? jobName;
  @JsonKey(name: 'FolderId')
  final String? folderId;
  static const fromJsonFactory = _$RemoteBuzzJobFromJson;
  static const toJsonFactory = _$RemoteBuzzJobToJson;
  Map<String, dynamic> toJson() => _$RemoteBuzzJobToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RemoteBuzzJob &&
            (identical(other.jobType, jobType) ||
                const DeepCollectionEquality()
                    .equals(other.jobType, jobType)) &&
            (identical(other.payLoad, payLoad) ||
                const DeepCollectionEquality()
                    .equals(other.payLoad, payLoad)) &&
            (identical(other.platform, platform) ||
                const DeepCollectionEquality()
                    .equals(other.platform, platform)) &&
            (identical(other.jobName, jobName) ||
                const DeepCollectionEquality()
                    .equals(other.jobName, jobName)) &&
            (identical(other.folderId, folderId) ||
                const DeepCollectionEquality()
                    .equals(other.folderId, folderId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobType) ^
      const DeepCollectionEquality().hash(payLoad) ^
      const DeepCollectionEquality().hash(platform) ^
      const DeepCollectionEquality().hash(jobName) ^
      const DeepCollectionEquality().hash(folderId) ^
      runtimeType.hashCode;
}

extension $RemoteBuzzJobExtension on RemoteBuzzJob {
  RemoteBuzzJob copyWith(
      {String? jobType,
      RemoteBuzzPayLoad? payLoad,
      String? platform,
      String? jobName,
      String? folderId}) {
    return RemoteBuzzJob(
        jobType: jobType ?? this.jobType,
        payLoad: payLoad ?? this.payLoad,
        platform: platform ?? this.platform,
        jobName: jobName ?? this.jobName,
        folderId: folderId ?? this.folderId);
  }
}

typedef RemoteBuzzPayLoad = List<RemoteBuzzPayLoad$Item>;

@JsonSerializable(explicitToJson: true)
class RemoteBuzzPayLoad$Item {
  RemoteBuzzPayLoad$Item({
    this.periodicity,
  });

  factory RemoteBuzzPayLoad$Item.fromJson(Map<String, dynamic> json) =>
      _$RemoteBuzzPayLoad$ItemFromJson(json);

  @JsonKey(name: 'Periodicity')
  final String? periodicity;
  static const fromJsonFactory = _$RemoteBuzzPayLoad$ItemFromJson;
  static const toJsonFactory = _$RemoteBuzzPayLoad$ItemToJson;
  Map<String, dynamic> toJson() => _$RemoteBuzzPayLoad$ItemToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RemoteBuzzPayLoad$Item &&
            (identical(other.periodicity, periodicity) ||
                const DeepCollectionEquality()
                    .equals(other.periodicity, periodicity)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(periodicity) ^ runtimeType.hashCode;
}

extension $RemoteBuzzPayLoad$ItemExtension on RemoteBuzzPayLoad$Item {
  RemoteBuzzPayLoad$Item copyWith({String? periodicity}) {
    return RemoteBuzzPayLoad$Item(periodicity: periodicity ?? this.periodicity);
  }
}

@JsonSerializable(explicitToJson: true)
class LockDeviceJob {
  LockDeviceJob({
    this.jobType,
    this.payLoad,
    this.platform,
    this.jobName,
    this.folderId,
  });

  factory LockDeviceJob.fromJson(Map<String, dynamic> json) =>
      _$LockDeviceJobFromJson(json);

  @JsonKey(name: 'JobType')
  final String? jobType;
  @JsonKey(name: 'PayLoad')
  final LockDevicePayLoad? payLoad;
  @JsonKey(name: 'Platform')
  final String? platform;
  @JsonKey(name: 'JobName')
  final String? jobName;
  @JsonKey(name: 'FolderId')
  final String? folderId;
  static const fromJsonFactory = _$LockDeviceJobFromJson;
  static const toJsonFactory = _$LockDeviceJobToJson;
  Map<String, dynamic> toJson() => _$LockDeviceJobToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LockDeviceJob &&
            (identical(other.jobType, jobType) ||
                const DeepCollectionEquality()
                    .equals(other.jobType, jobType)) &&
            (identical(other.payLoad, payLoad) ||
                const DeepCollectionEquality()
                    .equals(other.payLoad, payLoad)) &&
            (identical(other.platform, platform) ||
                const DeepCollectionEquality()
                    .equals(other.platform, platform)) &&
            (identical(other.jobName, jobName) ||
                const DeepCollectionEquality()
                    .equals(other.jobName, jobName)) &&
            (identical(other.folderId, folderId) ||
                const DeepCollectionEquality()
                    .equals(other.folderId, folderId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobType) ^
      const DeepCollectionEquality().hash(payLoad) ^
      const DeepCollectionEquality().hash(platform) ^
      const DeepCollectionEquality().hash(jobName) ^
      const DeepCollectionEquality().hash(folderId) ^
      runtimeType.hashCode;
}

extension $LockDeviceJobExtension on LockDeviceJob {
  LockDeviceJob copyWith(
      {String? jobType,
      LockDevicePayLoad? payLoad,
      String? platform,
      String? jobName,
      String? folderId}) {
    return LockDeviceJob(
        jobType: jobType ?? this.jobType,
        payLoad: payLoad ?? this.payLoad,
        platform: platform ?? this.platform,
        jobName: jobName ?? this.jobName,
        folderId: folderId ?? this.folderId);
  }
}

typedef LockDevicePayLoad = List<LockDevicePayLoad$Item>;

@JsonSerializable(explicitToJson: true)
class LockDevicePayLoad$Item {
  LockDevicePayLoad$Item({
    this.lockDevice,
    this.changeDevicePassword,
    this.password,
    this.token,
  });

  factory LockDevicePayLoad$Item.fromJson(Map<String, dynamic> json) =>
      _$LockDevicePayLoad$ItemFromJson(json);

  @JsonKey(name: 'LockDevice')
  final bool? lockDevice;
  @JsonKey(name: 'ChangeDevicePassword')
  final bool? changeDevicePassword;
  @JsonKey(name: 'Password')
  final String? password;
  @JsonKey(name: 'Token')
  final String? token;
  static const fromJsonFactory = _$LockDevicePayLoad$ItemFromJson;
  static const toJsonFactory = _$LockDevicePayLoad$ItemToJson;
  Map<String, dynamic> toJson() => _$LockDevicePayLoad$ItemToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LockDevicePayLoad$Item &&
            (identical(other.lockDevice, lockDevice) ||
                const DeepCollectionEquality()
                    .equals(other.lockDevice, lockDevice)) &&
            (identical(other.changeDevicePassword, changeDevicePassword) ||
                const DeepCollectionEquality().equals(
                    other.changeDevicePassword, changeDevicePassword)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(lockDevice) ^
      const DeepCollectionEquality().hash(changeDevicePassword) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(token) ^
      runtimeType.hashCode;
}

extension $LockDevicePayLoad$ItemExtension on LockDevicePayLoad$Item {
  LockDevicePayLoad$Item copyWith(
      {bool? lockDevice,
      bool? changeDevicePassword,
      String? password,
      String? token}) {
    return LockDevicePayLoad$Item(
        lockDevice: lockDevice ?? this.lockDevice,
        changeDevicePassword: changeDevicePassword ?? this.changeDevicePassword,
        password: password ?? this.password,
        token: token ?? this.token);
  }
}

@JsonSerializable(explicitToJson: true)
class DelayJob {
  DelayJob({
    this.jobType,
    this.payLoad,
    this.platform,
    this.jobName,
    this.folderId,
  });

  factory DelayJob.fromJson(Map<String, dynamic> json) =>
      _$DelayJobFromJson(json);

  @JsonKey(name: 'JobType')
  final String? jobType;
  @JsonKey(name: 'PayLoad')
  final DelayJobPayLoad? payLoad;
  @JsonKey(name: 'Platform')
  final String? platform;
  @JsonKey(name: 'JobName')
  final String? jobName;
  @JsonKey(name: 'FolderId')
  final String? folderId;
  static const fromJsonFactory = _$DelayJobFromJson;
  static const toJsonFactory = _$DelayJobToJson;
  Map<String, dynamic> toJson() => _$DelayJobToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DelayJob &&
            (identical(other.jobType, jobType) ||
                const DeepCollectionEquality()
                    .equals(other.jobType, jobType)) &&
            (identical(other.payLoad, payLoad) ||
                const DeepCollectionEquality()
                    .equals(other.payLoad, payLoad)) &&
            (identical(other.platform, platform) ||
                const DeepCollectionEquality()
                    .equals(other.platform, platform)) &&
            (identical(other.jobName, jobName) ||
                const DeepCollectionEquality()
                    .equals(other.jobName, jobName)) &&
            (identical(other.folderId, folderId) ||
                const DeepCollectionEquality()
                    .equals(other.folderId, folderId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobType) ^
      const DeepCollectionEquality().hash(payLoad) ^
      const DeepCollectionEquality().hash(platform) ^
      const DeepCollectionEquality().hash(jobName) ^
      const DeepCollectionEquality().hash(folderId) ^
      runtimeType.hashCode;
}

extension $DelayJobExtension on DelayJob {
  DelayJob copyWith(
      {String? jobType,
      DelayJobPayLoad? payLoad,
      String? platform,
      String? jobName,
      String? folderId}) {
    return DelayJob(
        jobType: jobType ?? this.jobType,
        payLoad: payLoad ?? this.payLoad,
        platform: platform ?? this.platform,
        jobName: jobName ?? this.jobName,
        folderId: folderId ?? this.folderId);
  }
}

@JsonSerializable(explicitToJson: true)
class DelayJobPayLoad {
  DelayJobPayLoad({
    this.delayInterval,
  });

  factory DelayJobPayLoad.fromJson(Map<String, dynamic> json) =>
      _$DelayJobPayLoadFromJson(json);

  @JsonKey(name: 'DelayInterval')
  final String? delayInterval;
  static const fromJsonFactory = _$DelayJobPayLoadFromJson;
  static const toJsonFactory = _$DelayJobPayLoadToJson;
  Map<String, dynamic> toJson() => _$DelayJobPayLoadToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DelayJobPayLoad &&
            (identical(other.delayInterval, delayInterval) ||
                const DeepCollectionEquality()
                    .equals(other.delayInterval, delayInterval)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(delayInterval) ^ runtimeType.hashCode;
}

extension $DelayJobPayLoadExtension on DelayJobPayLoad {
  DelayJobPayLoad copyWith({String? delayInterval}) {
    return DelayJobPayLoad(delayInterval: delayInterval ?? this.delayInterval);
  }
}

@JsonSerializable(explicitToJson: true)
class RunScriptJob {
  RunScriptJob({
    this.jobType,
    this.platform,
    this.payLoad,
    this.jobName,
    this.folderId,
  });

  factory RunScriptJob.fromJson(Map<String, dynamic> json) =>
      _$RunScriptJobFromJson(json);

  @JsonKey(name: 'JobType')
  final String? jobType;
  @JsonKey(name: 'Platform')
  final String? platform;
  @JsonKey(name: 'PayLoad')
  final RunScriptPayLoad? payLoad;
  @JsonKey(name: 'JobName')
  final String? jobName;
  @JsonKey(name: 'FolderId')
  final String? folderId;
  static const fromJsonFactory = _$RunScriptJobFromJson;
  static const toJsonFactory = _$RunScriptJobToJson;
  Map<String, dynamic> toJson() => _$RunScriptJobToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RunScriptJob &&
            (identical(other.jobType, jobType) ||
                const DeepCollectionEquality()
                    .equals(other.jobType, jobType)) &&
            (identical(other.platform, platform) ||
                const DeepCollectionEquality()
                    .equals(other.platform, platform)) &&
            (identical(other.payLoad, payLoad) ||
                const DeepCollectionEquality()
                    .equals(other.payLoad, payLoad)) &&
            (identical(other.jobName, jobName) ||
                const DeepCollectionEquality()
                    .equals(other.jobName, jobName)) &&
            (identical(other.folderId, folderId) ||
                const DeepCollectionEquality()
                    .equals(other.folderId, folderId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobType) ^
      const DeepCollectionEquality().hash(platform) ^
      const DeepCollectionEquality().hash(payLoad) ^
      const DeepCollectionEquality().hash(jobName) ^
      const DeepCollectionEquality().hash(folderId) ^
      runtimeType.hashCode;
}

extension $RunScriptJobExtension on RunScriptJob {
  RunScriptJob copyWith(
      {String? jobType,
      String? platform,
      RunScriptPayLoad? payLoad,
      String? jobName,
      String? folderId}) {
    return RunScriptJob(
        jobType: jobType ?? this.jobType,
        platform: platform ?? this.platform,
        payLoad: payLoad ?? this.payLoad,
        jobName: jobName ?? this.jobName,
        folderId: folderId ?? this.folderId);
  }
}

typedef RunScriptPayLoad = List<Object>;

@JsonSerializable(explicitToJson: true)
class FileTransferJob {
  FileTransferJob({
    this.jobType,
    this.payLoad,
    this.platform,
    this.jobName,
    this.folderId,
  });

  factory FileTransferJob.fromJson(Map<String, dynamic> json) =>
      _$FileTransferJobFromJson(json);

  @JsonKey(name: 'JobType')
  final String? jobType;
  @JsonKey(name: 'PayLoad')
  final FileTransferPayLoad? payLoad;
  @JsonKey(name: 'Platform')
  final String? platform;
  @JsonKey(name: 'JobName')
  final String? jobName;
  @JsonKey(name: 'FolderId')
  final String? folderId;
  static const fromJsonFactory = _$FileTransferJobFromJson;
  static const toJsonFactory = _$FileTransferJobToJson;
  Map<String, dynamic> toJson() => _$FileTransferJobToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FileTransferJob &&
            (identical(other.jobType, jobType) ||
                const DeepCollectionEquality()
                    .equals(other.jobType, jobType)) &&
            (identical(other.payLoad, payLoad) ||
                const DeepCollectionEquality()
                    .equals(other.payLoad, payLoad)) &&
            (identical(other.platform, platform) ||
                const DeepCollectionEquality()
                    .equals(other.platform, platform)) &&
            (identical(other.jobName, jobName) ||
                const DeepCollectionEquality()
                    .equals(other.jobName, jobName)) &&
            (identical(other.folderId, folderId) ||
                const DeepCollectionEquality()
                    .equals(other.folderId, folderId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobType) ^
      const DeepCollectionEquality().hash(payLoad) ^
      const DeepCollectionEquality().hash(platform) ^
      const DeepCollectionEquality().hash(jobName) ^
      const DeepCollectionEquality().hash(folderId) ^
      runtimeType.hashCode;
}

extension $FileTransferJobExtension on FileTransferJob {
  FileTransferJob copyWith(
      {String? jobType,
      FileTransferPayLoad? payLoad,
      String? platform,
      String? jobName,
      String? folderId}) {
    return FileTransferJob(
        jobType: jobType ?? this.jobType,
        payLoad: payLoad ?? this.payLoad,
        platform: platform ?? this.platform,
        jobName: jobName ?? this.jobName,
        folderId: folderId ?? this.folderId);
  }
}

typedef FileTransferPayLoad = List<FileTransferPayLoad$Item>;

@JsonSerializable(explicitToJson: true)
class FileTransferPayLoad$Item {
  FileTransferPayLoad$Item({
    this.localPath,
    this.devicePath,
    this.install,
    this.isHttpUrl,
    this.useBasicAuthentication,
    this.httpUserName,
    this.httpPassword,
    this.isSilent,
    this.executePath,
    this.currentUser,
    this.jobNameXML,
    this.fromAppStore,
  });

  factory FileTransferPayLoad$Item.fromJson(Map<String, dynamic> json) =>
      _$FileTransferPayLoad$ItemFromJson(json);

  @JsonKey(name: 'LocalPath')
  final String? localPath;
  @JsonKey(name: 'DevicePath')
  final String? devicePath;
  @JsonKey(name: 'Install')
  final bool? install;
  @JsonKey(name: 'IsHttpUrl')
  final bool? isHttpUrl;
  @JsonKey(name: 'UseBasicAuthentication')
  final bool? useBasicAuthentication;
  @JsonKey(name: 'HttpUserName')
  final String? httpUserName;
  @JsonKey(name: 'HttpPassword')
  final String? httpPassword;
  @JsonKey(name: 'IsSilent')
  final bool? isSilent;
  @JsonKey(name: 'ExecutePath')
  final String? executePath;
  @JsonKey(name: 'CurrentUser')
  final bool? currentUser;
  @JsonKey(name: 'JobNameXML')
  final String? jobNameXML;
  @JsonKey(name: 'FromAppStore')
  final bool? fromAppStore;
  static const fromJsonFactory = _$FileTransferPayLoad$ItemFromJson;
  static const toJsonFactory = _$FileTransferPayLoad$ItemToJson;
  Map<String, dynamic> toJson() => _$FileTransferPayLoad$ItemToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FileTransferPayLoad$Item &&
            (identical(other.localPath, localPath) ||
                const DeepCollectionEquality()
                    .equals(other.localPath, localPath)) &&
            (identical(other.devicePath, devicePath) ||
                const DeepCollectionEquality()
                    .equals(other.devicePath, devicePath)) &&
            (identical(other.install, install) ||
                const DeepCollectionEquality()
                    .equals(other.install, install)) &&
            (identical(other.isHttpUrl, isHttpUrl) ||
                const DeepCollectionEquality()
                    .equals(other.isHttpUrl, isHttpUrl)) &&
            (identical(other.useBasicAuthentication, useBasicAuthentication) ||
                const DeepCollectionEquality().equals(
                    other.useBasicAuthentication, useBasicAuthentication)) &&
            (identical(other.httpUserName, httpUserName) ||
                const DeepCollectionEquality()
                    .equals(other.httpUserName, httpUserName)) &&
            (identical(other.httpPassword, httpPassword) ||
                const DeepCollectionEquality()
                    .equals(other.httpPassword, httpPassword)) &&
            (identical(other.isSilent, isSilent) ||
                const DeepCollectionEquality()
                    .equals(other.isSilent, isSilent)) &&
            (identical(other.executePath, executePath) ||
                const DeepCollectionEquality()
                    .equals(other.executePath, executePath)) &&
            (identical(other.currentUser, currentUser) ||
                const DeepCollectionEquality()
                    .equals(other.currentUser, currentUser)) &&
            (identical(other.jobNameXML, jobNameXML) ||
                const DeepCollectionEquality()
                    .equals(other.jobNameXML, jobNameXML)) &&
            (identical(other.fromAppStore, fromAppStore) ||
                const DeepCollectionEquality()
                    .equals(other.fromAppStore, fromAppStore)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(localPath) ^
      const DeepCollectionEquality().hash(devicePath) ^
      const DeepCollectionEquality().hash(install) ^
      const DeepCollectionEquality().hash(isHttpUrl) ^
      const DeepCollectionEquality().hash(useBasicAuthentication) ^
      const DeepCollectionEquality().hash(httpUserName) ^
      const DeepCollectionEquality().hash(httpPassword) ^
      const DeepCollectionEquality().hash(isSilent) ^
      const DeepCollectionEquality().hash(executePath) ^
      const DeepCollectionEquality().hash(currentUser) ^
      const DeepCollectionEquality().hash(jobNameXML) ^
      const DeepCollectionEquality().hash(fromAppStore) ^
      runtimeType.hashCode;
}

extension $FileTransferPayLoad$ItemExtension on FileTransferPayLoad$Item {
  FileTransferPayLoad$Item copyWith(
      {String? localPath,
      String? devicePath,
      bool? install,
      bool? isHttpUrl,
      bool? useBasicAuthentication,
      String? httpUserName,
      String? httpPassword,
      bool? isSilent,
      String? executePath,
      bool? currentUser,
      String? jobNameXML,
      bool? fromAppStore}) {
    return FileTransferPayLoad$Item(
        localPath: localPath ?? this.localPath,
        devicePath: devicePath ?? this.devicePath,
        install: install ?? this.install,
        isHttpUrl: isHttpUrl ?? this.isHttpUrl,
        useBasicAuthentication:
            useBasicAuthentication ?? this.useBasicAuthentication,
        httpUserName: httpUserName ?? this.httpUserName,
        httpPassword: httpPassword ?? this.httpPassword,
        isSilent: isSilent ?? this.isSilent,
        executePath: executePath ?? this.executePath,
        currentUser: currentUser ?? this.currentUser,
        jobNameXML: jobNameXML ?? this.jobNameXML,
        fromAppStore: fromAppStore ?? this.fromAppStore);
  }
}

@JsonSerializable(explicitToJson: true)
class CompositeJob {
  CompositeJob({
    this.jobType,
    this.payLoad,
    this.platform,
    this.jobName,
    this.folderId,
  });

  factory CompositeJob.fromJson(Map<String, dynamic> json) =>
      _$CompositeJobFromJson(json);

  @JsonKey(name: 'JobType')
  final String? jobType;
  @JsonKey(name: 'PayLoad')
  final CompositePayLoad? payLoad;
  @JsonKey(name: 'Platform')
  final String? platform;
  @JsonKey(name: 'JobName')
  final String? jobName;
  @JsonKey(name: 'FolderId')
  final String? folderId;
  static const fromJsonFactory = _$CompositeJobFromJson;
  static const toJsonFactory = _$CompositeJobToJson;
  Map<String, dynamic> toJson() => _$CompositeJobToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CompositeJob &&
            (identical(other.jobType, jobType) ||
                const DeepCollectionEquality()
                    .equals(other.jobType, jobType)) &&
            (identical(other.payLoad, payLoad) ||
                const DeepCollectionEquality()
                    .equals(other.payLoad, payLoad)) &&
            (identical(other.platform, platform) ||
                const DeepCollectionEquality()
                    .equals(other.platform, platform)) &&
            (identical(other.jobName, jobName) ||
                const DeepCollectionEquality()
                    .equals(other.jobName, jobName)) &&
            (identical(other.folderId, folderId) ||
                const DeepCollectionEquality()
                    .equals(other.folderId, folderId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobType) ^
      const DeepCollectionEquality().hash(payLoad) ^
      const DeepCollectionEquality().hash(platform) ^
      const DeepCollectionEquality().hash(jobName) ^
      const DeepCollectionEquality().hash(folderId) ^
      runtimeType.hashCode;
}

extension $CompositeJobExtension on CompositeJob {
  CompositeJob copyWith(
      {String? jobType,
      CompositePayLoad? payLoad,
      String? platform,
      String? jobName,
      String? folderId}) {
    return CompositeJob(
        jobType: jobType ?? this.jobType,
        payLoad: payLoad ?? this.payLoad,
        platform: platform ?? this.platform,
        jobName: jobName ?? this.jobName,
        folderId: folderId ?? this.folderId);
  }
}

typedef CompositePayLoad = List<Object>;

@JsonSerializable(explicitToJson: true)
class AndroidComposite {
  AndroidComposite({
    this.minimumVersion,
    this.versionCompare,
    this.jobName,
    this.folderId,
  });

  factory AndroidComposite.fromJson(Map<String, dynamic> json) =>
      _$AndroidCompositeFromJson(json);

  @JsonKey(name: 'MinimumVersion')
  final String? minimumVersion;
  @JsonKey(name: 'VersionCompare')
  final String? versionCompare;
  @JsonKey(name: 'JobName')
  final String? jobName;
  @JsonKey(name: 'FolderId')
  final String? folderId;
  static const fromJsonFactory = _$AndroidCompositeFromJson;
  static const toJsonFactory = _$AndroidCompositeToJson;
  Map<String, dynamic> toJson() => _$AndroidCompositeToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AndroidComposite &&
            (identical(other.minimumVersion, minimumVersion) ||
                const DeepCollectionEquality()
                    .equals(other.minimumVersion, minimumVersion)) &&
            (identical(other.versionCompare, versionCompare) ||
                const DeepCollectionEquality()
                    .equals(other.versionCompare, versionCompare)) &&
            (identical(other.jobName, jobName) ||
                const DeepCollectionEquality()
                    .equals(other.jobName, jobName)) &&
            (identical(other.folderId, folderId) ||
                const DeepCollectionEquality()
                    .equals(other.folderId, folderId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(minimumVersion) ^
      const DeepCollectionEquality().hash(versionCompare) ^
      const DeepCollectionEquality().hash(jobName) ^
      const DeepCollectionEquality().hash(folderId) ^
      runtimeType.hashCode;
}

extension $AndroidCompositeExtension on AndroidComposite {
  AndroidComposite copyWith(
      {String? minimumVersion,
      String? versionCompare,
      String? jobName,
      String? folderId}) {
    return AndroidComposite(
        minimumVersion: minimumVersion ?? this.minimumVersion,
        versionCompare: versionCompare ?? this.versionCompare,
        jobName: jobName ?? this.jobName,
        folderId: folderId ?? this.folderId);
  }
}

@JsonSerializable(explicitToJson: true)
class OthersComposite {
  OthersComposite();

  factory OthersComposite.fromJson(Map<String, dynamic> json) =>
      _$OthersCompositeFromJson(json);

  static const fromJsonFactory = _$OthersCompositeFromJson;
  static const toJsonFactory = _$OthersCompositeToJson;
  Map<String, dynamic> toJson() => _$OthersCompositeToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode => runtimeType.hashCode;
}

@JsonSerializable(explicitToJson: true)
class InstallJob {
  InstallJob({
    this.jobType,
    this.payLoad,
    this.platform,
    this.jobName,
    this.folderId,
  });

  factory InstallJob.fromJson(Map<String, dynamic> json) =>
      _$InstallJobFromJson(json);

  @JsonKey(name: 'JobType')
  final String? jobType;
  @JsonKey(name: 'PayLoad')
  final InstallPayLoad? payLoad;
  @JsonKey(name: 'Platform')
  final String? platform;
  @JsonKey(name: 'JobName')
  final String? jobName;
  @JsonKey(name: 'FolderId')
  final String? folderId;
  static const fromJsonFactory = _$InstallJobFromJson;
  static const toJsonFactory = _$InstallJobToJson;
  Map<String, dynamic> toJson() => _$InstallJobToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InstallJob &&
            (identical(other.jobType, jobType) ||
                const DeepCollectionEquality()
                    .equals(other.jobType, jobType)) &&
            (identical(other.payLoad, payLoad) ||
                const DeepCollectionEquality()
                    .equals(other.payLoad, payLoad)) &&
            (identical(other.platform, platform) ||
                const DeepCollectionEquality()
                    .equals(other.platform, platform)) &&
            (identical(other.jobName, jobName) ||
                const DeepCollectionEquality()
                    .equals(other.jobName, jobName)) &&
            (identical(other.folderId, folderId) ||
                const DeepCollectionEquality()
                    .equals(other.folderId, folderId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobType) ^
      const DeepCollectionEquality().hash(payLoad) ^
      const DeepCollectionEquality().hash(platform) ^
      const DeepCollectionEquality().hash(jobName) ^
      const DeepCollectionEquality().hash(folderId) ^
      runtimeType.hashCode;
}

extension $InstallJobExtension on InstallJob {
  InstallJob copyWith(
      {String? jobType,
      InstallPayLoad? payLoad,
      String? platform,
      String? jobName,
      String? folderId}) {
    return InstallJob(
        jobType: jobType ?? this.jobType,
        payLoad: payLoad ?? this.payLoad,
        platform: platform ?? this.platform,
        jobName: jobName ?? this.jobName,
        folderId: folderId ?? this.folderId);
  }
}

typedef InstallPayLoad = List<InstallPayLoad$Item>;

@JsonSerializable(explicitToJson: true)
class InstallPayLoad$Item {
  InstallPayLoad$Item({
    this.localPath,
    this.devicePath,
    this.install,
    this.isHttpUrl,
    this.useBasicAuthentication,
    this.httpUserName,
    this.httpPassword,
    this.isSilent,
    this.executePath,
    this.currentUser,
    this.jobNameXML,
    this.fromAppStore,
  });

  factory InstallPayLoad$Item.fromJson(Map<String, dynamic> json) =>
      _$InstallPayLoad$ItemFromJson(json);

  @JsonKey(name: 'LocalPath')
  final String? localPath;
  @JsonKey(name: 'DevicePath')
  final String? devicePath;
  @JsonKey(name: 'Install')
  final bool? install;
  @JsonKey(name: 'IsHttpUrl')
  final bool? isHttpUrl;
  @JsonKey(name: 'UseBasicAuthentication')
  final bool? useBasicAuthentication;
  @JsonKey(name: 'HttpUserName')
  final String? httpUserName;
  @JsonKey(name: 'HttpPassword')
  final String? httpPassword;
  @JsonKey(name: 'IsSilent')
  final bool? isSilent;
  @JsonKey(name: 'ExecutePath')
  final String? executePath;
  @JsonKey(name: 'CurrentUser')
  final bool? currentUser;
  @JsonKey(name: 'JobNameXML')
  final String? jobNameXML;
  @JsonKey(name: 'FromAppStore')
  final bool? fromAppStore;
  static const fromJsonFactory = _$InstallPayLoad$ItemFromJson;
  static const toJsonFactory = _$InstallPayLoad$ItemToJson;
  Map<String, dynamic> toJson() => _$InstallPayLoad$ItemToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InstallPayLoad$Item &&
            (identical(other.localPath, localPath) ||
                const DeepCollectionEquality()
                    .equals(other.localPath, localPath)) &&
            (identical(other.devicePath, devicePath) ||
                const DeepCollectionEquality()
                    .equals(other.devicePath, devicePath)) &&
            (identical(other.install, install) ||
                const DeepCollectionEquality()
                    .equals(other.install, install)) &&
            (identical(other.isHttpUrl, isHttpUrl) ||
                const DeepCollectionEquality()
                    .equals(other.isHttpUrl, isHttpUrl)) &&
            (identical(other.useBasicAuthentication, useBasicAuthentication) ||
                const DeepCollectionEquality().equals(
                    other.useBasicAuthentication, useBasicAuthentication)) &&
            (identical(other.httpUserName, httpUserName) ||
                const DeepCollectionEquality()
                    .equals(other.httpUserName, httpUserName)) &&
            (identical(other.httpPassword, httpPassword) ||
                const DeepCollectionEquality()
                    .equals(other.httpPassword, httpPassword)) &&
            (identical(other.isSilent, isSilent) ||
                const DeepCollectionEquality()
                    .equals(other.isSilent, isSilent)) &&
            (identical(other.executePath, executePath) ||
                const DeepCollectionEquality()
                    .equals(other.executePath, executePath)) &&
            (identical(other.currentUser, currentUser) ||
                const DeepCollectionEquality()
                    .equals(other.currentUser, currentUser)) &&
            (identical(other.jobNameXML, jobNameXML) ||
                const DeepCollectionEquality()
                    .equals(other.jobNameXML, jobNameXML)) &&
            (identical(other.fromAppStore, fromAppStore) ||
                const DeepCollectionEquality()
                    .equals(other.fromAppStore, fromAppStore)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(localPath) ^
      const DeepCollectionEquality().hash(devicePath) ^
      const DeepCollectionEquality().hash(install) ^
      const DeepCollectionEquality().hash(isHttpUrl) ^
      const DeepCollectionEquality().hash(useBasicAuthentication) ^
      const DeepCollectionEquality().hash(httpUserName) ^
      const DeepCollectionEquality().hash(httpPassword) ^
      const DeepCollectionEquality().hash(isSilent) ^
      const DeepCollectionEquality().hash(executePath) ^
      const DeepCollectionEquality().hash(currentUser) ^
      const DeepCollectionEquality().hash(jobNameXML) ^
      const DeepCollectionEquality().hash(fromAppStore) ^
      runtimeType.hashCode;
}

extension $InstallPayLoad$ItemExtension on InstallPayLoad$Item {
  InstallPayLoad$Item copyWith(
      {String? localPath,
      String? devicePath,
      bool? install,
      bool? isHttpUrl,
      bool? useBasicAuthentication,
      String? httpUserName,
      String? httpPassword,
      bool? isSilent,
      String? executePath,
      bool? currentUser,
      String? jobNameXML,
      bool? fromAppStore}) {
    return InstallPayLoad$Item(
        localPath: localPath ?? this.localPath,
        devicePath: devicePath ?? this.devicePath,
        install: install ?? this.install,
        isHttpUrl: isHttpUrl ?? this.isHttpUrl,
        useBasicAuthentication:
            useBasicAuthentication ?? this.useBasicAuthentication,
        httpUserName: httpUserName ?? this.httpUserName,
        httpPassword: httpPassword ?? this.httpPassword,
        isSilent: isSilent ?? this.isSilent,
        executePath: executePath ?? this.executePath,
        currentUser: currentUser ?? this.currentUser,
        jobNameXML: jobNameXML ?? this.jobNameXML,
        fromAppStore: fromAppStore ?? this.fromAppStore);
  }
}

@JsonSerializable(explicitToJson: true)
class AndroidFileTransfer {
  AndroidFileTransfer({
    this.minimumVersion,
    this.versionCompare,
    this.jobName,
    this.folderId,
  });

  factory AndroidFileTransfer.fromJson(Map<String, dynamic> json) =>
      _$AndroidFileTransferFromJson(json);

  @JsonKey(name: 'MinimumVersion')
  final String? minimumVersion;
  @JsonKey(name: 'VersionCompare')
  final String? versionCompare;
  @JsonKey(name: 'JobName')
  final String? jobName;
  @JsonKey(name: 'FolderId')
  final String? folderId;
  static const fromJsonFactory = _$AndroidFileTransferFromJson;
  static const toJsonFactory = _$AndroidFileTransferToJson;
  Map<String, dynamic> toJson() => _$AndroidFileTransferToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AndroidFileTransfer &&
            (identical(other.minimumVersion, minimumVersion) ||
                const DeepCollectionEquality()
                    .equals(other.minimumVersion, minimumVersion)) &&
            (identical(other.versionCompare, versionCompare) ||
                const DeepCollectionEquality()
                    .equals(other.versionCompare, versionCompare)) &&
            (identical(other.jobName, jobName) ||
                const DeepCollectionEquality()
                    .equals(other.jobName, jobName)) &&
            (identical(other.folderId, folderId) ||
                const DeepCollectionEquality()
                    .equals(other.folderId, folderId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(minimumVersion) ^
      const DeepCollectionEquality().hash(versionCompare) ^
      const DeepCollectionEquality().hash(jobName) ^
      const DeepCollectionEquality().hash(folderId) ^
      runtimeType.hashCode;
}

extension $AndroidFileTransferExtension on AndroidFileTransfer {
  AndroidFileTransfer copyWith(
      {String? minimumVersion,
      String? versionCompare,
      String? jobName,
      String? folderId}) {
    return AndroidFileTransfer(
        minimumVersion: minimumVersion ?? this.minimumVersion,
        versionCompare: versionCompare ?? this.versionCompare,
        jobName: jobName ?? this.jobName,
        folderId: folderId ?? this.folderId);
  }
}

@JsonSerializable(explicitToJson: true)
class OthersInstall {
  OthersInstall();

  factory OthersInstall.fromJson(Map<String, dynamic> json) =>
      _$OthersInstallFromJson(json);

  static const fromJsonFactory = _$OthersInstallFromJson;
  static const toJsonFactory = _$OthersInstallToJson;
  Map<String, dynamic> toJson() => _$OthersInstallToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode => runtimeType.hashCode;
}

@JsonSerializable(explicitToJson: true)
class NotificationPolicyJob {
  NotificationPolicyJob({
    this.jobType,
    this.payLoad,
    this.platform,
    this.jobName,
    this.folderId,
  });

  factory NotificationPolicyJob.fromJson(Map<String, dynamic> json) =>
      _$NotificationPolicyJobFromJson(json);

  @JsonKey(name: 'JobType')
  final String? jobType;
  @JsonKey(name: 'PayLoad')
  final NotificationPolicyPayLoad? payLoad;
  @JsonKey(name: 'Platform')
  final String? platform;
  @JsonKey(name: 'JobName')
  final String? jobName;
  @JsonKey(name: 'FolderId')
  final String? folderId;
  static const fromJsonFactory = _$NotificationPolicyJobFromJson;
  static const toJsonFactory = _$NotificationPolicyJobToJson;
  Map<String, dynamic> toJson() => _$NotificationPolicyJobToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NotificationPolicyJob &&
            (identical(other.jobType, jobType) ||
                const DeepCollectionEquality()
                    .equals(other.jobType, jobType)) &&
            (identical(other.payLoad, payLoad) ||
                const DeepCollectionEquality()
                    .equals(other.payLoad, payLoad)) &&
            (identical(other.platform, platform) ||
                const DeepCollectionEquality()
                    .equals(other.platform, platform)) &&
            (identical(other.jobName, jobName) ||
                const DeepCollectionEquality()
                    .equals(other.jobName, jobName)) &&
            (identical(other.folderId, folderId) ||
                const DeepCollectionEquality()
                    .equals(other.folderId, folderId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobType) ^
      const DeepCollectionEquality().hash(payLoad) ^
      const DeepCollectionEquality().hash(platform) ^
      const DeepCollectionEquality().hash(jobName) ^
      const DeepCollectionEquality().hash(folderId) ^
      runtimeType.hashCode;
}

extension $NotificationPolicyJobExtension on NotificationPolicyJob {
  NotificationPolicyJob copyWith(
      {String? jobType,
      NotificationPolicyPayLoad? payLoad,
      String? platform,
      String? jobName,
      String? folderId}) {
    return NotificationPolicyJob(
        jobType: jobType ?? this.jobType,
        payLoad: payLoad ?? this.payLoad,
        platform: platform ?? this.platform,
        jobName: jobName ?? this.jobName,
        folderId: folderId ?? this.folderId);
  }
}

typedef NotificationPolicyPayLoad = List<NotificationPolicyPayLoad$Item>;

@JsonSerializable(explicitToJson: true)
class NotificationPolicyPayLoad$Item {
  NotificationPolicyPayLoad$Item({
    this.policySettings,
  });

  factory NotificationPolicyPayLoad$Item.fromJson(Map<String, dynamic> json) =>
      _$NotificationPolicyPayLoad$ItemFromJson(json);

  @JsonKey(name: 'PolicySettings')
  final NotificationPolicyPayLoad$Item$PolicySettings? policySettings;
  static const fromJsonFactory = _$NotificationPolicyPayLoad$ItemFromJson;
  static const toJsonFactory = _$NotificationPolicyPayLoad$ItemToJson;
  Map<String, dynamic> toJson() => _$NotificationPolicyPayLoad$ItemToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NotificationPolicyPayLoad$Item &&
            (identical(other.policySettings, policySettings) ||
                const DeepCollectionEquality()
                    .equals(other.policySettings, policySettings)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(policySettings) ^
      runtimeType.hashCode;
}

extension $NotificationPolicyPayLoad$ItemExtension
    on NotificationPolicyPayLoad$Item {
  NotificationPolicyPayLoad$Item copyWith(
      {NotificationPolicyPayLoad$Item$PolicySettings? policySettings}) {
    return NotificationPolicyPayLoad$Item(
        policySettings: policySettings ?? this.policySettings);
  }
}

@JsonSerializable(explicitToJson: true)
class GeoFencingJob {
  GeoFencingJob({
    this.jobType,
    this.payLoad,
    this.platform,
    this.jobName,
    this.folderId,
  });

  factory GeoFencingJob.fromJson(Map<String, dynamic> json) =>
      _$GeoFencingJobFromJson(json);

  @JsonKey(name: 'JobType')
  final String? jobType;
  @JsonKey(name: 'PayLoad')
  final GeoFencingPayLoad? payLoad;
  @JsonKey(name: 'Platform')
  final String? platform;
  @JsonKey(name: 'JobName')
  final String? jobName;
  @JsonKey(name: 'FolderId')
  final String? folderId;
  static const fromJsonFactory = _$GeoFencingJobFromJson;
  static const toJsonFactory = _$GeoFencingJobToJson;
  Map<String, dynamic> toJson() => _$GeoFencingJobToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GeoFencingJob &&
            (identical(other.jobType, jobType) ||
                const DeepCollectionEquality()
                    .equals(other.jobType, jobType)) &&
            (identical(other.payLoad, payLoad) ||
                const DeepCollectionEquality()
                    .equals(other.payLoad, payLoad)) &&
            (identical(other.platform, platform) ||
                const DeepCollectionEquality()
                    .equals(other.platform, platform)) &&
            (identical(other.jobName, jobName) ||
                const DeepCollectionEquality()
                    .equals(other.jobName, jobName)) &&
            (identical(other.folderId, folderId) ||
                const DeepCollectionEquality()
                    .equals(other.folderId, folderId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobType) ^
      const DeepCollectionEquality().hash(payLoad) ^
      const DeepCollectionEquality().hash(platform) ^
      const DeepCollectionEquality().hash(jobName) ^
      const DeepCollectionEquality().hash(folderId) ^
      runtimeType.hashCode;
}

extension $GeoFencingJobExtension on GeoFencingJob {
  GeoFencingJob copyWith(
      {String? jobType,
      GeoFencingPayLoad? payLoad,
      String? platform,
      String? jobName,
      String? folderId}) {
    return GeoFencingJob(
        jobType: jobType ?? this.jobType,
        payLoad: payLoad ?? this.payLoad,
        platform: platform ?? this.platform,
        jobName: jobName ?? this.jobName,
        folderId: folderId ?? this.folderId);
  }
}

typedef GeoFencingPayLoad = List<GeoFencingPayLoad$Item>;

@JsonSerializable(explicitToJson: true)
class GeoFencingPayLoad$Item {
  GeoFencingPayLoad$Item({
    this.enableFence,
    this.fence,
    this.jobOut,
    this.jobIn,
    this.fenceJobInDeployDelay,
    this.fenceJobOutDeployDelay,
    this.fenceJobInDeviceAlert,
    this.fenceJobInMDMAlert,
    this.fenceJobInEmailAlert,
    this.fenceJobInEmailId,
    this.fenceJobOutDeviceAlert,
    this.fenceJobOutMDMAlert,
    this.fenceJobOutEmailAlert,
    this.fenceJobOutEmailId,
  });

  factory GeoFencingPayLoad$Item.fromJson(Map<String, dynamic> json) =>
      _$GeoFencingPayLoad$ItemFromJson(json);

  @JsonKey(name: 'EnableFence')
  final bool? enableFence;
  @JsonKey(name: 'Fence', defaultValue: <Object>[])
  final List<Object>? fence;
  @JsonKey(name: 'JobOut', defaultValue: <Object>[])
  final List<Object>? jobOut;
  @JsonKey(name: 'JobIn', defaultValue: <Object>[])
  final List<Object>? jobIn;
  @JsonKey(name: 'FenceJobInDeployDelay')
  final int? fenceJobInDeployDelay;
  @JsonKey(name: 'FenceJobOutDeployDelay')
  final int? fenceJobOutDeployDelay;
  @JsonKey(name: 'FenceJobInDeviceAlert')
  final bool? fenceJobInDeviceAlert;
  @JsonKey(name: 'FenceJobInMDMAlert')
  final bool? fenceJobInMDMAlert;
  @JsonKey(name: 'FenceJobInEmailAlert')
  final bool? fenceJobInEmailAlert;
  @JsonKey(name: 'FenceJobInEmailId')
  final String? fenceJobInEmailId;
  @JsonKey(name: 'FenceJobOutDeviceAlert')
  final bool? fenceJobOutDeviceAlert;
  @JsonKey(name: 'FenceJobOutMDMAlert')
  final bool? fenceJobOutMDMAlert;
  @JsonKey(name: 'FenceJobOutEmailAlert')
  final bool? fenceJobOutEmailAlert;
  @JsonKey(name: 'FenceJobOutEmailId')
  final String? fenceJobOutEmailId;
  static const fromJsonFactory = _$GeoFencingPayLoad$ItemFromJson;
  static const toJsonFactory = _$GeoFencingPayLoad$ItemToJson;
  Map<String, dynamic> toJson() => _$GeoFencingPayLoad$ItemToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GeoFencingPayLoad$Item &&
            (identical(other.enableFence, enableFence) ||
                const DeepCollectionEquality()
                    .equals(other.enableFence, enableFence)) &&
            (identical(other.fence, fence) ||
                const DeepCollectionEquality().equals(other.fence, fence)) &&
            (identical(other.jobOut, jobOut) ||
                const DeepCollectionEquality().equals(other.jobOut, jobOut)) &&
            (identical(other.jobIn, jobIn) ||
                const DeepCollectionEquality().equals(other.jobIn, jobIn)) &&
            (identical(other.fenceJobInDeployDelay, fenceJobInDeployDelay) ||
                const DeepCollectionEquality().equals(
                    other.fenceJobInDeployDelay, fenceJobInDeployDelay)) &&
            (identical(other.fenceJobOutDeployDelay, fenceJobOutDeployDelay) ||
                const DeepCollectionEquality().equals(
                    other.fenceJobOutDeployDelay, fenceJobOutDeployDelay)) &&
            (identical(other.fenceJobInDeviceAlert, fenceJobInDeviceAlert) ||
                const DeepCollectionEquality().equals(
                    other.fenceJobInDeviceAlert, fenceJobInDeviceAlert)) &&
            (identical(other.fenceJobInMDMAlert, fenceJobInMDMAlert) ||
                const DeepCollectionEquality()
                    .equals(other.fenceJobInMDMAlert, fenceJobInMDMAlert)) &&
            (identical(other.fenceJobInEmailAlert, fenceJobInEmailAlert) ||
                const DeepCollectionEquality().equals(
                    other.fenceJobInEmailAlert, fenceJobInEmailAlert)) &&
            (identical(other.fenceJobInEmailId, fenceJobInEmailId) ||
                const DeepCollectionEquality()
                    .equals(other.fenceJobInEmailId, fenceJobInEmailId)) &&
            (identical(other.fenceJobOutDeviceAlert, fenceJobOutDeviceAlert) ||
                const DeepCollectionEquality().equals(
                    other.fenceJobOutDeviceAlert, fenceJobOutDeviceAlert)) &&
            (identical(other.fenceJobOutMDMAlert, fenceJobOutMDMAlert) ||
                const DeepCollectionEquality()
                    .equals(other.fenceJobOutMDMAlert, fenceJobOutMDMAlert)) &&
            (identical(other.fenceJobOutEmailAlert, fenceJobOutEmailAlert) ||
                const DeepCollectionEquality().equals(
                    other.fenceJobOutEmailAlert, fenceJobOutEmailAlert)) &&
            (identical(other.fenceJobOutEmailId, fenceJobOutEmailId) ||
                const DeepCollectionEquality()
                    .equals(other.fenceJobOutEmailId, fenceJobOutEmailId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(enableFence) ^
      const DeepCollectionEquality().hash(fence) ^
      const DeepCollectionEquality().hash(jobOut) ^
      const DeepCollectionEquality().hash(jobIn) ^
      const DeepCollectionEquality().hash(fenceJobInDeployDelay) ^
      const DeepCollectionEquality().hash(fenceJobOutDeployDelay) ^
      const DeepCollectionEquality().hash(fenceJobInDeviceAlert) ^
      const DeepCollectionEquality().hash(fenceJobInMDMAlert) ^
      const DeepCollectionEquality().hash(fenceJobInEmailAlert) ^
      const DeepCollectionEquality().hash(fenceJobInEmailId) ^
      const DeepCollectionEquality().hash(fenceJobOutDeviceAlert) ^
      const DeepCollectionEquality().hash(fenceJobOutMDMAlert) ^
      const DeepCollectionEquality().hash(fenceJobOutEmailAlert) ^
      const DeepCollectionEquality().hash(fenceJobOutEmailId) ^
      runtimeType.hashCode;
}

extension $GeoFencingPayLoad$ItemExtension on GeoFencingPayLoad$Item {
  GeoFencingPayLoad$Item copyWith(
      {bool? enableFence,
      List<Object>? fence,
      List<Object>? jobOut,
      List<Object>? jobIn,
      int? fenceJobInDeployDelay,
      int? fenceJobOutDeployDelay,
      bool? fenceJobInDeviceAlert,
      bool? fenceJobInMDMAlert,
      bool? fenceJobInEmailAlert,
      String? fenceJobInEmailId,
      bool? fenceJobOutDeviceAlert,
      bool? fenceJobOutMDMAlert,
      bool? fenceJobOutEmailAlert,
      String? fenceJobOutEmailId}) {
    return GeoFencingPayLoad$Item(
        enableFence: enableFence ?? this.enableFence,
        fence: fence ?? this.fence,
        jobOut: jobOut ?? this.jobOut,
        jobIn: jobIn ?? this.jobIn,
        fenceJobInDeployDelay:
            fenceJobInDeployDelay ?? this.fenceJobInDeployDelay,
        fenceJobOutDeployDelay:
            fenceJobOutDeployDelay ?? this.fenceJobOutDeployDelay,
        fenceJobInDeviceAlert:
            fenceJobInDeviceAlert ?? this.fenceJobInDeviceAlert,
        fenceJobInMDMAlert: fenceJobInMDMAlert ?? this.fenceJobInMDMAlert,
        fenceJobInEmailAlert: fenceJobInEmailAlert ?? this.fenceJobInEmailAlert,
        fenceJobInEmailId: fenceJobInEmailId ?? this.fenceJobInEmailId,
        fenceJobOutDeviceAlert:
            fenceJobOutDeviceAlert ?? this.fenceJobOutDeviceAlert,
        fenceJobOutMDMAlert: fenceJobOutMDMAlert ?? this.fenceJobOutMDMAlert,
        fenceJobOutEmailAlert:
            fenceJobOutEmailAlert ?? this.fenceJobOutEmailAlert,
        fenceJobOutEmailId: fenceJobOutEmailId ?? this.fenceJobOutEmailId);
  }
}

@JsonSerializable(explicitToJson: true)
class NixAgentSettingJob {
  NixAgentSettingJob({
    this.jobType,
    this.payLoad,
    this.platform,
    this.jobName,
    this.folderId,
  });

  factory NixAgentSettingJob.fromJson(Map<String, dynamic> json) =>
      _$NixAgentSettingJobFromJson(json);

  @JsonKey(name: 'JobType')
  final String? jobType;
  @JsonKey(name: 'PayLoad')
  final NixAgentSettingPayLoad? payLoad;
  @JsonKey(name: 'Platform')
  final String? platform;
  @JsonKey(name: 'JobName')
  final String? jobName;
  @JsonKey(name: 'FolderId')
  final String? folderId;
  static const fromJsonFactory = _$NixAgentSettingJobFromJson;
  static const toJsonFactory = _$NixAgentSettingJobToJson;
  Map<String, dynamic> toJson() => _$NixAgentSettingJobToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NixAgentSettingJob &&
            (identical(other.jobType, jobType) ||
                const DeepCollectionEquality()
                    .equals(other.jobType, jobType)) &&
            (identical(other.payLoad, payLoad) ||
                const DeepCollectionEquality()
                    .equals(other.payLoad, payLoad)) &&
            (identical(other.platform, platform) ||
                const DeepCollectionEquality()
                    .equals(other.platform, platform)) &&
            (identical(other.jobName, jobName) ||
                const DeepCollectionEquality()
                    .equals(other.jobName, jobName)) &&
            (identical(other.folderId, folderId) ||
                const DeepCollectionEquality()
                    .equals(other.folderId, folderId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobType) ^
      const DeepCollectionEquality().hash(payLoad) ^
      const DeepCollectionEquality().hash(platform) ^
      const DeepCollectionEquality().hash(jobName) ^
      const DeepCollectionEquality().hash(folderId) ^
      runtimeType.hashCode;
}

extension $NixAgentSettingJobExtension on NixAgentSettingJob {
  NixAgentSettingJob copyWith(
      {String? jobType,
      NixAgentSettingPayLoad? payLoad,
      String? platform,
      String? jobName,
      String? folderId}) {
    return NixAgentSettingJob(
        jobType: jobType ?? this.jobType,
        payLoad: payLoad ?? this.payLoad,
        platform: platform ?? this.platform,
        jobName: jobName ?? this.jobName,
        folderId: folderId ?? this.folderId);
  }
}

typedef NixAgentSettingPayLoad = List<NixAgentSettingPayLoad$Item>;

@JsonSerializable(explicitToJson: true)
class NixAgentSettingPayLoad$Item {
  NixAgentSettingPayLoad$Item({
    this.timeSynchronizationSettings,
    this.periodicUpdateSettings,
    this.scheduledRebootSettings,
    this.scheduledShutDownSettings,
    this.connectionType,
    this.nixPassword,
    this.password,
  });

  factory NixAgentSettingPayLoad$Item.fromJson(Map<String, dynamic> json) =>
      _$NixAgentSettingPayLoad$ItemFromJson(json);

  @JsonKey(name: 'TimeSynchronizationSettings')
  final NixAgentSettingPayLoad$Item$TimeSynchronizationSettings?
      timeSynchronizationSettings;
  @JsonKey(name: 'PeriodicUpdateSettings')
  final NixAgentSettingPayLoad$Item$PeriodicUpdateSettings?
      periodicUpdateSettings;
  @JsonKey(name: 'ScheduledRebootSettings')
  final NixAgentSettingPayLoad$Item$ScheduledRebootSettings?
      scheduledRebootSettings;
  @JsonKey(name: 'ScheduledShutDownSettings')
  final NixAgentSettingPayLoad$Item$ScheduledShutDownSettings?
      scheduledShutDownSettings;
  @JsonKey(name: 'ConnectionType')
  final String? connectionType;
  @JsonKey(name: 'NixPassword')
  final bool? nixPassword;
  @JsonKey(name: 'Password')
  final String? password;
  static const fromJsonFactory = _$NixAgentSettingPayLoad$ItemFromJson;
  static const toJsonFactory = _$NixAgentSettingPayLoad$ItemToJson;
  Map<String, dynamic> toJson() => _$NixAgentSettingPayLoad$ItemToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NixAgentSettingPayLoad$Item &&
            (identical(other.timeSynchronizationSettings,
                    timeSynchronizationSettings) ||
                const DeepCollectionEquality().equals(
                    other.timeSynchronizationSettings,
                    timeSynchronizationSettings)) &&
            (identical(other.periodicUpdateSettings, periodicUpdateSettings) ||
                const DeepCollectionEquality().equals(
                    other.periodicUpdateSettings, periodicUpdateSettings)) &&
            (identical(
                    other.scheduledRebootSettings, scheduledRebootSettings) ||
                const DeepCollectionEquality().equals(
                    other.scheduledRebootSettings, scheduledRebootSettings)) &&
            (identical(other.scheduledShutDownSettings,
                    scheduledShutDownSettings) ||
                const DeepCollectionEquality().equals(
                    other.scheduledShutDownSettings,
                    scheduledShutDownSettings)) &&
            (identical(other.connectionType, connectionType) ||
                const DeepCollectionEquality()
                    .equals(other.connectionType, connectionType)) &&
            (identical(other.nixPassword, nixPassword) ||
                const DeepCollectionEquality()
                    .equals(other.nixPassword, nixPassword)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(timeSynchronizationSettings) ^
      const DeepCollectionEquality().hash(periodicUpdateSettings) ^
      const DeepCollectionEquality().hash(scheduledRebootSettings) ^
      const DeepCollectionEquality().hash(scheduledShutDownSettings) ^
      const DeepCollectionEquality().hash(connectionType) ^
      const DeepCollectionEquality().hash(nixPassword) ^
      const DeepCollectionEquality().hash(password) ^
      runtimeType.hashCode;
}

extension $NixAgentSettingPayLoad$ItemExtension on NixAgentSettingPayLoad$Item {
  NixAgentSettingPayLoad$Item copyWith(
      {NixAgentSettingPayLoad$Item$TimeSynchronizationSettings?
          timeSynchronizationSettings,
      NixAgentSettingPayLoad$Item$PeriodicUpdateSettings?
          periodicUpdateSettings,
      NixAgentSettingPayLoad$Item$ScheduledRebootSettings?
          scheduledRebootSettings,
      NixAgentSettingPayLoad$Item$ScheduledShutDownSettings?
          scheduledShutDownSettings,
      String? connectionType,
      bool? nixPassword,
      String? password}) {
    return NixAgentSettingPayLoad$Item(
        timeSynchronizationSettings:
            timeSynchronizationSettings ?? this.timeSynchronizationSettings,
        periodicUpdateSettings:
            periodicUpdateSettings ?? this.periodicUpdateSettings,
        scheduledRebootSettings:
            scheduledRebootSettings ?? this.scheduledRebootSettings,
        scheduledShutDownSettings:
            scheduledShutDownSettings ?? this.scheduledShutDownSettings,
        connectionType: connectionType ?? this.connectionType,
        nixPassword: nixPassword ?? this.nixPassword,
        password: password ?? this.password);
  }
}

@JsonSerializable(explicitToJson: true)
class TimeFencingJob {
  TimeFencingJob({
    this.jobType,
    this.payLoad,
    this.platform,
    this.jobName,
    this.folderId,
  });

  factory TimeFencingJob.fromJson(Map<String, dynamic> json) =>
      _$TimeFencingJobFromJson(json);

  @JsonKey(name: 'JobType')
  final String? jobType;
  @JsonKey(name: 'PayLoad')
  final TimeFencingPayLoad? payLoad;
  @JsonKey(name: 'Platform')
  final String? platform;
  @JsonKey(name: 'JobName')
  final String? jobName;
  @JsonKey(name: 'FolderId')
  final String? folderId;
  static const fromJsonFactory = _$TimeFencingJobFromJson;
  static const toJsonFactory = _$TimeFencingJobToJson;
  Map<String, dynamic> toJson() => _$TimeFencingJobToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TimeFencingJob &&
            (identical(other.jobType, jobType) ||
                const DeepCollectionEquality()
                    .equals(other.jobType, jobType)) &&
            (identical(other.payLoad, payLoad) ||
                const DeepCollectionEquality()
                    .equals(other.payLoad, payLoad)) &&
            (identical(other.platform, platform) ||
                const DeepCollectionEquality()
                    .equals(other.platform, platform)) &&
            (identical(other.jobName, jobName) ||
                const DeepCollectionEquality()
                    .equals(other.jobName, jobName)) &&
            (identical(other.folderId, folderId) ||
                const DeepCollectionEquality()
                    .equals(other.folderId, folderId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobType) ^
      const DeepCollectionEquality().hash(payLoad) ^
      const DeepCollectionEquality().hash(platform) ^
      const DeepCollectionEquality().hash(jobName) ^
      const DeepCollectionEquality().hash(folderId) ^
      runtimeType.hashCode;
}

extension $TimeFencingJobExtension on TimeFencingJob {
  TimeFencingJob copyWith(
      {String? jobType,
      TimeFencingPayLoad? payLoad,
      String? platform,
      String? jobName,
      String? folderId}) {
    return TimeFencingJob(
        jobType: jobType ?? this.jobType,
        payLoad: payLoad ?? this.payLoad,
        platform: platform ?? this.platform,
        jobName: jobName ?? this.jobName,
        folderId: folderId ?? this.folderId);
  }
}

typedef TimeFencingPayLoad = List<TimeFencingPayLoad$Item>;

@JsonSerializable(explicitToJson: true)
class TimeFencingPayLoad$Item {
  TimeFencingPayLoad$Item({
    this.enableFence,
    this.jobIn,
    this.jobOut,
    this.selectFence,
    this.fenceJobInDeviceAlert,
    this.fenceJobInMDMAlert,
    this.fenceJobInEmailAlert,
    this.fenceJobInEmailId,
    this.fenceJobOutDeviceAlert,
    this.fenceJobOutMDMAlert,
    this.fenceJobOutEmailAlert,
    this.fenceJobOutEmailId,
  });

  factory TimeFencingPayLoad$Item.fromJson(Map<String, dynamic> json) =>
      _$TimeFencingPayLoad$ItemFromJson(json);

  @JsonKey(name: 'EnableFence')
  final bool? enableFence;
  @JsonKey(name: 'JobIn', defaultValue: <Object>[])
  final List<Object>? jobIn;
  @JsonKey(name: 'JobOut', defaultValue: <Object>[])
  final List<Object>? jobOut;
  @JsonKey(name: 'SelectFence')
  final TimeFencingPayLoad$Item$SelectFence? selectFence;
  @JsonKey(name: 'FenceJobInDeviceAlert')
  final bool? fenceJobInDeviceAlert;
  @JsonKey(name: 'FenceJobInMDMAlert')
  final bool? fenceJobInMDMAlert;
  @JsonKey(name: 'FenceJobInEmailAlert')
  final bool? fenceJobInEmailAlert;
  @JsonKey(name: 'FenceJobInEmailId')
  final String? fenceJobInEmailId;
  @JsonKey(name: 'FenceJobOutDeviceAlert')
  final bool? fenceJobOutDeviceAlert;
  @JsonKey(name: 'FenceJobOutMDMAlert')
  final bool? fenceJobOutMDMAlert;
  @JsonKey(name: 'FenceJobOutEmailAlert')
  final bool? fenceJobOutEmailAlert;
  @JsonKey(name: 'FenceJobOutEmailId')
  final String? fenceJobOutEmailId;
  static const fromJsonFactory = _$TimeFencingPayLoad$ItemFromJson;
  static const toJsonFactory = _$TimeFencingPayLoad$ItemToJson;
  Map<String, dynamic> toJson() => _$TimeFencingPayLoad$ItemToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TimeFencingPayLoad$Item &&
            (identical(other.enableFence, enableFence) ||
                const DeepCollectionEquality()
                    .equals(other.enableFence, enableFence)) &&
            (identical(other.jobIn, jobIn) ||
                const DeepCollectionEquality().equals(other.jobIn, jobIn)) &&
            (identical(other.jobOut, jobOut) ||
                const DeepCollectionEquality().equals(other.jobOut, jobOut)) &&
            (identical(other.selectFence, selectFence) ||
                const DeepCollectionEquality()
                    .equals(other.selectFence, selectFence)) &&
            (identical(other.fenceJobInDeviceAlert, fenceJobInDeviceAlert) ||
                const DeepCollectionEquality().equals(
                    other.fenceJobInDeviceAlert, fenceJobInDeviceAlert)) &&
            (identical(other.fenceJobInMDMAlert, fenceJobInMDMAlert) ||
                const DeepCollectionEquality()
                    .equals(other.fenceJobInMDMAlert, fenceJobInMDMAlert)) &&
            (identical(other.fenceJobInEmailAlert, fenceJobInEmailAlert) ||
                const DeepCollectionEquality().equals(
                    other.fenceJobInEmailAlert, fenceJobInEmailAlert)) &&
            (identical(other.fenceJobInEmailId, fenceJobInEmailId) ||
                const DeepCollectionEquality()
                    .equals(other.fenceJobInEmailId, fenceJobInEmailId)) &&
            (identical(other.fenceJobOutDeviceAlert, fenceJobOutDeviceAlert) ||
                const DeepCollectionEquality().equals(
                    other.fenceJobOutDeviceAlert, fenceJobOutDeviceAlert)) &&
            (identical(other.fenceJobOutMDMAlert, fenceJobOutMDMAlert) ||
                const DeepCollectionEquality()
                    .equals(other.fenceJobOutMDMAlert, fenceJobOutMDMAlert)) &&
            (identical(other.fenceJobOutEmailAlert, fenceJobOutEmailAlert) ||
                const DeepCollectionEquality().equals(
                    other.fenceJobOutEmailAlert, fenceJobOutEmailAlert)) &&
            (identical(other.fenceJobOutEmailId, fenceJobOutEmailId) ||
                const DeepCollectionEquality()
                    .equals(other.fenceJobOutEmailId, fenceJobOutEmailId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(enableFence) ^
      const DeepCollectionEquality().hash(jobIn) ^
      const DeepCollectionEquality().hash(jobOut) ^
      const DeepCollectionEquality().hash(selectFence) ^
      const DeepCollectionEquality().hash(fenceJobInDeviceAlert) ^
      const DeepCollectionEquality().hash(fenceJobInMDMAlert) ^
      const DeepCollectionEquality().hash(fenceJobInEmailAlert) ^
      const DeepCollectionEquality().hash(fenceJobInEmailId) ^
      const DeepCollectionEquality().hash(fenceJobOutDeviceAlert) ^
      const DeepCollectionEquality().hash(fenceJobOutMDMAlert) ^
      const DeepCollectionEquality().hash(fenceJobOutEmailAlert) ^
      const DeepCollectionEquality().hash(fenceJobOutEmailId) ^
      runtimeType.hashCode;
}

extension $TimeFencingPayLoad$ItemExtension on TimeFencingPayLoad$Item {
  TimeFencingPayLoad$Item copyWith(
      {bool? enableFence,
      List<Object>? jobIn,
      List<Object>? jobOut,
      TimeFencingPayLoad$Item$SelectFence? selectFence,
      bool? fenceJobInDeviceAlert,
      bool? fenceJobInMDMAlert,
      bool? fenceJobInEmailAlert,
      String? fenceJobInEmailId,
      bool? fenceJobOutDeviceAlert,
      bool? fenceJobOutMDMAlert,
      bool? fenceJobOutEmailAlert,
      String? fenceJobOutEmailId}) {
    return TimeFencingPayLoad$Item(
        enableFence: enableFence ?? this.enableFence,
        jobIn: jobIn ?? this.jobIn,
        jobOut: jobOut ?? this.jobOut,
        selectFence: selectFence ?? this.selectFence,
        fenceJobInDeviceAlert:
            fenceJobInDeviceAlert ?? this.fenceJobInDeviceAlert,
        fenceJobInMDMAlert: fenceJobInMDMAlert ?? this.fenceJobInMDMAlert,
        fenceJobInEmailAlert: fenceJobInEmailAlert ?? this.fenceJobInEmailAlert,
        fenceJobInEmailId: fenceJobInEmailId ?? this.fenceJobInEmailId,
        fenceJobOutDeviceAlert:
            fenceJobOutDeviceAlert ?? this.fenceJobOutDeviceAlert,
        fenceJobOutMDMAlert: fenceJobOutMDMAlert ?? this.fenceJobOutMDMAlert,
        fenceJobOutEmailAlert:
            fenceJobOutEmailAlert ?? this.fenceJobOutEmailAlert,
        fenceJobOutEmailId: fenceJobOutEmailId ?? this.fenceJobOutEmailId);
  }
}

@JsonSerializable(explicitToJson: true)
class NetworkFencingJob {
  NetworkFencingJob({
    this.jobType,
    this.payLoad,
    this.platform,
    this.jobName,
    this.folderId,
  });

  factory NetworkFencingJob.fromJson(Map<String, dynamic> json) =>
      _$NetworkFencingJobFromJson(json);

  @JsonKey(name: 'JobType')
  final String? jobType;
  @JsonKey(name: 'PayLoad')
  final NetworkFencingPayLoad? payLoad;
  @JsonKey(name: 'Platform')
  final String? platform;
  @JsonKey(name: 'JobName')
  final String? jobName;
  @JsonKey(name: 'FolderId')
  final String? folderId;
  static const fromJsonFactory = _$NetworkFencingJobFromJson;
  static const toJsonFactory = _$NetworkFencingJobToJson;
  Map<String, dynamic> toJson() => _$NetworkFencingJobToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NetworkFencingJob &&
            (identical(other.jobType, jobType) ||
                const DeepCollectionEquality()
                    .equals(other.jobType, jobType)) &&
            (identical(other.payLoad, payLoad) ||
                const DeepCollectionEquality()
                    .equals(other.payLoad, payLoad)) &&
            (identical(other.platform, platform) ||
                const DeepCollectionEquality()
                    .equals(other.platform, platform)) &&
            (identical(other.jobName, jobName) ||
                const DeepCollectionEquality()
                    .equals(other.jobName, jobName)) &&
            (identical(other.folderId, folderId) ||
                const DeepCollectionEquality()
                    .equals(other.folderId, folderId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobType) ^
      const DeepCollectionEquality().hash(payLoad) ^
      const DeepCollectionEquality().hash(platform) ^
      const DeepCollectionEquality().hash(jobName) ^
      const DeepCollectionEquality().hash(folderId) ^
      runtimeType.hashCode;
}

extension $NetworkFencingJobExtension on NetworkFencingJob {
  NetworkFencingJob copyWith(
      {String? jobType,
      NetworkFencingPayLoad? payLoad,
      String? platform,
      String? jobName,
      String? folderId}) {
    return NetworkFencingJob(
        jobType: jobType ?? this.jobType,
        payLoad: payLoad ?? this.payLoad,
        platform: platform ?? this.platform,
        jobName: jobName ?? this.jobName,
        folderId: folderId ?? this.folderId);
  }
}

typedef NetworkFencingPayLoad = List<NetworkFencingPayLoad$Item>;

@JsonSerializable(explicitToJson: true)
class NetworkFencingPayLoad$Item {
  NetworkFencingPayLoad$Item({
    this.enableFence,
    this.jobIn,
    this.jobOut,
    this.fenceJobInDeployDelay,
    this.fenceJobOutDeployDelay,
    this.selectFence,
    this.fenceJobInDeviceAlert,
    this.fenceJobInMDMAlert,
    this.fenceJobInEmailAlert,
    this.fenceJobInEmailId,
    this.fenceJobOutDeviceAlert,
    this.fenceJobOutMDMAlert,
    this.fenceJobOutEmailAlert,
    this.fenceJobOutEmailId,
  });

  factory NetworkFencingPayLoad$Item.fromJson(Map<String, dynamic> json) =>
      _$NetworkFencingPayLoad$ItemFromJson(json);

  @JsonKey(name: 'EnableFence')
  final String? enableFence;
  @JsonKey(name: 'JobIn')
  final NetworkFencingPayLoad$Item$JobIn? jobIn;
  @JsonKey(name: 'JobOut')
  final NetworkFencingPayLoad$Item$JobOut? jobOut;
  @JsonKey(name: 'FenceJobInDeployDelay')
  final String? fenceJobInDeployDelay;
  @JsonKey(name: 'FenceJobOutDeployDelay')
  final String? fenceJobOutDeployDelay;
  @JsonKey(name: 'SelectFence')
  final NetworkFencingPayLoad$Item$SelectFence? selectFence;
  @JsonKey(name: 'FenceJobInDeviceAlert')
  final bool? fenceJobInDeviceAlert;
  @JsonKey(name: 'FenceJobInMDMAlert')
  final bool? fenceJobInMDMAlert;
  @JsonKey(name: 'FenceJobInEmailAlert')
  final bool? fenceJobInEmailAlert;
  @JsonKey(name: 'FenceJobInEmailId')
  final String? fenceJobInEmailId;
  @JsonKey(name: 'FenceJobOutDeviceAlert')
  final bool? fenceJobOutDeviceAlert;
  @JsonKey(name: 'FenceJobOutMDMAlert')
  final bool? fenceJobOutMDMAlert;
  @JsonKey(name: 'FenceJobOutEmailAlert')
  final bool? fenceJobOutEmailAlert;
  @JsonKey(name: 'FenceJobOutEmailId')
  final String? fenceJobOutEmailId;
  static const fromJsonFactory = _$NetworkFencingPayLoad$ItemFromJson;
  static const toJsonFactory = _$NetworkFencingPayLoad$ItemToJson;
  Map<String, dynamic> toJson() => _$NetworkFencingPayLoad$ItemToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NetworkFencingPayLoad$Item &&
            (identical(other.enableFence, enableFence) ||
                const DeepCollectionEquality()
                    .equals(other.enableFence, enableFence)) &&
            (identical(other.jobIn, jobIn) ||
                const DeepCollectionEquality().equals(other.jobIn, jobIn)) &&
            (identical(other.jobOut, jobOut) ||
                const DeepCollectionEquality().equals(other.jobOut, jobOut)) &&
            (identical(other.fenceJobInDeployDelay, fenceJobInDeployDelay) ||
                const DeepCollectionEquality().equals(
                    other.fenceJobInDeployDelay, fenceJobInDeployDelay)) &&
            (identical(other.fenceJobOutDeployDelay, fenceJobOutDeployDelay) ||
                const DeepCollectionEquality().equals(
                    other.fenceJobOutDeployDelay, fenceJobOutDeployDelay)) &&
            (identical(other.selectFence, selectFence) ||
                const DeepCollectionEquality()
                    .equals(other.selectFence, selectFence)) &&
            (identical(other.fenceJobInDeviceAlert, fenceJobInDeviceAlert) ||
                const DeepCollectionEquality().equals(
                    other.fenceJobInDeviceAlert, fenceJobInDeviceAlert)) &&
            (identical(other.fenceJobInMDMAlert, fenceJobInMDMAlert) ||
                const DeepCollectionEquality()
                    .equals(other.fenceJobInMDMAlert, fenceJobInMDMAlert)) &&
            (identical(other.fenceJobInEmailAlert, fenceJobInEmailAlert) ||
                const DeepCollectionEquality().equals(
                    other.fenceJobInEmailAlert, fenceJobInEmailAlert)) &&
            (identical(other.fenceJobInEmailId, fenceJobInEmailId) ||
                const DeepCollectionEquality()
                    .equals(other.fenceJobInEmailId, fenceJobInEmailId)) &&
            (identical(other.fenceJobOutDeviceAlert, fenceJobOutDeviceAlert) ||
                const DeepCollectionEquality().equals(
                    other.fenceJobOutDeviceAlert, fenceJobOutDeviceAlert)) &&
            (identical(other.fenceJobOutMDMAlert, fenceJobOutMDMAlert) ||
                const DeepCollectionEquality()
                    .equals(other.fenceJobOutMDMAlert, fenceJobOutMDMAlert)) &&
            (identical(other.fenceJobOutEmailAlert, fenceJobOutEmailAlert) ||
                const DeepCollectionEquality().equals(
                    other.fenceJobOutEmailAlert, fenceJobOutEmailAlert)) &&
            (identical(other.fenceJobOutEmailId, fenceJobOutEmailId) ||
                const DeepCollectionEquality()
                    .equals(other.fenceJobOutEmailId, fenceJobOutEmailId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(enableFence) ^
      const DeepCollectionEquality().hash(jobIn) ^
      const DeepCollectionEquality().hash(jobOut) ^
      const DeepCollectionEquality().hash(fenceJobInDeployDelay) ^
      const DeepCollectionEquality().hash(fenceJobOutDeployDelay) ^
      const DeepCollectionEquality().hash(selectFence) ^
      const DeepCollectionEquality().hash(fenceJobInDeviceAlert) ^
      const DeepCollectionEquality().hash(fenceJobInMDMAlert) ^
      const DeepCollectionEquality().hash(fenceJobInEmailAlert) ^
      const DeepCollectionEquality().hash(fenceJobInEmailId) ^
      const DeepCollectionEquality().hash(fenceJobOutDeviceAlert) ^
      const DeepCollectionEquality().hash(fenceJobOutMDMAlert) ^
      const DeepCollectionEquality().hash(fenceJobOutEmailAlert) ^
      const DeepCollectionEquality().hash(fenceJobOutEmailId) ^
      runtimeType.hashCode;
}

extension $NetworkFencingPayLoad$ItemExtension on NetworkFencingPayLoad$Item {
  NetworkFencingPayLoad$Item copyWith(
      {String? enableFence,
      NetworkFencingPayLoad$Item$JobIn? jobIn,
      NetworkFencingPayLoad$Item$JobOut? jobOut,
      String? fenceJobInDeployDelay,
      String? fenceJobOutDeployDelay,
      NetworkFencingPayLoad$Item$SelectFence? selectFence,
      bool? fenceJobInDeviceAlert,
      bool? fenceJobInMDMAlert,
      bool? fenceJobInEmailAlert,
      String? fenceJobInEmailId,
      bool? fenceJobOutDeviceAlert,
      bool? fenceJobOutMDMAlert,
      bool? fenceJobOutEmailAlert,
      String? fenceJobOutEmailId}) {
    return NetworkFencingPayLoad$Item(
        enableFence: enableFence ?? this.enableFence,
        jobIn: jobIn ?? this.jobIn,
        jobOut: jobOut ?? this.jobOut,
        fenceJobInDeployDelay:
            fenceJobInDeployDelay ?? this.fenceJobInDeployDelay,
        fenceJobOutDeployDelay:
            fenceJobOutDeployDelay ?? this.fenceJobOutDeployDelay,
        selectFence: selectFence ?? this.selectFence,
        fenceJobInDeviceAlert:
            fenceJobInDeviceAlert ?? this.fenceJobInDeviceAlert,
        fenceJobInMDMAlert: fenceJobInMDMAlert ?? this.fenceJobInMDMAlert,
        fenceJobInEmailAlert: fenceJobInEmailAlert ?? this.fenceJobInEmailAlert,
        fenceJobInEmailId: fenceJobInEmailId ?? this.fenceJobInEmailId,
        fenceJobOutDeviceAlert:
            fenceJobOutDeviceAlert ?? this.fenceJobOutDeviceAlert,
        fenceJobOutMDMAlert: fenceJobOutMDMAlert ?? this.fenceJobOutMDMAlert,
        fenceJobOutEmailAlert:
            fenceJobOutEmailAlert ?? this.fenceJobOutEmailAlert,
        fenceJobOutEmailId: fenceJobOutEmailId ?? this.fenceJobOutEmailId);
  }
}

@JsonSerializable(explicitToJson: true)
class WiFiConfigJob {
  WiFiConfigJob({
    this.jobType,
    this.payLoad,
    this.platform,
    this.jobName,
    this.folderId,
  });

  factory WiFiConfigJob.fromJson(Map<String, dynamic> json) =>
      _$WiFiConfigJobFromJson(json);

  @JsonKey(name: 'JobType')
  final String? jobType;
  @JsonKey(name: 'PayLoad')
  final WiFiConfigPayLoad? payLoad;
  @JsonKey(name: 'Platform')
  final String? platform;
  @JsonKey(name: 'JobName')
  final String? jobName;
  @JsonKey(name: 'FolderId')
  final String? folderId;
  static const fromJsonFactory = _$WiFiConfigJobFromJson;
  static const toJsonFactory = _$WiFiConfigJobToJson;
  Map<String, dynamic> toJson() => _$WiFiConfigJobToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WiFiConfigJob &&
            (identical(other.jobType, jobType) ||
                const DeepCollectionEquality()
                    .equals(other.jobType, jobType)) &&
            (identical(other.payLoad, payLoad) ||
                const DeepCollectionEquality()
                    .equals(other.payLoad, payLoad)) &&
            (identical(other.platform, platform) ||
                const DeepCollectionEquality()
                    .equals(other.platform, platform)) &&
            (identical(other.jobName, jobName) ||
                const DeepCollectionEquality()
                    .equals(other.jobName, jobName)) &&
            (identical(other.folderId, folderId) ||
                const DeepCollectionEquality()
                    .equals(other.folderId, folderId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobType) ^
      const DeepCollectionEquality().hash(payLoad) ^
      const DeepCollectionEquality().hash(platform) ^
      const DeepCollectionEquality().hash(jobName) ^
      const DeepCollectionEquality().hash(folderId) ^
      runtimeType.hashCode;
}

extension $WiFiConfigJobExtension on WiFiConfigJob {
  WiFiConfigJob copyWith(
      {String? jobType,
      WiFiConfigPayLoad? payLoad,
      String? platform,
      String? jobName,
      String? folderId}) {
    return WiFiConfigJob(
        jobType: jobType ?? this.jobType,
        payLoad: payLoad ?? this.payLoad,
        platform: platform ?? this.platform,
        jobName: jobName ?? this.jobName,
        folderId: folderId ?? this.folderId);
  }
}

typedef WiFiConfigPayLoad = List<WiFiConfigPayLoad$Item>;

@JsonSerializable(explicitToJson: true)
class WiFiConfigPayLoad$Item {
  WiFiConfigPayLoad$Item({
    this.ssid,
    this.securityType,
    this.password,
    this.autoConnect,
    this.portableHotspot,
    this.hiddenNetwork,
  });

  factory WiFiConfigPayLoad$Item.fromJson(Map<String, dynamic> json) =>
      _$WiFiConfigPayLoad$ItemFromJson(json);

  @JsonKey(name: 'SSID')
  final String? ssid;
  @JsonKey(name: 'SecurityType')
  final int? securityType;
  @JsonKey(name: 'Password')
  final String? password;
  @JsonKey(name: 'AutoConnect')
  final bool? autoConnect;
  @JsonKey(name: 'PortableHotspot')
  final bool? portableHotspot;
  @JsonKey(name: 'HiddenNetwork')
  final bool? hiddenNetwork;
  static const fromJsonFactory = _$WiFiConfigPayLoad$ItemFromJson;
  static const toJsonFactory = _$WiFiConfigPayLoad$ItemToJson;
  Map<String, dynamic> toJson() => _$WiFiConfigPayLoad$ItemToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WiFiConfigPayLoad$Item &&
            (identical(other.ssid, ssid) ||
                const DeepCollectionEquality().equals(other.ssid, ssid)) &&
            (identical(other.securityType, securityType) ||
                const DeepCollectionEquality()
                    .equals(other.securityType, securityType)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.autoConnect, autoConnect) ||
                const DeepCollectionEquality()
                    .equals(other.autoConnect, autoConnect)) &&
            (identical(other.portableHotspot, portableHotspot) ||
                const DeepCollectionEquality()
                    .equals(other.portableHotspot, portableHotspot)) &&
            (identical(other.hiddenNetwork, hiddenNetwork) ||
                const DeepCollectionEquality()
                    .equals(other.hiddenNetwork, hiddenNetwork)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ssid) ^
      const DeepCollectionEquality().hash(securityType) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(autoConnect) ^
      const DeepCollectionEquality().hash(portableHotspot) ^
      const DeepCollectionEquality().hash(hiddenNetwork) ^
      runtimeType.hashCode;
}

extension $WiFiConfigPayLoad$ItemExtension on WiFiConfigPayLoad$Item {
  WiFiConfigPayLoad$Item copyWith(
      {String? ssid,
      int? securityType,
      String? password,
      bool? autoConnect,
      bool? portableHotspot,
      bool? hiddenNetwork}) {
    return WiFiConfigPayLoad$Item(
        ssid: ssid ?? this.ssid,
        securityType: securityType ?? this.securityType,
        password: password ?? this.password,
        autoConnect: autoConnect ?? this.autoConnect,
        portableHotspot: portableHotspot ?? this.portableHotspot,
        hiddenNetwork: hiddenNetwork ?? this.hiddenNetwork);
  }
}

@JsonSerializable(explicitToJson: true)
class DeviceMigrationJob {
  DeviceMigrationJob({
    this.jobType,
    this.payLoad,
    this.platform,
    this.jobName,
    this.folderId,
  });

  factory DeviceMigrationJob.fromJson(Map<String, dynamic> json) =>
      _$DeviceMigrationJobFromJson(json);

  @JsonKey(name: 'JobType')
  final String? jobType;
  @JsonKey(name: 'PayLoad')
  final DeviceMigrationPayLoad? payLoad;
  @JsonKey(name: 'Platform')
  final String? platform;
  @JsonKey(name: 'JobName')
  final String? jobName;
  @JsonKey(name: 'FolderId')
  final String? folderId;
  static const fromJsonFactory = _$DeviceMigrationJobFromJson;
  static const toJsonFactory = _$DeviceMigrationJobToJson;
  Map<String, dynamic> toJson() => _$DeviceMigrationJobToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeviceMigrationJob &&
            (identical(other.jobType, jobType) ||
                const DeepCollectionEquality()
                    .equals(other.jobType, jobType)) &&
            (identical(other.payLoad, payLoad) ||
                const DeepCollectionEquality()
                    .equals(other.payLoad, payLoad)) &&
            (identical(other.platform, platform) ||
                const DeepCollectionEquality()
                    .equals(other.platform, platform)) &&
            (identical(other.jobName, jobName) ||
                const DeepCollectionEquality()
                    .equals(other.jobName, jobName)) &&
            (identical(other.folderId, folderId) ||
                const DeepCollectionEquality()
                    .equals(other.folderId, folderId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobType) ^
      const DeepCollectionEquality().hash(payLoad) ^
      const DeepCollectionEquality().hash(platform) ^
      const DeepCollectionEquality().hash(jobName) ^
      const DeepCollectionEquality().hash(folderId) ^
      runtimeType.hashCode;
}

extension $DeviceMigrationJobExtension on DeviceMigrationJob {
  DeviceMigrationJob copyWith(
      {String? jobType,
      DeviceMigrationPayLoad? payLoad,
      String? platform,
      String? jobName,
      String? folderId}) {
    return DeviceMigrationJob(
        jobType: jobType ?? this.jobType,
        payLoad: payLoad ?? this.payLoad,
        platform: platform ?? this.platform,
        jobName: jobName ?? this.jobName,
        folderId: folderId ?? this.folderId);
  }
}

typedef DeviceMigrationPayLoad = List<DeviceMigrationPayLoad$Item>;

@JsonSerializable(explicitToJson: true)
class DeviceMigrationPayLoad$Item {
  DeviceMigrationPayLoad$Item({
    this.selectedGrpId,
  });

  factory DeviceMigrationPayLoad$Item.fromJson(Map<String, dynamic> json) =>
      _$DeviceMigrationPayLoad$ItemFromJson(json);

  @JsonKey(name: 'SelectedGrpId')
  final String? selectedGrpId;
  static const fromJsonFactory = _$DeviceMigrationPayLoad$ItemFromJson;
  static const toJsonFactory = _$DeviceMigrationPayLoad$ItemToJson;
  Map<String, dynamic> toJson() => _$DeviceMigrationPayLoad$ItemToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeviceMigrationPayLoad$Item &&
            (identical(other.selectedGrpId, selectedGrpId) ||
                const DeepCollectionEquality()
                    .equals(other.selectedGrpId, selectedGrpId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(selectedGrpId) ^ runtimeType.hashCode;
}

extension $DeviceMigrationPayLoad$ItemExtension on DeviceMigrationPayLoad$Item {
  DeviceMigrationPayLoad$Item copyWith({String? selectedGrpId}) {
    return DeviceMigrationPayLoad$Item(
        selectedGrpId: selectedGrpId ?? this.selectedGrpId);
  }
}

@JsonSerializable(explicitToJson: true)
class SMSTrackingJob {
  SMSTrackingJob({
    this.jobType,
    this.payLoad,
    this.platform,
    this.jobName,
    this.folderId,
  });

  factory SMSTrackingJob.fromJson(Map<String, dynamic> json) =>
      _$SMSTrackingJobFromJson(json);

  @JsonKey(name: 'JobType')
  final String? jobType;
  @JsonKey(name: 'PayLoad')
  final SMSTrackingPayLoad? payLoad;
  @JsonKey(name: 'Platform')
  final String? platform;
  @JsonKey(name: 'JobName')
  final String? jobName;
  @JsonKey(name: 'FolderId')
  final String? folderId;
  static const fromJsonFactory = _$SMSTrackingJobFromJson;
  static const toJsonFactory = _$SMSTrackingJobToJson;
  Map<String, dynamic> toJson() => _$SMSTrackingJobToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SMSTrackingJob &&
            (identical(other.jobType, jobType) ||
                const DeepCollectionEquality()
                    .equals(other.jobType, jobType)) &&
            (identical(other.payLoad, payLoad) ||
                const DeepCollectionEquality()
                    .equals(other.payLoad, payLoad)) &&
            (identical(other.platform, platform) ||
                const DeepCollectionEquality()
                    .equals(other.platform, platform)) &&
            (identical(other.jobName, jobName) ||
                const DeepCollectionEquality()
                    .equals(other.jobName, jobName)) &&
            (identical(other.folderId, folderId) ||
                const DeepCollectionEquality()
                    .equals(other.folderId, folderId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobType) ^
      const DeepCollectionEquality().hash(payLoad) ^
      const DeepCollectionEquality().hash(platform) ^
      const DeepCollectionEquality().hash(jobName) ^
      const DeepCollectionEquality().hash(folderId) ^
      runtimeType.hashCode;
}

extension $SMSTrackingJobExtension on SMSTrackingJob {
  SMSTrackingJob copyWith(
      {String? jobType,
      SMSTrackingPayLoad? payLoad,
      String? platform,
      String? jobName,
      String? folderId}) {
    return SMSTrackingJob(
        jobType: jobType ?? this.jobType,
        payLoad: payLoad ?? this.payLoad,
        platform: platform ?? this.platform,
        jobName: jobName ?? this.jobName,
        folderId: folderId ?? this.folderId);
  }
}

typedef SMSTrackingPayLoad = List<SMSTrackingPayLoad$Item>;

@JsonSerializable(explicitToJson: true)
class SMSTrackingPayLoad$Item {
  SMSTrackingPayLoad$Item({
    this.sMSTracking,
    this.periodicity,
  });

  factory SMSTrackingPayLoad$Item.fromJson(Map<String, dynamic> json) =>
      _$SMSTrackingPayLoad$ItemFromJson(json);

  @JsonKey(name: 'SMSTracking')
  final String? sMSTracking;
  @JsonKey(name: 'Periodicity')
  final String? periodicity;
  static const fromJsonFactory = _$SMSTrackingPayLoad$ItemFromJson;
  static const toJsonFactory = _$SMSTrackingPayLoad$ItemToJson;
  Map<String, dynamic> toJson() => _$SMSTrackingPayLoad$ItemToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SMSTrackingPayLoad$Item &&
            (identical(other.sMSTracking, sMSTracking) ||
                const DeepCollectionEquality()
                    .equals(other.sMSTracking, sMSTracking)) &&
            (identical(other.periodicity, periodicity) ||
                const DeepCollectionEquality()
                    .equals(other.periodicity, periodicity)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(sMSTracking) ^
      const DeepCollectionEquality().hash(periodicity) ^
      runtimeType.hashCode;
}

extension $SMSTrackingPayLoad$ItemExtension on SMSTrackingPayLoad$Item {
  SMSTrackingPayLoad$Item copyWith({String? sMSTracking, String? periodicity}) {
    return SMSTrackingPayLoad$Item(
        sMSTracking: sMSTracking ?? this.sMSTracking,
        periodicity: periodicity ?? this.periodicity);
  }
}

@JsonSerializable(explicitToJson: true)
class CallTrackingJob {
  CallTrackingJob({
    this.jobType,
    this.payLoad,
    this.platform,
    this.jobName,
    this.folderId,
  });

  factory CallTrackingJob.fromJson(Map<String, dynamic> json) =>
      _$CallTrackingJobFromJson(json);

  @JsonKey(name: 'JobType')
  final String? jobType;
  @JsonKey(name: 'PayLoad')
  final CallTrackingPayLoad? payLoad;
  @JsonKey(name: 'Platform')
  final String? platform;
  @JsonKey(name: 'JobName')
  final String? jobName;
  @JsonKey(name: 'FolderId')
  final String? folderId;
  static const fromJsonFactory = _$CallTrackingJobFromJson;
  static const toJsonFactory = _$CallTrackingJobToJson;
  Map<String, dynamic> toJson() => _$CallTrackingJobToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CallTrackingJob &&
            (identical(other.jobType, jobType) ||
                const DeepCollectionEquality()
                    .equals(other.jobType, jobType)) &&
            (identical(other.payLoad, payLoad) ||
                const DeepCollectionEquality()
                    .equals(other.payLoad, payLoad)) &&
            (identical(other.platform, platform) ||
                const DeepCollectionEquality()
                    .equals(other.platform, platform)) &&
            (identical(other.jobName, jobName) ||
                const DeepCollectionEquality()
                    .equals(other.jobName, jobName)) &&
            (identical(other.folderId, folderId) ||
                const DeepCollectionEquality()
                    .equals(other.folderId, folderId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobType) ^
      const DeepCollectionEquality().hash(payLoad) ^
      const DeepCollectionEquality().hash(platform) ^
      const DeepCollectionEquality().hash(jobName) ^
      const DeepCollectionEquality().hash(folderId) ^
      runtimeType.hashCode;
}

extension $CallTrackingJobExtension on CallTrackingJob {
  CallTrackingJob copyWith(
      {String? jobType,
      CallTrackingPayLoad? payLoad,
      String? platform,
      String? jobName,
      String? folderId}) {
    return CallTrackingJob(
        jobType: jobType ?? this.jobType,
        payLoad: payLoad ?? this.payLoad,
        platform: platform ?? this.platform,
        jobName: jobName ?? this.jobName,
        folderId: folderId ?? this.folderId);
  }
}

typedef CallTrackingPayLoad = List<CallTrackingPayLoad$Item>;

@JsonSerializable(explicitToJson: true)
class CallTrackingPayLoad$Item {
  CallTrackingPayLoad$Item({
    this.callTracking,
    this.periodicity,
  });

  factory CallTrackingPayLoad$Item.fromJson(Map<String, dynamic> json) =>
      _$CallTrackingPayLoad$ItemFromJson(json);

  @JsonKey(name: 'CallTracking')
  final String? callTracking;
  @JsonKey(name: 'Periodicity')
  final String? periodicity;
  static const fromJsonFactory = _$CallTrackingPayLoad$ItemFromJson;
  static const toJsonFactory = _$CallTrackingPayLoad$ItemToJson;
  Map<String, dynamic> toJson() => _$CallTrackingPayLoad$ItemToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CallTrackingPayLoad$Item &&
            (identical(other.callTracking, callTracking) ||
                const DeepCollectionEquality()
                    .equals(other.callTracking, callTracking)) &&
            (identical(other.periodicity, periodicity) ||
                const DeepCollectionEquality()
                    .equals(other.periodicity, periodicity)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(callTracking) ^
      const DeepCollectionEquality().hash(periodicity) ^
      runtimeType.hashCode;
}

extension $CallTrackingPayLoad$ItemExtension on CallTrackingPayLoad$Item {
  CallTrackingPayLoad$Item copyWith(
      {String? callTracking, String? periodicity}) {
    return CallTrackingPayLoad$Item(
        callTracking: callTracking ?? this.callTracking,
        periodicity: periodicity ?? this.periodicity);
  }
}

@JsonSerializable(explicitToJson: true)
class AppSettingsJob {
  AppSettingsJob({
    this.jobType,
    this.payLoad,
    this.platform,
    this.jobName,
    this.folderId,
  });

  factory AppSettingsJob.fromJson(Map<String, dynamic> json) =>
      _$AppSettingsJobFromJson(json);

  @JsonKey(name: 'JobType')
  final String? jobType;
  @JsonKey(name: 'PayLoad')
  final AppSettingsPayLoad? payLoad;
  @JsonKey(name: 'Platform')
  final String? platform;
  @JsonKey(name: 'JobName')
  final String? jobName;
  @JsonKey(name: 'FolderId')
  final String? folderId;
  static const fromJsonFactory = _$AppSettingsJobFromJson;
  static const toJsonFactory = _$AppSettingsJobToJson;
  Map<String, dynamic> toJson() => _$AppSettingsJobToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AppSettingsJob &&
            (identical(other.jobType, jobType) ||
                const DeepCollectionEquality()
                    .equals(other.jobType, jobType)) &&
            (identical(other.payLoad, payLoad) ||
                const DeepCollectionEquality()
                    .equals(other.payLoad, payLoad)) &&
            (identical(other.platform, platform) ||
                const DeepCollectionEquality()
                    .equals(other.platform, platform)) &&
            (identical(other.jobName, jobName) ||
                const DeepCollectionEquality()
                    .equals(other.jobName, jobName)) &&
            (identical(other.folderId, folderId) ||
                const DeepCollectionEquality()
                    .equals(other.folderId, folderId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobType) ^
      const DeepCollectionEquality().hash(payLoad) ^
      const DeepCollectionEquality().hash(platform) ^
      const DeepCollectionEquality().hash(jobName) ^
      const DeepCollectionEquality().hash(folderId) ^
      runtimeType.hashCode;
}

extension $AppSettingsJobExtension on AppSettingsJob {
  AppSettingsJob copyWith(
      {String? jobType,
      AppSettingsPayLoad? payLoad,
      String? platform,
      String? jobName,
      String? folderId}) {
    return AppSettingsJob(
        jobType: jobType ?? this.jobType,
        payLoad: payLoad ?? this.payLoad,
        platform: platform ?? this.platform,
        jobName: jobName ?? this.jobName,
        folderId: folderId ?? this.folderId);
  }
}

typedef AppSettingsPayLoad = List<AppSettingsPayLoad$Item>;

@JsonSerializable(explicitToJson: true)
class AppSettingsPayLoad$Item {
  AppSettingsPayLoad$Item({
    this.appName,
    this.packages,
    this.startUpDelay,
    this.action,
    this.phonePin,
  });

  factory AppSettingsPayLoad$Item.fromJson(Map<String, dynamic> json) =>
      _$AppSettingsPayLoad$ItemFromJson(json);

  @JsonKey(name: 'AppName', defaultValue: <Object>[])
  final List<Object>? appName;
  @JsonKey(name: 'Packages', defaultValue: <Object>[])
  final List<Object>? packages;
  @JsonKey(name: 'StartUpDelay', defaultValue: <Object>[])
  final List<Object>? startUpDelay;
  @JsonKey(name: 'Action')
  final String? action;
  @JsonKey(name: 'PhonePin')
  final String? phonePin;
  static const fromJsonFactory = _$AppSettingsPayLoad$ItemFromJson;
  static const toJsonFactory = _$AppSettingsPayLoad$ItemToJson;
  Map<String, dynamic> toJson() => _$AppSettingsPayLoad$ItemToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AppSettingsPayLoad$Item &&
            (identical(other.appName, appName) ||
                const DeepCollectionEquality()
                    .equals(other.appName, appName)) &&
            (identical(other.packages, packages) ||
                const DeepCollectionEquality()
                    .equals(other.packages, packages)) &&
            (identical(other.startUpDelay, startUpDelay) ||
                const DeepCollectionEquality()
                    .equals(other.startUpDelay, startUpDelay)) &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)) &&
            (identical(other.phonePin, phonePin) ||
                const DeepCollectionEquality()
                    .equals(other.phonePin, phonePin)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(appName) ^
      const DeepCollectionEquality().hash(packages) ^
      const DeepCollectionEquality().hash(startUpDelay) ^
      const DeepCollectionEquality().hash(action) ^
      const DeepCollectionEquality().hash(phonePin) ^
      runtimeType.hashCode;
}

extension $AppSettingsPayLoad$ItemExtension on AppSettingsPayLoad$Item {
  AppSettingsPayLoad$Item copyWith(
      {List<Object>? appName,
      List<Object>? packages,
      List<Object>? startUpDelay,
      String? action,
      String? phonePin}) {
    return AppSettingsPayLoad$Item(
        appName: appName ?? this.appName,
        packages: packages ?? this.packages,
        startUpDelay: startUpDelay ?? this.startUpDelay,
        action: action ?? this.action,
        phonePin: phonePin ?? this.phonePin);
  }
}

@JsonSerializable(explicitToJson: true)
class RemoteWipeJob {
  RemoteWipeJob({
    this.jobType,
    this.payLoad,
    this.platform,
    this.jobName,
    this.folderId,
  });

  factory RemoteWipeJob.fromJson(Map<String, dynamic> json) =>
      _$RemoteWipeJobFromJson(json);

  @JsonKey(name: 'JobType')
  final String? jobType;
  @JsonKey(name: 'PayLoad')
  final RemoteWipePayLoad? payLoad;
  @JsonKey(name: 'Platform')
  final String? platform;
  @JsonKey(name: 'JobName')
  final String? jobName;
  @JsonKey(name: 'FolderId')
  final String? folderId;
  static const fromJsonFactory = _$RemoteWipeJobFromJson;
  static const toJsonFactory = _$RemoteWipeJobToJson;
  Map<String, dynamic> toJson() => _$RemoteWipeJobToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RemoteWipeJob &&
            (identical(other.jobType, jobType) ||
                const DeepCollectionEquality()
                    .equals(other.jobType, jobType)) &&
            (identical(other.payLoad, payLoad) ||
                const DeepCollectionEquality()
                    .equals(other.payLoad, payLoad)) &&
            (identical(other.platform, platform) ||
                const DeepCollectionEquality()
                    .equals(other.platform, platform)) &&
            (identical(other.jobName, jobName) ||
                const DeepCollectionEquality()
                    .equals(other.jobName, jobName)) &&
            (identical(other.folderId, folderId) ||
                const DeepCollectionEquality()
                    .equals(other.folderId, folderId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobType) ^
      const DeepCollectionEquality().hash(payLoad) ^
      const DeepCollectionEquality().hash(platform) ^
      const DeepCollectionEquality().hash(jobName) ^
      const DeepCollectionEquality().hash(folderId) ^
      runtimeType.hashCode;
}

extension $RemoteWipeJobExtension on RemoteWipeJob {
  RemoteWipeJob copyWith(
      {String? jobType,
      RemoteWipePayLoad? payLoad,
      String? platform,
      String? jobName,
      String? folderId}) {
    return RemoteWipeJob(
        jobType: jobType ?? this.jobType,
        payLoad: payLoad ?? this.payLoad,
        platform: platform ?? this.platform,
        jobName: jobName ?? this.jobName,
        folderId: folderId ?? this.folderId);
  }
}

typedef RemoteWipePayLoad = List<RemoteWipePayLoad$Item>;

@JsonSerializable(explicitToJson: true)
class RemoteWipePayLoad$Item {
  RemoteWipePayLoad$Item({
    this.wipeAllData,
    this.isScheduleWipe,
    this.gracePeriod,
    this.isWipeOnRoot,
  });

  factory RemoteWipePayLoad$Item.fromJson(Map<String, dynamic> json) =>
      _$RemoteWipePayLoad$ItemFromJson(json);

  @JsonKey(name: 'WipeAllData')
  final bool? wipeAllData;
  @JsonKey(name: 'IsScheduleWipe')
  final bool? isScheduleWipe;
  @JsonKey(name: 'GracePeriod')
  final int? gracePeriod;
  @JsonKey(name: 'IsWipeOnRoot')
  final int? isWipeOnRoot;
  static const fromJsonFactory = _$RemoteWipePayLoad$ItemFromJson;
  static const toJsonFactory = _$RemoteWipePayLoad$ItemToJson;
  Map<String, dynamic> toJson() => _$RemoteWipePayLoad$ItemToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RemoteWipePayLoad$Item &&
            (identical(other.wipeAllData, wipeAllData) ||
                const DeepCollectionEquality()
                    .equals(other.wipeAllData, wipeAllData)) &&
            (identical(other.isScheduleWipe, isScheduleWipe) ||
                const DeepCollectionEquality()
                    .equals(other.isScheduleWipe, isScheduleWipe)) &&
            (identical(other.gracePeriod, gracePeriod) ||
                const DeepCollectionEquality()
                    .equals(other.gracePeriod, gracePeriod)) &&
            (identical(other.isWipeOnRoot, isWipeOnRoot) ||
                const DeepCollectionEquality()
                    .equals(other.isWipeOnRoot, isWipeOnRoot)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(wipeAllData) ^
      const DeepCollectionEquality().hash(isScheduleWipe) ^
      const DeepCollectionEquality().hash(gracePeriod) ^
      const DeepCollectionEquality().hash(isWipeOnRoot) ^
      runtimeType.hashCode;
}

extension $RemoteWipePayLoad$ItemExtension on RemoteWipePayLoad$Item {
  RemoteWipePayLoad$Item copyWith(
      {bool? wipeAllData,
      bool? isScheduleWipe,
      int? gracePeriod,
      int? isWipeOnRoot}) {
    return RemoteWipePayLoad$Item(
        wipeAllData: wipeAllData ?? this.wipeAllData,
        isScheduleWipe: isScheduleWipe ?? this.isScheduleWipe,
        gracePeriod: gracePeriod ?? this.gracePeriod,
        isWipeOnRoot: isWipeOnRoot ?? this.isWipeOnRoot);
  }
}

@JsonSerializable(explicitToJson: true)
class LocationTrackingJob {
  LocationTrackingJob({
    this.jobType,
    this.payLoad,
    this.platform,
    this.jobName,
    this.folderId,
  });

  factory LocationTrackingJob.fromJson(Map<String, dynamic> json) =>
      _$LocationTrackingJobFromJson(json);

  @JsonKey(name: 'JobType')
  final String? jobType;
  @JsonKey(name: 'PayLoad')
  final LocationTrackingPayLoad? payLoad;
  @JsonKey(name: 'Platform')
  final String? platform;
  @JsonKey(name: 'JobName')
  final String? jobName;
  @JsonKey(name: 'FolderId')
  final String? folderId;
  static const fromJsonFactory = _$LocationTrackingJobFromJson;
  static const toJsonFactory = _$LocationTrackingJobToJson;
  Map<String, dynamic> toJson() => _$LocationTrackingJobToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LocationTrackingJob &&
            (identical(other.jobType, jobType) ||
                const DeepCollectionEquality()
                    .equals(other.jobType, jobType)) &&
            (identical(other.payLoad, payLoad) ||
                const DeepCollectionEquality()
                    .equals(other.payLoad, payLoad)) &&
            (identical(other.platform, platform) ||
                const DeepCollectionEquality()
                    .equals(other.platform, platform)) &&
            (identical(other.jobName, jobName) ||
                const DeepCollectionEquality()
                    .equals(other.jobName, jobName)) &&
            (identical(other.folderId, folderId) ||
                const DeepCollectionEquality()
                    .equals(other.folderId, folderId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobType) ^
      const DeepCollectionEquality().hash(payLoad) ^
      const DeepCollectionEquality().hash(platform) ^
      const DeepCollectionEquality().hash(jobName) ^
      const DeepCollectionEquality().hash(folderId) ^
      runtimeType.hashCode;
}

extension $LocationTrackingJobExtension on LocationTrackingJob {
  LocationTrackingJob copyWith(
      {String? jobType,
      LocationTrackingPayLoad? payLoad,
      String? platform,
      String? jobName,
      String? folderId}) {
    return LocationTrackingJob(
        jobType: jobType ?? this.jobType,
        payLoad: payLoad ?? this.payLoad,
        platform: platform ?? this.platform,
        jobName: jobName ?? this.jobName,
        folderId: folderId ?? this.folderId);
  }
}

typedef LocationTrackingPayLoad = List<LocationTrackingPayLoad$Item>;

@JsonSerializable(explicitToJson: true)
class LocationTrackingPayLoad$Item {
  LocationTrackingPayLoad$Item({
    this.locationTracking,
    this.periodicity,
  });

  factory LocationTrackingPayLoad$Item.fromJson(Map<String, dynamic> json) =>
      _$LocationTrackingPayLoad$ItemFromJson(json);

  @JsonKey(name: 'LocationTracking')
  final bool? locationTracking;
  @JsonKey(name: 'Periodicity')
  final int? periodicity;
  static const fromJsonFactory = _$LocationTrackingPayLoad$ItemFromJson;
  static const toJsonFactory = _$LocationTrackingPayLoad$ItemToJson;
  Map<String, dynamic> toJson() => _$LocationTrackingPayLoad$ItemToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LocationTrackingPayLoad$Item &&
            (identical(other.locationTracking, locationTracking) ||
                const DeepCollectionEquality()
                    .equals(other.locationTracking, locationTracking)) &&
            (identical(other.periodicity, periodicity) ||
                const DeepCollectionEquality()
                    .equals(other.periodicity, periodicity)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(locationTracking) ^
      const DeepCollectionEquality().hash(periodicity) ^
      runtimeType.hashCode;
}

extension $LocationTrackingPayLoad$ItemExtension
    on LocationTrackingPayLoad$Item {
  LocationTrackingPayLoad$Item copyWith(
      {bool? locationTracking, int? periodicity}) {
    return LocationTrackingPayLoad$Item(
        locationTracking: locationTracking ?? this.locationTracking,
        periodicity: periodicity ?? this.periodicity);
  }
}

@JsonSerializable(explicitToJson: true)
class TextMessageJob {
  TextMessageJob({
    this.jobType,
    this.payLoad,
    this.platform,
    this.jobName,
    this.folderId,
  });

  factory TextMessageJob.fromJson(Map<String, dynamic> json) =>
      _$TextMessageJobFromJson(json);

  @JsonKey(name: 'JobType')
  final String? jobType;
  @JsonKey(name: 'PayLoad')
  final TextMessagePayLoad? payLoad;
  @JsonKey(name: 'Platform')
  final String? platform;
  @JsonKey(name: 'JobName')
  final String? jobName;
  @JsonKey(name: 'FolderId')
  final String? folderId;
  static const fromJsonFactory = _$TextMessageJobFromJson;
  static const toJsonFactory = _$TextMessageJobToJson;
  Map<String, dynamic> toJson() => _$TextMessageJobToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TextMessageJob &&
            (identical(other.jobType, jobType) ||
                const DeepCollectionEquality()
                    .equals(other.jobType, jobType)) &&
            (identical(other.payLoad, payLoad) ||
                const DeepCollectionEquality()
                    .equals(other.payLoad, payLoad)) &&
            (identical(other.platform, platform) ||
                const DeepCollectionEquality()
                    .equals(other.platform, platform)) &&
            (identical(other.jobName, jobName) ||
                const DeepCollectionEquality()
                    .equals(other.jobName, jobName)) &&
            (identical(other.folderId, folderId) ||
                const DeepCollectionEquality()
                    .equals(other.folderId, folderId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobType) ^
      const DeepCollectionEquality().hash(payLoad) ^
      const DeepCollectionEquality().hash(platform) ^
      const DeepCollectionEquality().hash(jobName) ^
      const DeepCollectionEquality().hash(folderId) ^
      runtimeType.hashCode;
}

extension $TextMessageJobExtension on TextMessageJob {
  TextMessageJob copyWith(
      {String? jobType,
      TextMessagePayLoad? payLoad,
      String? platform,
      String? jobName,
      String? folderId}) {
    return TextMessageJob(
        jobType: jobType ?? this.jobType,
        payLoad: payLoad ?? this.payLoad,
        platform: platform ?? this.platform,
        jobName: jobName ?? this.jobName,
        folderId: folderId ?? this.folderId);
  }
}

typedef TextMessagePayLoad = List<TextMessagePayLoad$Item>;

@JsonSerializable(explicitToJson: true)
class TextMessagePayLoad$Item {
  TextMessagePayLoad$Item({
    this.subject,
    this.body,
    this.readNotification,
    this.forceRead,
    this.enableBuzz,
    this.buzzInterval,
    this.closeDurationEnable,
    this.interval,
    this.richTextBody,
    this.richTextHTML,
  });

  factory TextMessagePayLoad$Item.fromJson(Map<String, dynamic> json) =>
      _$TextMessagePayLoad$ItemFromJson(json);

  @JsonKey(name: 'Subject')
  final String? subject;
  @JsonKey(name: 'Body')
  final String? body;
  @JsonKey(name: 'Read Notification')
  final bool? readNotification;
  @JsonKey(name: 'ForceRead')
  final bool? forceRead;
  @JsonKey(name: 'EnableBuzz')
  final bool? enableBuzz;
  @JsonKey(name: 'BuzzInterval')
  final String? buzzInterval;
  @JsonKey(name: 'CloseDurationEnable')
  final bool? closeDurationEnable;
  @JsonKey(name: 'Interval')
  final String? interval;
  @JsonKey(name: 'RichTextBody')
  final String? richTextBody;
  @JsonKey(name: 'RichTextHTML')
  final String? richTextHTML;
  static const fromJsonFactory = _$TextMessagePayLoad$ItemFromJson;
  static const toJsonFactory = _$TextMessagePayLoad$ItemToJson;
  Map<String, dynamic> toJson() => _$TextMessagePayLoad$ItemToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TextMessagePayLoad$Item &&
            (identical(other.subject, subject) ||
                const DeepCollectionEquality()
                    .equals(other.subject, subject)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)) &&
            (identical(other.readNotification, readNotification) ||
                const DeepCollectionEquality()
                    .equals(other.readNotification, readNotification)) &&
            (identical(other.forceRead, forceRead) ||
                const DeepCollectionEquality()
                    .equals(other.forceRead, forceRead)) &&
            (identical(other.enableBuzz, enableBuzz) ||
                const DeepCollectionEquality()
                    .equals(other.enableBuzz, enableBuzz)) &&
            (identical(other.buzzInterval, buzzInterval) ||
                const DeepCollectionEquality()
                    .equals(other.buzzInterval, buzzInterval)) &&
            (identical(other.closeDurationEnable, closeDurationEnable) ||
                const DeepCollectionEquality()
                    .equals(other.closeDurationEnable, closeDurationEnable)) &&
            (identical(other.interval, interval) ||
                const DeepCollectionEquality()
                    .equals(other.interval, interval)) &&
            (identical(other.richTextBody, richTextBody) ||
                const DeepCollectionEquality()
                    .equals(other.richTextBody, richTextBody)) &&
            (identical(other.richTextHTML, richTextHTML) ||
                const DeepCollectionEquality()
                    .equals(other.richTextHTML, richTextHTML)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(subject) ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(readNotification) ^
      const DeepCollectionEquality().hash(forceRead) ^
      const DeepCollectionEquality().hash(enableBuzz) ^
      const DeepCollectionEquality().hash(buzzInterval) ^
      const DeepCollectionEquality().hash(closeDurationEnable) ^
      const DeepCollectionEquality().hash(interval) ^
      const DeepCollectionEquality().hash(richTextBody) ^
      const DeepCollectionEquality().hash(richTextHTML) ^
      runtimeType.hashCode;
}

extension $TextMessagePayLoad$ItemExtension on TextMessagePayLoad$Item {
  TextMessagePayLoad$Item copyWith(
      {String? subject,
      String? body,
      bool? readNotification,
      bool? forceRead,
      bool? enableBuzz,
      String? buzzInterval,
      bool? closeDurationEnable,
      String? interval,
      String? richTextBody,
      String? richTextHTML}) {
    return TextMessagePayLoad$Item(
        subject: subject ?? this.subject,
        body: body ?? this.body,
        readNotification: readNotification ?? this.readNotification,
        forceRead: forceRead ?? this.forceRead,
        enableBuzz: enableBuzz ?? this.enableBuzz,
        buzzInterval: buzzInterval ?? this.buzzInterval,
        closeDurationEnable: closeDurationEnable ?? this.closeDurationEnable,
        interval: interval ?? this.interval,
        richTextBody: richTextBody ?? this.richTextBody,
        richTextHTML: richTextHTML ?? this.richTextHTML);
  }
}

@JsonSerializable(explicitToJson: true)
class GetPreapprovedDevicePayLoad {
  GetPreapprovedDevicePayLoad({
    required this.limit,
    required this.offset,
    required this.isSearch,
    this.searchValue,
    this.sortOrder,
    this.sortColumn,
  });

  factory GetPreapprovedDevicePayLoad.fromJson(Map<String, dynamic> json) =>
      _$GetPreapprovedDevicePayLoadFromJson(json);

  @JsonKey(name: 'Limit')
  final String limit;
  @JsonKey(name: 'Offset')
  final String offset;
  @JsonKey(name: 'IsSearch')
  final bool isSearch;
  @JsonKey(name: 'SearchValue')
  final String? searchValue;
  @JsonKey(name: 'SortOrder')
  final String? sortOrder;
  @JsonKey(
      name: 'SortColumn',
      toJson: getPreapprovedDevicePayLoadSortColumnToJson,
      fromJson: getPreapprovedDevicePayLoadSortColumnFromJson)
  final enums.GetPreapprovedDevicePayLoadSortColumn? sortColumn;
  static const fromJsonFactory = _$GetPreapprovedDevicePayLoadFromJson;
  static const toJsonFactory = _$GetPreapprovedDevicePayLoadToJson;
  Map<String, dynamic> toJson() => _$GetPreapprovedDevicePayLoadToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetPreapprovedDevicePayLoad &&
            (identical(other.limit, limit) ||
                const DeepCollectionEquality().equals(other.limit, limit)) &&
            (identical(other.offset, offset) ||
                const DeepCollectionEquality().equals(other.offset, offset)) &&
            (identical(other.isSearch, isSearch) ||
                const DeepCollectionEquality()
                    .equals(other.isSearch, isSearch)) &&
            (identical(other.searchValue, searchValue) ||
                const DeepCollectionEquality()
                    .equals(other.searchValue, searchValue)) &&
            (identical(other.sortOrder, sortOrder) ||
                const DeepCollectionEquality()
                    .equals(other.sortOrder, sortOrder)) &&
            (identical(other.sortColumn, sortColumn) ||
                const DeepCollectionEquality()
                    .equals(other.sortColumn, sortColumn)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(limit) ^
      const DeepCollectionEquality().hash(offset) ^
      const DeepCollectionEquality().hash(isSearch) ^
      const DeepCollectionEquality().hash(searchValue) ^
      const DeepCollectionEquality().hash(sortOrder) ^
      const DeepCollectionEquality().hash(sortColumn) ^
      runtimeType.hashCode;
}

extension $GetPreapprovedDevicePayLoadExtension on GetPreapprovedDevicePayLoad {
  GetPreapprovedDevicePayLoad copyWith(
      {String? limit,
      String? offset,
      bool? isSearch,
      String? searchValue,
      String? sortOrder,
      enums.GetPreapprovedDevicePayLoadSortColumn? sortColumn}) {
    return GetPreapprovedDevicePayLoad(
        limit: limit ?? this.limit,
        offset: offset ?? this.offset,
        isSearch: isSearch ?? this.isSearch,
        searchValue: searchValue ?? this.searchValue,
        sortOrder: sortOrder ?? this.sortOrder,
        sortColumn: sortColumn ?? this.sortColumn);
  }
}

@JsonSerializable(explicitToJson: true)
class PreapprovedDeviceResponseModel {
  PreapprovedDeviceResponseModel({
    this.total,
    this.rows,
  });

  factory PreapprovedDeviceResponseModel.fromJson(Map<String, dynamic> json) =>
      _$PreapprovedDeviceResponseModelFromJson(json);

  @JsonKey(name: 'total')
  final String? total;
  @JsonKey(name: 'rows', defaultValue: <PreapprovedDeviceResponseModel$Rows>[])
  final List<PreapprovedDeviceResponseModel$Rows>? rows;
  static const fromJsonFactory = _$PreapprovedDeviceResponseModelFromJson;
  static const toJsonFactory = _$PreapprovedDeviceResponseModelToJson;
  Map<String, dynamic> toJson() => _$PreapprovedDeviceResponseModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PreapprovedDeviceResponseModel &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
            (identical(other.rows, rows) ||
                const DeepCollectionEquality().equals(other.rows, rows)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(rows) ^
      runtimeType.hashCode;
}

extension $PreapprovedDeviceResponseModelExtension
    on PreapprovedDeviceResponseModel {
  PreapprovedDeviceResponseModel copyWith(
      {String? total, List<PreapprovedDeviceResponseModel$Rows>? rows}) {
    return PreapprovedDeviceResponseModel(
        total: total ?? this.total, rows: rows ?? this.rows);
  }
}

typedef AddDevicePreapprovedModel = List<AddDevicePreapprovedModel$Item>;

@JsonSerializable(explicitToJson: true)
class AddDevicePreapprovedModel$Item {
  AddDevicePreapprovedModel$Item({
    this.deviceID,
    this.deviceName,
    this.id,
    this.iDType,
    this.groupPath,
    this.groupID,
    this.tagName,
    this.deviceNotes,
    this.serialNumber,
    this.phoneNumber,
    this.emailId,
  });

  factory AddDevicePreapprovedModel$Item.fromJson(Map<String, dynamic> json) =>
      _$AddDevicePreapprovedModel$ItemFromJson(json);

  @JsonKey(name: 'DeviceID')
  final String? deviceID;
  @JsonKey(name: 'DeviceName')
  final String? deviceName;
  @JsonKey(name: 'ID')
  final String? id;
  @JsonKey(name: 'IDType')
  final String? iDType;
  @JsonKey(name: 'GroupPath')
  final String? groupPath;
  @JsonKey(name: 'GroupID')
  final String? groupID;
  @JsonKey(name: 'TagName')
  final String? tagName;
  @JsonKey(name: 'DeviceNotes')
  final String? deviceNotes;
  @JsonKey(name: 'SerialNumber')
  final String? serialNumber;
  @JsonKey(name: 'PhoneNumber')
  final String? phoneNumber;
  @JsonKey(name: 'EmailId')
  final String? emailId;
  static const fromJsonFactory = _$AddDevicePreapprovedModel$ItemFromJson;
  static const toJsonFactory = _$AddDevicePreapprovedModel$ItemToJson;
  Map<String, dynamic> toJson() => _$AddDevicePreapprovedModel$ItemToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddDevicePreapprovedModel$Item &&
            (identical(other.deviceID, deviceID) ||
                const DeepCollectionEquality()
                    .equals(other.deviceID, deviceID)) &&
            (identical(other.deviceName, deviceName) ||
                const DeepCollectionEquality()
                    .equals(other.deviceName, deviceName)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.iDType, iDType) ||
                const DeepCollectionEquality().equals(other.iDType, iDType)) &&
            (identical(other.groupPath, groupPath) ||
                const DeepCollectionEquality()
                    .equals(other.groupPath, groupPath)) &&
            (identical(other.groupID, groupID) ||
                const DeepCollectionEquality()
                    .equals(other.groupID, groupID)) &&
            (identical(other.tagName, tagName) ||
                const DeepCollectionEquality()
                    .equals(other.tagName, tagName)) &&
            (identical(other.deviceNotes, deviceNotes) ||
                const DeepCollectionEquality()
                    .equals(other.deviceNotes, deviceNotes)) &&
            (identical(other.serialNumber, serialNumber) ||
                const DeepCollectionEquality()
                    .equals(other.serialNumber, serialNumber)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.emailId, emailId) ||
                const DeepCollectionEquality().equals(other.emailId, emailId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(deviceID) ^
      const DeepCollectionEquality().hash(deviceName) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(iDType) ^
      const DeepCollectionEquality().hash(groupPath) ^
      const DeepCollectionEquality().hash(groupID) ^
      const DeepCollectionEquality().hash(tagName) ^
      const DeepCollectionEquality().hash(deviceNotes) ^
      const DeepCollectionEquality().hash(serialNumber) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(emailId) ^
      runtimeType.hashCode;
}

extension $AddDevicePreapprovedModel$ItemExtension
    on AddDevicePreapprovedModel$Item {
  AddDevicePreapprovedModel$Item copyWith(
      {String? deviceID,
      String? deviceName,
      String? id,
      String? iDType,
      String? groupPath,
      String? groupID,
      String? tagName,
      String? deviceNotes,
      String? serialNumber,
      String? phoneNumber,
      String? emailId}) {
    return AddDevicePreapprovedModel$Item(
        deviceID: deviceID ?? this.deviceID,
        deviceName: deviceName ?? this.deviceName,
        id: id ?? this.id,
        iDType: iDType ?? this.iDType,
        groupPath: groupPath ?? this.groupPath,
        groupID: groupID ?? this.groupID,
        tagName: tagName ?? this.tagName,
        deviceNotes: deviceNotes ?? this.deviceNotes,
        serialNumber: serialNumber ?? this.serialNumber,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        emailId: emailId ?? this.emailId);
  }
}

typedef GetJobFolderOutPutModel = List<GetJobFolderOutPutModel$Item>;

@JsonSerializable(explicitToJson: true)
class GetJobFolderOutPutModel$Item {
  GetJobFolderOutPutModel$Item({
    this.folderID,
    this.folderName,
    this.parentFolderID,
    this.lastModified,
    this.type,
  });

  factory GetJobFolderOutPutModel$Item.fromJson(Map<String, dynamic> json) =>
      _$GetJobFolderOutPutModel$ItemFromJson(json);

  @JsonKey(name: 'FolderID')
  final String? folderID;
  @JsonKey(name: 'FolderName')
  final String? folderName;
  @JsonKey(name: 'ParentFolderID')
  final String? parentFolderID;
  @JsonKey(name: 'LastModified')
  final String? lastModified;
  @JsonKey(name: 'Type')
  final String? type;
  static const fromJsonFactory = _$GetJobFolderOutPutModel$ItemFromJson;
  static const toJsonFactory = _$GetJobFolderOutPutModel$ItemToJson;
  Map<String, dynamic> toJson() => _$GetJobFolderOutPutModel$ItemToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetJobFolderOutPutModel$Item &&
            (identical(other.folderID, folderID) ||
                const DeepCollectionEquality()
                    .equals(other.folderID, folderID)) &&
            (identical(other.folderName, folderName) ||
                const DeepCollectionEquality()
                    .equals(other.folderName, folderName)) &&
            (identical(other.parentFolderID, parentFolderID) ||
                const DeepCollectionEquality()
                    .equals(other.parentFolderID, parentFolderID)) &&
            (identical(other.lastModified, lastModified) ||
                const DeepCollectionEquality()
                    .equals(other.lastModified, lastModified)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(folderID) ^
      const DeepCollectionEquality().hash(folderName) ^
      const DeepCollectionEquality().hash(parentFolderID) ^
      const DeepCollectionEquality().hash(lastModified) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $GetJobFolderOutPutModel$ItemExtension
    on GetJobFolderOutPutModel$Item {
  GetJobFolderOutPutModel$Item copyWith(
      {String? folderID,
      String? folderName,
      String? parentFolderID,
      String? lastModified,
      String? type}) {
    return GetJobFolderOutPutModel$Item(
        folderID: folderID ?? this.folderID,
        folderName: folderName ?? this.folderName,
        parentFolderID: parentFolderID ?? this.parentFolderID,
        lastModified: lastModified ?? this.lastModified,
        type: type ?? this.type);
  }
}

@JsonSerializable(explicitToJson: true)
class CreateJobFolder {
  CreateJobFolder({
    required this.parentFolderID,
    required this.folderName,
  });

  factory CreateJobFolder.fromJson(Map<String, dynamic> json) =>
      _$CreateJobFolderFromJson(json);

  @JsonKey(name: 'ParentFolderID')
  final String parentFolderID;
  @JsonKey(name: 'FolderName')
  final String folderName;
  static const fromJsonFactory = _$CreateJobFolderFromJson;
  static const toJsonFactory = _$CreateJobFolderToJson;
  Map<String, dynamic> toJson() => _$CreateJobFolderToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateJobFolder &&
            (identical(other.parentFolderID, parentFolderID) ||
                const DeepCollectionEquality()
                    .equals(other.parentFolderID, parentFolderID)) &&
            (identical(other.folderName, folderName) ||
                const DeepCollectionEquality()
                    .equals(other.folderName, folderName)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(parentFolderID) ^
      const DeepCollectionEquality().hash(folderName) ^
      runtimeType.hashCode;
}

extension $CreateJobFolderExtension on CreateJobFolder {
  CreateJobFolder copyWith({String? parentFolderID, String? folderName}) {
    return CreateJobFolder(
        parentFolderID: parentFolderID ?? this.parentFolderID,
        folderName: folderName ?? this.folderName);
  }
}

@JsonSerializable(explicitToJson: true)
class EditJobFolder {
  EditJobFolder({
    required this.folderName,
    required this.folderID,
    required this.parentFolderID,
  });

  factory EditJobFolder.fromJson(Map<String, dynamic> json) =>
      _$EditJobFolderFromJson(json);

  @JsonKey(name: 'FolderName')
  final String folderName;
  @JsonKey(name: 'FolderID')
  final String folderID;
  @JsonKey(name: 'ParentFolderID')
  final String parentFolderID;
  static const fromJsonFactory = _$EditJobFolderFromJson;
  static const toJsonFactory = _$EditJobFolderToJson;
  Map<String, dynamic> toJson() => _$EditJobFolderToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EditJobFolder &&
            (identical(other.folderName, folderName) ||
                const DeepCollectionEquality()
                    .equals(other.folderName, folderName)) &&
            (identical(other.folderID, folderID) ||
                const DeepCollectionEquality()
                    .equals(other.folderID, folderID)) &&
            (identical(other.parentFolderID, parentFolderID) ||
                const DeepCollectionEquality()
                    .equals(other.parentFolderID, parentFolderID)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(folderName) ^
      const DeepCollectionEquality().hash(folderID) ^
      const DeepCollectionEquality().hash(parentFolderID) ^
      runtimeType.hashCode;
}

extension $EditJobFolderExtension on EditJobFolder {
  EditJobFolder copyWith(
      {String? folderName, String? folderID, String? parentFolderID}) {
    return EditJobFolder(
        folderName: folderName ?? this.folderName,
        folderID: folderID ?? this.folderID,
        parentFolderID: parentFolderID ?? this.parentFolderID);
  }
}

@JsonSerializable(explicitToJson: true)
class CreateJobFolderOutPutModel {
  CreateJobFolderOutPutModel({
    this.folderID,
    this.parentFolderID,
    this.folderName,
    this.folderType,
  });

  factory CreateJobFolderOutPutModel.fromJson(Map<String, dynamic> json) =>
      _$CreateJobFolderOutPutModelFromJson(json);

  @JsonKey(name: 'FolderID')
  final String? folderID;
  @JsonKey(name: 'ParentFolderID')
  final String? parentFolderID;
  @JsonKey(name: 'FolderName')
  final String? folderName;
  @JsonKey(name: 'FolderType')
  final String? folderType;
  static const fromJsonFactory = _$CreateJobFolderOutPutModelFromJson;
  static const toJsonFactory = _$CreateJobFolderOutPutModelToJson;
  Map<String, dynamic> toJson() => _$CreateJobFolderOutPutModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateJobFolderOutPutModel &&
            (identical(other.folderID, folderID) ||
                const DeepCollectionEquality()
                    .equals(other.folderID, folderID)) &&
            (identical(other.parentFolderID, parentFolderID) ||
                const DeepCollectionEquality()
                    .equals(other.parentFolderID, parentFolderID)) &&
            (identical(other.folderName, folderName) ||
                const DeepCollectionEquality()
                    .equals(other.folderName, folderName)) &&
            (identical(other.folderType, folderType) ||
                const DeepCollectionEquality()
                    .equals(other.folderType, folderType)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(folderID) ^
      const DeepCollectionEquality().hash(parentFolderID) ^
      const DeepCollectionEquality().hash(folderName) ^
      const DeepCollectionEquality().hash(folderType) ^
      runtimeType.hashCode;
}

extension $CreateJobFolderOutPutModelExtension on CreateJobFolderOutPutModel {
  CreateJobFolderOutPutModel copyWith(
      {String? folderID,
      String? parentFolderID,
      String? folderName,
      String? folderType}) {
    return CreateJobFolderOutPutModel(
        folderID: folderID ?? this.folderID,
        parentFolderID: parentFolderID ?? this.parentFolderID,
        folderName: folderName ?? this.folderName,
        folderType: folderType ?? this.folderType);
  }
}

@JsonSerializable(explicitToJson: true)
class InstalledAppsModel {
  InstalledAppsModel({
    this.name,
    this.status,
    this.type,
    this.id,
    this.version,
    this.startupDelay,
    this.className,
    this.appIcon,
    this.visibilityStatus,
    this.appSize,
  });

  factory InstalledAppsModel.fromJson(Map<String, dynamic> json) =>
      _$InstalledAppsModelFromJson(json);

  @JsonKey(name: 'Name')
  final String? name;
  @JsonKey(name: 'Status')
  final String? status;
  @JsonKey(name: 'Type')
  final String? type;
  @JsonKey(name: 'Id')
  final String? id;
  @JsonKey(name: 'Version')
  final String? version;
  @JsonKey(name: 'StartupDelay')
  final String? startupDelay;
  @JsonKey(name: 'ClassName')
  final String? className;
  @JsonKey(name: 'AppIcon')
  final String? appIcon;
  @JsonKey(name: 'VisibilityStatus')
  final String? visibilityStatus;
  @JsonKey(name: 'AppSize')
  final String? appSize;
  static const fromJsonFactory = _$InstalledAppsModelFromJson;
  static const toJsonFactory = _$InstalledAppsModelToJson;
  Map<String, dynamic> toJson() => _$InstalledAppsModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InstalledAppsModel &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.version, version) ||
                const DeepCollectionEquality()
                    .equals(other.version, version)) &&
            (identical(other.startupDelay, startupDelay) ||
                const DeepCollectionEquality()
                    .equals(other.startupDelay, startupDelay)) &&
            (identical(other.className, className) ||
                const DeepCollectionEquality()
                    .equals(other.className, className)) &&
            (identical(other.appIcon, appIcon) ||
                const DeepCollectionEquality()
                    .equals(other.appIcon, appIcon)) &&
            (identical(other.visibilityStatus, visibilityStatus) ||
                const DeepCollectionEquality()
                    .equals(other.visibilityStatus, visibilityStatus)) &&
            (identical(other.appSize, appSize) ||
                const DeepCollectionEquality().equals(other.appSize, appSize)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(version) ^
      const DeepCollectionEquality().hash(startupDelay) ^
      const DeepCollectionEquality().hash(className) ^
      const DeepCollectionEquality().hash(appIcon) ^
      const DeepCollectionEquality().hash(visibilityStatus) ^
      const DeepCollectionEquality().hash(appSize) ^
      runtimeType.hashCode;
}

extension $InstalledAppsModelExtension on InstalledAppsModel {
  InstalledAppsModel copyWith(
      {String? name,
      String? status,
      String? type,
      String? id,
      String? version,
      String? startupDelay,
      String? className,
      String? appIcon,
      String? visibilityStatus,
      String? appSize}) {
    return InstalledAppsModel(
        name: name ?? this.name,
        status: status ?? this.status,
        type: type ?? this.type,
        id: id ?? this.id,
        version: version ?? this.version,
        startupDelay: startupDelay ?? this.startupDelay,
        className: className ?? this.className,
        appIcon: appIcon ?? this.appIcon,
        visibilityStatus: visibilityStatus ?? this.visibilityStatus,
        appSize: appSize ?? this.appSize);
  }
}

@JsonSerializable(explicitToJson: true)
class MarkMessage {
  MarkMessage({
    required this.selectedMessgIds,
    required this.isRead,
  });

  factory MarkMessage.fromJson(Map<String, dynamic> json) =>
      _$MarkMessageFromJson(json);

  @JsonKey(name: 'SelectedMessgIds')
  final String selectedMessgIds;
  @JsonKey(name: 'IsRead')
  final bool isRead;
  static const fromJsonFactory = _$MarkMessageFromJson;
  static const toJsonFactory = _$MarkMessageToJson;
  Map<String, dynamic> toJson() => _$MarkMessageToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MarkMessage &&
            (identical(other.selectedMessgIds, selectedMessgIds) ||
                const DeepCollectionEquality()
                    .equals(other.selectedMessgIds, selectedMessgIds)) &&
            (identical(other.isRead, isRead) ||
                const DeepCollectionEquality().equals(other.isRead, isRead)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(selectedMessgIds) ^
      const DeepCollectionEquality().hash(isRead) ^
      runtimeType.hashCode;
}

extension $MarkMessageExtension on MarkMessage {
  MarkMessage copyWith({String? selectedMessgIds, bool? isRead}) {
    return MarkMessage(
        selectedMessgIds: selectedMessgIds ?? this.selectedMessgIds,
        isRead: isRead ?? this.isRead);
  }
}

@JsonSerializable(explicitToJson: true)
class PostDeviceResponseModel {
  PostDeviceResponseModel({
    this.rows,
    this.total,
    this.extraInfoDetails,
  });

  factory PostDeviceResponseModel.fromJson(Map<String, dynamic> json) =>
      _$PostDeviceResponseModelFromJson(json);

  @JsonKey(name: 'rows', defaultValue: <PostDeviceResponseModel$Rows>[])
  final List<PostDeviceResponseModel$Rows>? rows;
  @JsonKey(name: 'total')
  final String? total;
  @JsonKey(name: 'extraInfoDetails')
  final PostDeviceResponseModel$ExtraInfoDetails? extraInfoDetails;
  static const fromJsonFactory = _$PostDeviceResponseModelFromJson;
  static const toJsonFactory = _$PostDeviceResponseModelToJson;
  Map<String, dynamic> toJson() => _$PostDeviceResponseModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PostDeviceResponseModel &&
            (identical(other.rows, rows) ||
                const DeepCollectionEquality().equals(other.rows, rows)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
            (identical(other.extraInfoDetails, extraInfoDetails) ||
                const DeepCollectionEquality()
                    .equals(other.extraInfoDetails, extraInfoDetails)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(rows) ^
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(extraInfoDetails) ^
      runtimeType.hashCode;
}

extension $PostDeviceResponseModelExtension on PostDeviceResponseModel {
  PostDeviceResponseModel copyWith(
      {List<PostDeviceResponseModel$Rows>? rows,
      String? total,
      PostDeviceResponseModel$ExtraInfoDetails? extraInfoDetails}) {
    return PostDeviceResponseModel(
        rows: rows ?? this.rows,
        total: total ?? this.total,
        extraInfoDetails: extraInfoDetails ?? this.extraInfoDetails);
  }
}

@JsonSerializable(explicitToJson: true)
class SearchDevice {
  SearchDevice({
    this.searchValue,
    this.advanceSearch,
    this.searchColumns,
    this.advSearchValue,
    this.id,
    this.isTag,
    this.isIncludedBlackListed,
    this.enableDeviceGlobalSearch,
    this.sortColumn,
    this.sortOrder,
    this.limit,
    this.offset,
    this.isSearch,
  });

  factory SearchDevice.fromJson(Map<String, dynamic> json) =>
      _$SearchDeviceFromJson(json);

  @JsonKey(name: 'SearchValue')
  final String? searchValue;
  @JsonKey(name: 'AdvanceSearch')
  final bool? advanceSearch;
  @JsonKey(name: 'SearchColumns', defaultValue: <String>[])
  final List<String>? searchColumns;
  @JsonKey(name: 'AdvSearchValue', defaultValue: <String>[])
  final List<String>? advSearchValue;
  @JsonKey(name: 'ID')
  final String? id;
  @JsonKey(name: 'IsTag')
  final bool? isTag;
  @JsonKey(name: 'IsIncludedBlackListed')
  final bool? isIncludedBlackListed;
  @JsonKey(name: 'EnableDeviceGlobalSearch')
  final bool? enableDeviceGlobalSearch;
  @JsonKey(
      name: 'SortColumn',
      toJson: searchDeviceSortColumnToJson,
      fromJson: searchDeviceSortColumnFromJson)
  final enums.SearchDeviceSortColumn? sortColumn;
  @JsonKey(name: 'SortOrder')
  final String? sortOrder;
  @JsonKey(name: 'Limit')
  final int? limit;
  @JsonKey(name: 'Offset')
  final int? offset;
  @JsonKey(name: 'IsSearch')
  final bool? isSearch;
  static const fromJsonFactory = _$SearchDeviceFromJson;
  static const toJsonFactory = _$SearchDeviceToJson;
  Map<String, dynamic> toJson() => _$SearchDeviceToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchDevice &&
            (identical(other.searchValue, searchValue) ||
                const DeepCollectionEquality()
                    .equals(other.searchValue, searchValue)) &&
            (identical(other.advanceSearch, advanceSearch) ||
                const DeepCollectionEquality()
                    .equals(other.advanceSearch, advanceSearch)) &&
            (identical(other.searchColumns, searchColumns) ||
                const DeepCollectionEquality()
                    .equals(other.searchColumns, searchColumns)) &&
            (identical(other.advSearchValue, advSearchValue) ||
                const DeepCollectionEquality()
                    .equals(other.advSearchValue, advSearchValue)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.isTag, isTag) ||
                const DeepCollectionEquality().equals(other.isTag, isTag)) &&
            (identical(other.isIncludedBlackListed, isIncludedBlackListed) ||
                const DeepCollectionEquality().equals(
                    other.isIncludedBlackListed, isIncludedBlackListed)) &&
            (identical(
                    other.enableDeviceGlobalSearch, enableDeviceGlobalSearch) ||
                const DeepCollectionEquality().equals(
                    other.enableDeviceGlobalSearch,
                    enableDeviceGlobalSearch)) &&
            (identical(other.sortColumn, sortColumn) ||
                const DeepCollectionEquality()
                    .equals(other.sortColumn, sortColumn)) &&
            (identical(other.sortOrder, sortOrder) ||
                const DeepCollectionEquality()
                    .equals(other.sortOrder, sortOrder)) &&
            (identical(other.limit, limit) ||
                const DeepCollectionEquality().equals(other.limit, limit)) &&
            (identical(other.offset, offset) ||
                const DeepCollectionEquality().equals(other.offset, offset)) &&
            (identical(other.isSearch, isSearch) ||
                const DeepCollectionEquality()
                    .equals(other.isSearch, isSearch)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(searchValue) ^
      const DeepCollectionEquality().hash(advanceSearch) ^
      const DeepCollectionEquality().hash(searchColumns) ^
      const DeepCollectionEquality().hash(advSearchValue) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(isTag) ^
      const DeepCollectionEquality().hash(isIncludedBlackListed) ^
      const DeepCollectionEquality().hash(enableDeviceGlobalSearch) ^
      const DeepCollectionEquality().hash(sortColumn) ^
      const DeepCollectionEquality().hash(sortOrder) ^
      const DeepCollectionEquality().hash(limit) ^
      const DeepCollectionEquality().hash(offset) ^
      const DeepCollectionEquality().hash(isSearch) ^
      runtimeType.hashCode;
}

extension $SearchDeviceExtension on SearchDevice {
  SearchDevice copyWith(
      {String? searchValue,
      bool? advanceSearch,
      List<String>? searchColumns,
      List<String>? advSearchValue,
      String? id,
      bool? isTag,
      bool? isIncludedBlackListed,
      bool? enableDeviceGlobalSearch,
      enums.SearchDeviceSortColumn? sortColumn,
      String? sortOrder,
      int? limit,
      int? offset,
      bool? isSearch}) {
    return SearchDevice(
        searchValue: searchValue ?? this.searchValue,
        advanceSearch: advanceSearch ?? this.advanceSearch,
        searchColumns: searchColumns ?? this.searchColumns,
        advSearchValue: advSearchValue ?? this.advSearchValue,
        id: id ?? this.id,
        isTag: isTag ?? this.isTag,
        isIncludedBlackListed:
            isIncludedBlackListed ?? this.isIncludedBlackListed,
        enableDeviceGlobalSearch:
            enableDeviceGlobalSearch ?? this.enableDeviceGlobalSearch,
        sortColumn: sortColumn ?? this.sortColumn,
        sortOrder: sortOrder ?? this.sortOrder,
        limit: limit ?? this.limit,
        offset: offset ?? this.offset,
        isSearch: isSearch ?? this.isSearch);
  }
}

@JsonSerializable(explicitToJson: true)
class GetDevicePayLoad {
  GetDevicePayLoad({
    required this.id,
    required this.isTag,
    required this.isIncludedBlackListed,
    required this.enableDeviceGlobalSearch,
    required this.sortColumn,
    required this.sortOrder,
    required this.limit,
    this.offset,
    required this.isSearch,
    required this.searchValue,
  });

  factory GetDevicePayLoad.fromJson(Map<String, dynamic> json) =>
      _$GetDevicePayLoadFromJson(json);

  @JsonKey(name: 'ID')
  final String id;
  @JsonKey(name: 'IsTag')
  final bool isTag;
  @JsonKey(name: 'IsIncludedBlackListed')
  final bool isIncludedBlackListed;
  @JsonKey(name: 'EnableDeviceGlobalSearch')
  final bool enableDeviceGlobalSearch;
  @JsonKey(
      name: 'SortColumn',
      toJson: getDevicePayLoadSortColumnToJson,
      fromJson: getDevicePayLoadSortColumnFromJson)
  final enums.GetDevicePayLoadSortColumn sortColumn;
  @JsonKey(name: 'SortOrder')
  final String sortOrder;
  @JsonKey(name: 'Limit')
  final int limit;
  @JsonKey(name: 'Offset')
  final int? offset;
  @JsonKey(name: 'IsSearch')
  final bool isSearch;
  @JsonKey(name: 'SearchValue')
  final String searchValue;
  static const fromJsonFactory = _$GetDevicePayLoadFromJson;
  static const toJsonFactory = _$GetDevicePayLoadToJson;
  Map<String, dynamic> toJson() => _$GetDevicePayLoadToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetDevicePayLoad &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.isTag, isTag) ||
                const DeepCollectionEquality().equals(other.isTag, isTag)) &&
            (identical(other.isIncludedBlackListed, isIncludedBlackListed) ||
                const DeepCollectionEquality().equals(
                    other.isIncludedBlackListed, isIncludedBlackListed)) &&
            (identical(
                    other.enableDeviceGlobalSearch, enableDeviceGlobalSearch) ||
                const DeepCollectionEquality().equals(
                    other.enableDeviceGlobalSearch,
                    enableDeviceGlobalSearch)) &&
            (identical(other.sortColumn, sortColumn) ||
                const DeepCollectionEquality()
                    .equals(other.sortColumn, sortColumn)) &&
            (identical(other.sortOrder, sortOrder) ||
                const DeepCollectionEquality()
                    .equals(other.sortOrder, sortOrder)) &&
            (identical(other.limit, limit) ||
                const DeepCollectionEquality().equals(other.limit, limit)) &&
            (identical(other.offset, offset) ||
                const DeepCollectionEquality().equals(other.offset, offset)) &&
            (identical(other.isSearch, isSearch) ||
                const DeepCollectionEquality()
                    .equals(other.isSearch, isSearch)) &&
            (identical(other.searchValue, searchValue) ||
                const DeepCollectionEquality()
                    .equals(other.searchValue, searchValue)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(isTag) ^
      const DeepCollectionEquality().hash(isIncludedBlackListed) ^
      const DeepCollectionEquality().hash(enableDeviceGlobalSearch) ^
      const DeepCollectionEquality().hash(sortColumn) ^
      const DeepCollectionEquality().hash(sortOrder) ^
      const DeepCollectionEquality().hash(limit) ^
      const DeepCollectionEquality().hash(offset) ^
      const DeepCollectionEquality().hash(isSearch) ^
      const DeepCollectionEquality().hash(searchValue) ^
      runtimeType.hashCode;
}

extension $GetDevicePayLoadExtension on GetDevicePayLoad {
  GetDevicePayLoad copyWith(
      {String? id,
      bool? isTag,
      bool? isIncludedBlackListed,
      bool? enableDeviceGlobalSearch,
      enums.GetDevicePayLoadSortColumn? sortColumn,
      String? sortOrder,
      int? limit,
      int? offset,
      bool? isSearch,
      String? searchValue}) {
    return GetDevicePayLoad(
        id: id ?? this.id,
        isTag: isTag ?? this.isTag,
        isIncludedBlackListed:
            isIncludedBlackListed ?? this.isIncludedBlackListed,
        enableDeviceGlobalSearch:
            enableDeviceGlobalSearch ?? this.enableDeviceGlobalSearch,
        sortColumn: sortColumn ?? this.sortColumn,
        sortOrder: sortOrder ?? this.sortOrder,
        limit: limit ?? this.limit,
        offset: offset ?? this.offset,
        isSearch: isSearch ?? this.isSearch,
        searchValue: searchValue ?? this.searchValue);
  }
}

@JsonSerializable(explicitToJson: true)
class RunScriptOutputModel {
  RunScriptOutputModel({
    this.retALL,
    this.retKNOX,
    this.retSHELL,
    this.retEA,
    this.retIOS,
    this.retWINDOWS,
    this.retANDROIDVR,
  });

  factory RunScriptOutputModel.fromJson(Map<String, dynamic> json) =>
      _$RunScriptOutputModelFromJson(json);

  @JsonKey(name: 'retALL', defaultValue: <RunScriptOutputModel$RetALL>[])
  final List<RunScriptOutputModel$RetALL>? retALL;
  @JsonKey(name: 'retKNOX', defaultValue: <RunScriptOutputModel$RetKNOX>[])
  final List<RunScriptOutputModel$RetKNOX>? retKNOX;
  @JsonKey(name: 'retSHELL', defaultValue: <RunScriptOutputModel$RetSHELL>[])
  final List<RunScriptOutputModel$RetSHELL>? retSHELL;
  @JsonKey(name: 'retEA', defaultValue: <RunScriptOutputModel$RetEA>[])
  final List<RunScriptOutputModel$RetEA>? retEA;
  @JsonKey(name: 'retIOS', defaultValue: <RunScriptOutputModel$RetIOS>[])
  final List<RunScriptOutputModel$RetIOS>? retIOS;
  @JsonKey(
      name: 'retWINDOWS', defaultValue: <RunScriptOutputModel$RetWINDOWS>[])
  final List<RunScriptOutputModel$RetWINDOWS>? retWINDOWS;
  @JsonKey(
      name: 'retANDROIDVR', defaultValue: <RunScriptOutputModel$RetANDROIDVR>[])
  final List<RunScriptOutputModel$RetANDROIDVR>? retANDROIDVR;
  static const fromJsonFactory = _$RunScriptOutputModelFromJson;
  static const toJsonFactory = _$RunScriptOutputModelToJson;
  Map<String, dynamic> toJson() => _$RunScriptOutputModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RunScriptOutputModel &&
            (identical(other.retALL, retALL) ||
                const DeepCollectionEquality().equals(other.retALL, retALL)) &&
            (identical(other.retKNOX, retKNOX) ||
                const DeepCollectionEquality()
                    .equals(other.retKNOX, retKNOX)) &&
            (identical(other.retSHELL, retSHELL) ||
                const DeepCollectionEquality()
                    .equals(other.retSHELL, retSHELL)) &&
            (identical(other.retEA, retEA) ||
                const DeepCollectionEquality().equals(other.retEA, retEA)) &&
            (identical(other.retIOS, retIOS) ||
                const DeepCollectionEquality().equals(other.retIOS, retIOS)) &&
            (identical(other.retWINDOWS, retWINDOWS) ||
                const DeepCollectionEquality()
                    .equals(other.retWINDOWS, retWINDOWS)) &&
            (identical(other.retANDROIDVR, retANDROIDVR) ||
                const DeepCollectionEquality()
                    .equals(other.retANDROIDVR, retANDROIDVR)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(retALL) ^
      const DeepCollectionEquality().hash(retKNOX) ^
      const DeepCollectionEquality().hash(retSHELL) ^
      const DeepCollectionEquality().hash(retEA) ^
      const DeepCollectionEquality().hash(retIOS) ^
      const DeepCollectionEquality().hash(retWINDOWS) ^
      const DeepCollectionEquality().hash(retANDROIDVR) ^
      runtimeType.hashCode;
}

extension $RunScriptOutputModelExtension on RunScriptOutputModel {
  RunScriptOutputModel copyWith(
      {List<RunScriptOutputModel$RetALL>? retALL,
      List<RunScriptOutputModel$RetKNOX>? retKNOX,
      List<RunScriptOutputModel$RetSHELL>? retSHELL,
      List<RunScriptOutputModel$RetEA>? retEA,
      List<RunScriptOutputModel$RetIOS>? retIOS,
      List<RunScriptOutputModel$RetWINDOWS>? retWINDOWS,
      List<RunScriptOutputModel$RetANDROIDVR>? retANDROIDVR}) {
    return RunScriptOutputModel(
        retALL: retALL ?? this.retALL,
        retKNOX: retKNOX ?? this.retKNOX,
        retSHELL: retSHELL ?? this.retSHELL,
        retEA: retEA ?? this.retEA,
        retIOS: retIOS ?? this.retIOS,
        retWINDOWS: retWINDOWS ?? this.retWINDOWS,
        retANDROIDVR: retANDROIDVR ?? this.retANDROIDVR);
  }
}

@JsonSerializable(explicitToJson: true)
class JobEditModel {
  JobEditModel({
    required this.jobID,
    required this.jobName,
  });

  factory JobEditModel.fromJson(Map<String, dynamic> json) =>
      _$JobEditModelFromJson(json);

  @JsonKey(name: 'JobID')
  final String jobID;
  @JsonKey(name: 'JobName')
  final String jobName;
  static const fromJsonFactory = _$JobEditModelFromJson;
  static const toJsonFactory = _$JobEditModelToJson;
  Map<String, dynamic> toJson() => _$JobEditModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is JobEditModel &&
            (identical(other.jobID, jobID) ||
                const DeepCollectionEquality().equals(other.jobID, jobID)) &&
            (identical(other.jobName, jobName) ||
                const DeepCollectionEquality().equals(other.jobName, jobName)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobID) ^
      const DeepCollectionEquality().hash(jobName) ^
      runtimeType.hashCode;
}

extension $JobEditModelExtension on JobEditModel {
  JobEditModel copyWith({String? jobID, String? jobName}) {
    return JobEditModel(
        jobID: jobID ?? this.jobID, jobName: jobName ?? this.jobName);
  }
}

@JsonSerializable(explicitToJson: true)
class FileTransferJobEdit {
  FileTransferJobEdit({
    this.jobType,
    this.payLoad,
    this.platform,
    this.jobID,
    this.jobName,
  });

  factory FileTransferJobEdit.fromJson(Map<String, dynamic> json) =>
      _$FileTransferJobEditFromJson(json);

  @JsonKey(name: 'JobType')
  final String? jobType;
  @JsonKey(name: 'PayLoad')
  final FileTransferPayLoad? payLoad;
  @JsonKey(name: 'Platform')
  final String? platform;
  @JsonKey(name: 'JobID')
  final String? jobID;
  @JsonKey(name: 'JobName')
  final String? jobName;
  static const fromJsonFactory = _$FileTransferJobEditFromJson;
  static const toJsonFactory = _$FileTransferJobEditToJson;
  Map<String, dynamic> toJson() => _$FileTransferJobEditToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FileTransferJobEdit &&
            (identical(other.jobType, jobType) ||
                const DeepCollectionEquality()
                    .equals(other.jobType, jobType)) &&
            (identical(other.payLoad, payLoad) ||
                const DeepCollectionEquality()
                    .equals(other.payLoad, payLoad)) &&
            (identical(other.platform, platform) ||
                const DeepCollectionEquality()
                    .equals(other.platform, platform)) &&
            (identical(other.jobID, jobID) ||
                const DeepCollectionEquality().equals(other.jobID, jobID)) &&
            (identical(other.jobName, jobName) ||
                const DeepCollectionEquality().equals(other.jobName, jobName)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobType) ^
      const DeepCollectionEquality().hash(payLoad) ^
      const DeepCollectionEquality().hash(platform) ^
      const DeepCollectionEquality().hash(jobID) ^
      const DeepCollectionEquality().hash(jobName) ^
      runtimeType.hashCode;
}

extension $FileTransferJobEditExtension on FileTransferJobEdit {
  FileTransferJobEdit copyWith(
      {String? jobType,
      FileTransferPayLoad? payLoad,
      String? platform,
      String? jobID,
      String? jobName}) {
    return FileTransferJobEdit(
        jobType: jobType ?? this.jobType,
        payLoad: payLoad ?? this.payLoad,
        platform: platform ?? this.platform,
        jobID: jobID ?? this.jobID,
        jobName: jobName ?? this.jobName);
  }
}

@JsonSerializable(explicitToJson: true)
class InstallJobEdit {
  InstallJobEdit({
    this.jobType,
    this.payLoad,
    this.platform,
    this.jobID,
    this.jobName,
  });

  factory InstallJobEdit.fromJson(Map<String, dynamic> json) =>
      _$InstallJobEditFromJson(json);

  @JsonKey(name: 'JobType')
  final String? jobType;
  @JsonKey(name: 'PayLoad')
  final InstallPayLoad? payLoad;
  @JsonKey(name: 'Platform')
  final String? platform;
  @JsonKey(name: 'JobID')
  final String? jobID;
  @JsonKey(name: 'JobName')
  final String? jobName;
  static const fromJsonFactory = _$InstallJobEditFromJson;
  static const toJsonFactory = _$InstallJobEditToJson;
  Map<String, dynamic> toJson() => _$InstallJobEditToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InstallJobEdit &&
            (identical(other.jobType, jobType) ||
                const DeepCollectionEquality()
                    .equals(other.jobType, jobType)) &&
            (identical(other.payLoad, payLoad) ||
                const DeepCollectionEquality()
                    .equals(other.payLoad, payLoad)) &&
            (identical(other.platform, platform) ||
                const DeepCollectionEquality()
                    .equals(other.platform, platform)) &&
            (identical(other.jobID, jobID) ||
                const DeepCollectionEquality().equals(other.jobID, jobID)) &&
            (identical(other.jobName, jobName) ||
                const DeepCollectionEquality().equals(other.jobName, jobName)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobType) ^
      const DeepCollectionEquality().hash(payLoad) ^
      const DeepCollectionEquality().hash(platform) ^
      const DeepCollectionEquality().hash(jobID) ^
      const DeepCollectionEquality().hash(jobName) ^
      runtimeType.hashCode;
}

extension $InstallJobEditExtension on InstallJobEdit {
  InstallJobEdit copyWith(
      {String? jobType,
      InstallPayLoad? payLoad,
      String? platform,
      String? jobID,
      String? jobName}) {
    return InstallJobEdit(
        jobType: jobType ?? this.jobType,
        payLoad: payLoad ?? this.payLoad,
        platform: platform ?? this.platform,
        jobID: jobID ?? this.jobID,
        jobName: jobName ?? this.jobName);
  }
}

@JsonSerializable(explicitToJson: true)
class WiFiConfigJobEdit {
  WiFiConfigJobEdit({
    this.jobType,
    this.payLoad,
    this.platform,
    this.jobID,
    this.jobName,
  });

  factory WiFiConfigJobEdit.fromJson(Map<String, dynamic> json) =>
      _$WiFiConfigJobEditFromJson(json);

  @JsonKey(name: 'JobType')
  final String? jobType;
  @JsonKey(name: 'PayLoad')
  final WiFiConfigPayLoad? payLoad;
  @JsonKey(name: 'Platform')
  final String? platform;
  @JsonKey(name: 'JobID')
  final String? jobID;
  @JsonKey(name: 'JobName')
  final String? jobName;
  static const fromJsonFactory = _$WiFiConfigJobEditFromJson;
  static const toJsonFactory = _$WiFiConfigJobEditToJson;
  Map<String, dynamic> toJson() => _$WiFiConfigJobEditToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WiFiConfigJobEdit &&
            (identical(other.jobType, jobType) ||
                const DeepCollectionEquality()
                    .equals(other.jobType, jobType)) &&
            (identical(other.payLoad, payLoad) ||
                const DeepCollectionEquality()
                    .equals(other.payLoad, payLoad)) &&
            (identical(other.platform, platform) ||
                const DeepCollectionEquality()
                    .equals(other.platform, platform)) &&
            (identical(other.jobID, jobID) ||
                const DeepCollectionEquality().equals(other.jobID, jobID)) &&
            (identical(other.jobName, jobName) ||
                const DeepCollectionEquality().equals(other.jobName, jobName)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobType) ^
      const DeepCollectionEquality().hash(payLoad) ^
      const DeepCollectionEquality().hash(platform) ^
      const DeepCollectionEquality().hash(jobID) ^
      const DeepCollectionEquality().hash(jobName) ^
      runtimeType.hashCode;
}

extension $WiFiConfigJobEditExtension on WiFiConfigJobEdit {
  WiFiConfigJobEdit copyWith(
      {String? jobType,
      WiFiConfigPayLoad? payLoad,
      String? platform,
      String? jobID,
      String? jobName}) {
    return WiFiConfigJobEdit(
        jobType: jobType ?? this.jobType,
        payLoad: payLoad ?? this.payLoad,
        platform: platform ?? this.platform,
        jobID: jobID ?? this.jobID,
        jobName: jobName ?? this.jobName);
  }
}

@JsonSerializable(explicitToJson: true)
class NotificationPolicyJobEdit {
  NotificationPolicyJobEdit({
    this.jobType,
    this.payLoad,
    this.platform,
    this.jobID,
    this.jobName,
  });

  factory NotificationPolicyJobEdit.fromJson(Map<String, dynamic> json) =>
      _$NotificationPolicyJobEditFromJson(json);

  @JsonKey(name: 'JobType')
  final String? jobType;
  @JsonKey(name: 'PayLoad')
  final NotificationPolicyPayLoad? payLoad;
  @JsonKey(name: 'Platform')
  final String? platform;
  @JsonKey(name: 'JobID')
  final String? jobID;
  @JsonKey(name: 'JobName')
  final String? jobName;
  static const fromJsonFactory = _$NotificationPolicyJobEditFromJson;
  static const toJsonFactory = _$NotificationPolicyJobEditToJson;
  Map<String, dynamic> toJson() => _$NotificationPolicyJobEditToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NotificationPolicyJobEdit &&
            (identical(other.jobType, jobType) ||
                const DeepCollectionEquality()
                    .equals(other.jobType, jobType)) &&
            (identical(other.payLoad, payLoad) ||
                const DeepCollectionEquality()
                    .equals(other.payLoad, payLoad)) &&
            (identical(other.platform, platform) ||
                const DeepCollectionEquality()
                    .equals(other.platform, platform)) &&
            (identical(other.jobID, jobID) ||
                const DeepCollectionEquality().equals(other.jobID, jobID)) &&
            (identical(other.jobName, jobName) ||
                const DeepCollectionEquality().equals(other.jobName, jobName)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobType) ^
      const DeepCollectionEquality().hash(payLoad) ^
      const DeepCollectionEquality().hash(platform) ^
      const DeepCollectionEquality().hash(jobID) ^
      const DeepCollectionEquality().hash(jobName) ^
      runtimeType.hashCode;
}

extension $NotificationPolicyJobEditExtension on NotificationPolicyJobEdit {
  NotificationPolicyJobEdit copyWith(
      {String? jobType,
      NotificationPolicyPayLoad? payLoad,
      String? platform,
      String? jobID,
      String? jobName}) {
    return NotificationPolicyJobEdit(
        jobType: jobType ?? this.jobType,
        payLoad: payLoad ?? this.payLoad,
        platform: platform ?? this.platform,
        jobID: jobID ?? this.jobID,
        jobName: jobName ?? this.jobName);
  }
}

@JsonSerializable(explicitToJson: true)
class DeviceMigrationJobEdit {
  DeviceMigrationJobEdit({
    this.jobType,
    this.payLoad,
    this.platform,
    this.jobID,
    this.jobName,
  });

  factory DeviceMigrationJobEdit.fromJson(Map<String, dynamic> json) =>
      _$DeviceMigrationJobEditFromJson(json);

  @JsonKey(name: 'JobType')
  final String? jobType;
  @JsonKey(name: 'PayLoad')
  final DeviceMigrationPayLoad? payLoad;
  @JsonKey(name: 'Platform')
  final String? platform;
  @JsonKey(name: 'JobID')
  final String? jobID;
  @JsonKey(name: 'JobName')
  final String? jobName;
  static const fromJsonFactory = _$DeviceMigrationJobEditFromJson;
  static const toJsonFactory = _$DeviceMigrationJobEditToJson;
  Map<String, dynamic> toJson() => _$DeviceMigrationJobEditToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeviceMigrationJobEdit &&
            (identical(other.jobType, jobType) ||
                const DeepCollectionEquality()
                    .equals(other.jobType, jobType)) &&
            (identical(other.payLoad, payLoad) ||
                const DeepCollectionEquality()
                    .equals(other.payLoad, payLoad)) &&
            (identical(other.platform, platform) ||
                const DeepCollectionEquality()
                    .equals(other.platform, platform)) &&
            (identical(other.jobID, jobID) ||
                const DeepCollectionEquality().equals(other.jobID, jobID)) &&
            (identical(other.jobName, jobName) ||
                const DeepCollectionEquality().equals(other.jobName, jobName)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobType) ^
      const DeepCollectionEquality().hash(payLoad) ^
      const DeepCollectionEquality().hash(platform) ^
      const DeepCollectionEquality().hash(jobID) ^
      const DeepCollectionEquality().hash(jobName) ^
      runtimeType.hashCode;
}

extension $DeviceMigrationJobEditExtension on DeviceMigrationJobEdit {
  DeviceMigrationJobEdit copyWith(
      {String? jobType,
      DeviceMigrationPayLoad? payLoad,
      String? platform,
      String? jobID,
      String? jobName}) {
    return DeviceMigrationJobEdit(
        jobType: jobType ?? this.jobType,
        payLoad: payLoad ?? this.payLoad,
        platform: platform ?? this.platform,
        jobID: jobID ?? this.jobID,
        jobName: jobName ?? this.jobName);
  }
}

@JsonSerializable(explicitToJson: true)
class SMSTrackingJobEdit {
  SMSTrackingJobEdit({
    this.jobType,
    this.payLoad,
    this.platform,
    this.jobID,
    this.jobName,
  });

  factory SMSTrackingJobEdit.fromJson(Map<String, dynamic> json) =>
      _$SMSTrackingJobEditFromJson(json);

  @JsonKey(name: 'JobType')
  final String? jobType;
  @JsonKey(name: 'PayLoad')
  final SMSTrackingPayLoad? payLoad;
  @JsonKey(name: 'Platform')
  final String? platform;
  @JsonKey(name: 'JobID')
  final String? jobID;
  @JsonKey(name: 'JobName')
  final String? jobName;
  static const fromJsonFactory = _$SMSTrackingJobEditFromJson;
  static const toJsonFactory = _$SMSTrackingJobEditToJson;
  Map<String, dynamic> toJson() => _$SMSTrackingJobEditToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SMSTrackingJobEdit &&
            (identical(other.jobType, jobType) ||
                const DeepCollectionEquality()
                    .equals(other.jobType, jobType)) &&
            (identical(other.payLoad, payLoad) ||
                const DeepCollectionEquality()
                    .equals(other.payLoad, payLoad)) &&
            (identical(other.platform, platform) ||
                const DeepCollectionEquality()
                    .equals(other.platform, platform)) &&
            (identical(other.jobID, jobID) ||
                const DeepCollectionEquality().equals(other.jobID, jobID)) &&
            (identical(other.jobName, jobName) ||
                const DeepCollectionEquality().equals(other.jobName, jobName)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobType) ^
      const DeepCollectionEquality().hash(payLoad) ^
      const DeepCollectionEquality().hash(platform) ^
      const DeepCollectionEquality().hash(jobID) ^
      const DeepCollectionEquality().hash(jobName) ^
      runtimeType.hashCode;
}

extension $SMSTrackingJobEditExtension on SMSTrackingJobEdit {
  SMSTrackingJobEdit copyWith(
      {String? jobType,
      SMSTrackingPayLoad? payLoad,
      String? platform,
      String? jobID,
      String? jobName}) {
    return SMSTrackingJobEdit(
        jobType: jobType ?? this.jobType,
        payLoad: payLoad ?? this.payLoad,
        platform: platform ?? this.platform,
        jobID: jobID ?? this.jobID,
        jobName: jobName ?? this.jobName);
  }
}

@JsonSerializable(explicitToJson: true)
class CallTrackingJobEdit {
  CallTrackingJobEdit({
    this.jobType,
    this.payLoad,
    this.platform,
    this.jobID,
    this.jobName,
  });

  factory CallTrackingJobEdit.fromJson(Map<String, dynamic> json) =>
      _$CallTrackingJobEditFromJson(json);

  @JsonKey(name: 'JobType')
  final String? jobType;
  @JsonKey(name: 'PayLoad')
  final CallTrackingPayLoad? payLoad;
  @JsonKey(name: 'Platform')
  final String? platform;
  @JsonKey(name: 'JobID')
  final String? jobID;
  @JsonKey(name: 'JobName')
  final String? jobName;
  static const fromJsonFactory = _$CallTrackingJobEditFromJson;
  static const toJsonFactory = _$CallTrackingJobEditToJson;
  Map<String, dynamic> toJson() => _$CallTrackingJobEditToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CallTrackingJobEdit &&
            (identical(other.jobType, jobType) ||
                const DeepCollectionEquality()
                    .equals(other.jobType, jobType)) &&
            (identical(other.payLoad, payLoad) ||
                const DeepCollectionEquality()
                    .equals(other.payLoad, payLoad)) &&
            (identical(other.platform, platform) ||
                const DeepCollectionEquality()
                    .equals(other.platform, platform)) &&
            (identical(other.jobID, jobID) ||
                const DeepCollectionEquality().equals(other.jobID, jobID)) &&
            (identical(other.jobName, jobName) ||
                const DeepCollectionEquality().equals(other.jobName, jobName)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobType) ^
      const DeepCollectionEquality().hash(payLoad) ^
      const DeepCollectionEquality().hash(platform) ^
      const DeepCollectionEquality().hash(jobID) ^
      const DeepCollectionEquality().hash(jobName) ^
      runtimeType.hashCode;
}

extension $CallTrackingJobEditExtension on CallTrackingJobEdit {
  CallTrackingJobEdit copyWith(
      {String? jobType,
      CallTrackingPayLoad? payLoad,
      String? platform,
      String? jobID,
      String? jobName}) {
    return CallTrackingJobEdit(
        jobType: jobType ?? this.jobType,
        payLoad: payLoad ?? this.payLoad,
        platform: platform ?? this.platform,
        jobID: jobID ?? this.jobID,
        jobName: jobName ?? this.jobName);
  }
}

@JsonSerializable(explicitToJson: true)
class AppSettingsJobEdit {
  AppSettingsJobEdit({
    this.jobType,
    this.payLoad,
    this.platform,
    this.jobID,
    this.jobName,
  });

  factory AppSettingsJobEdit.fromJson(Map<String, dynamic> json) =>
      _$AppSettingsJobEditFromJson(json);

  @JsonKey(name: 'JobType')
  final String? jobType;
  @JsonKey(name: 'PayLoad')
  final AppSettingsPayLoad? payLoad;
  @JsonKey(name: 'Platform')
  final String? platform;
  @JsonKey(name: 'JobID')
  final String? jobID;
  @JsonKey(name: 'JobName')
  final String? jobName;
  static const fromJsonFactory = _$AppSettingsJobEditFromJson;
  static const toJsonFactory = _$AppSettingsJobEditToJson;
  Map<String, dynamic> toJson() => _$AppSettingsJobEditToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AppSettingsJobEdit &&
            (identical(other.jobType, jobType) ||
                const DeepCollectionEquality()
                    .equals(other.jobType, jobType)) &&
            (identical(other.payLoad, payLoad) ||
                const DeepCollectionEquality()
                    .equals(other.payLoad, payLoad)) &&
            (identical(other.platform, platform) ||
                const DeepCollectionEquality()
                    .equals(other.platform, platform)) &&
            (identical(other.jobID, jobID) ||
                const DeepCollectionEquality().equals(other.jobID, jobID)) &&
            (identical(other.jobName, jobName) ||
                const DeepCollectionEquality().equals(other.jobName, jobName)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobType) ^
      const DeepCollectionEquality().hash(payLoad) ^
      const DeepCollectionEquality().hash(platform) ^
      const DeepCollectionEquality().hash(jobID) ^
      const DeepCollectionEquality().hash(jobName) ^
      runtimeType.hashCode;
}

extension $AppSettingsJobEditExtension on AppSettingsJobEdit {
  AppSettingsJobEdit copyWith(
      {String? jobType,
      AppSettingsPayLoad? payLoad,
      String? platform,
      String? jobID,
      String? jobName}) {
    return AppSettingsJobEdit(
        jobType: jobType ?? this.jobType,
        payLoad: payLoad ?? this.payLoad,
        platform: platform ?? this.platform,
        jobID: jobID ?? this.jobID,
        jobName: jobName ?? this.jobName);
  }
}

@JsonSerializable(explicitToJson: true)
class RemoteWipeJobEdit {
  RemoteWipeJobEdit({
    this.jobType,
    this.payLoad,
    this.platform,
    this.jobID,
    this.jobName,
  });

  factory RemoteWipeJobEdit.fromJson(Map<String, dynamic> json) =>
      _$RemoteWipeJobEditFromJson(json);

  @JsonKey(name: 'JobType')
  final String? jobType;
  @JsonKey(name: 'PayLoad')
  final RemoteWipePayLoad? payLoad;
  @JsonKey(name: 'Platform')
  final String? platform;
  @JsonKey(name: 'JobID')
  final String? jobID;
  @JsonKey(name: 'JobName')
  final String? jobName;
  static const fromJsonFactory = _$RemoteWipeJobEditFromJson;
  static const toJsonFactory = _$RemoteWipeJobEditToJson;
  Map<String, dynamic> toJson() => _$RemoteWipeJobEditToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RemoteWipeJobEdit &&
            (identical(other.jobType, jobType) ||
                const DeepCollectionEquality()
                    .equals(other.jobType, jobType)) &&
            (identical(other.payLoad, payLoad) ||
                const DeepCollectionEquality()
                    .equals(other.payLoad, payLoad)) &&
            (identical(other.platform, platform) ||
                const DeepCollectionEquality()
                    .equals(other.platform, platform)) &&
            (identical(other.jobID, jobID) ||
                const DeepCollectionEquality().equals(other.jobID, jobID)) &&
            (identical(other.jobName, jobName) ||
                const DeepCollectionEquality().equals(other.jobName, jobName)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobType) ^
      const DeepCollectionEquality().hash(payLoad) ^
      const DeepCollectionEquality().hash(platform) ^
      const DeepCollectionEquality().hash(jobID) ^
      const DeepCollectionEquality().hash(jobName) ^
      runtimeType.hashCode;
}

extension $RemoteWipeJobEditExtension on RemoteWipeJobEdit {
  RemoteWipeJobEdit copyWith(
      {String? jobType,
      RemoteWipePayLoad? payLoad,
      String? platform,
      String? jobID,
      String? jobName}) {
    return RemoteWipeJobEdit(
        jobType: jobType ?? this.jobType,
        payLoad: payLoad ?? this.payLoad,
        platform: platform ?? this.platform,
        jobID: jobID ?? this.jobID,
        jobName: jobName ?? this.jobName);
  }
}

@JsonSerializable(explicitToJson: true)
class TextMessageJobEdit {
  TextMessageJobEdit({
    this.jobType,
    this.payLoad,
    this.platform,
    this.jobID,
    this.jobName,
  });

  factory TextMessageJobEdit.fromJson(Map<String, dynamic> json) =>
      _$TextMessageJobEditFromJson(json);

  @JsonKey(name: 'JobType')
  final String? jobType;
  @JsonKey(name: 'PayLoad')
  final TextMessagePayLoad? payLoad;
  @JsonKey(name: 'Platform')
  final String? platform;
  @JsonKey(name: 'JobID')
  final String? jobID;
  @JsonKey(name: 'JobName')
  final String? jobName;
  static const fromJsonFactory = _$TextMessageJobEditFromJson;
  static const toJsonFactory = _$TextMessageJobEditToJson;
  Map<String, dynamic> toJson() => _$TextMessageJobEditToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TextMessageJobEdit &&
            (identical(other.jobType, jobType) ||
                const DeepCollectionEquality()
                    .equals(other.jobType, jobType)) &&
            (identical(other.payLoad, payLoad) ||
                const DeepCollectionEquality()
                    .equals(other.payLoad, payLoad)) &&
            (identical(other.platform, platform) ||
                const DeepCollectionEquality()
                    .equals(other.platform, platform)) &&
            (identical(other.jobID, jobID) ||
                const DeepCollectionEquality().equals(other.jobID, jobID)) &&
            (identical(other.jobName, jobName) ||
                const DeepCollectionEquality().equals(other.jobName, jobName)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobType) ^
      const DeepCollectionEquality().hash(payLoad) ^
      const DeepCollectionEquality().hash(platform) ^
      const DeepCollectionEquality().hash(jobID) ^
      const DeepCollectionEquality().hash(jobName) ^
      runtimeType.hashCode;
}

extension $TextMessageJobEditExtension on TextMessageJobEdit {
  TextMessageJobEdit copyWith(
      {String? jobType,
      TextMessagePayLoad? payLoad,
      String? platform,
      String? jobID,
      String? jobName}) {
    return TextMessageJobEdit(
        jobType: jobType ?? this.jobType,
        payLoad: payLoad ?? this.payLoad,
        platform: platform ?? this.platform,
        jobID: jobID ?? this.jobID,
        jobName: jobName ?? this.jobName);
  }
}

@JsonSerializable(explicitToJson: true)
class LocationTrackingJobEdit {
  LocationTrackingJobEdit({
    this.jobType,
    this.payLoad,
    this.platform,
    this.jobID,
    this.jobName,
  });

  factory LocationTrackingJobEdit.fromJson(Map<String, dynamic> json) =>
      _$LocationTrackingJobEditFromJson(json);

  @JsonKey(name: 'JobType')
  final String? jobType;
  @JsonKey(name: 'PayLoad')
  final LocationTrackingPayLoad? payLoad;
  @JsonKey(name: 'Platform')
  final String? platform;
  @JsonKey(name: 'JobID')
  final String? jobID;
  @JsonKey(name: 'JobName')
  final String? jobName;
  static const fromJsonFactory = _$LocationTrackingJobEditFromJson;
  static const toJsonFactory = _$LocationTrackingJobEditToJson;
  Map<String, dynamic> toJson() => _$LocationTrackingJobEditToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LocationTrackingJobEdit &&
            (identical(other.jobType, jobType) ||
                const DeepCollectionEquality()
                    .equals(other.jobType, jobType)) &&
            (identical(other.payLoad, payLoad) ||
                const DeepCollectionEquality()
                    .equals(other.payLoad, payLoad)) &&
            (identical(other.platform, platform) ||
                const DeepCollectionEquality()
                    .equals(other.platform, platform)) &&
            (identical(other.jobID, jobID) ||
                const DeepCollectionEquality().equals(other.jobID, jobID)) &&
            (identical(other.jobName, jobName) ||
                const DeepCollectionEquality().equals(other.jobName, jobName)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobType) ^
      const DeepCollectionEquality().hash(payLoad) ^
      const DeepCollectionEquality().hash(platform) ^
      const DeepCollectionEquality().hash(jobID) ^
      const DeepCollectionEquality().hash(jobName) ^
      runtimeType.hashCode;
}

extension $LocationTrackingJobEditExtension on LocationTrackingJobEdit {
  LocationTrackingJobEdit copyWith(
      {String? jobType,
      LocationTrackingPayLoad? payLoad,
      String? platform,
      String? jobID,
      String? jobName}) {
    return LocationTrackingJobEdit(
        jobType: jobType ?? this.jobType,
        payLoad: payLoad ?? this.payLoad,
        platform: platform ?? this.platform,
        jobID: jobID ?? this.jobID,
        jobName: jobName ?? this.jobName);
  }
}

@JsonSerializable(explicitToJson: true)
class GeoFencingJobEdit {
  GeoFencingJobEdit({
    this.jobType,
    this.payLoad,
    this.platform,
    this.jobID,
    this.jobName,
  });

  factory GeoFencingJobEdit.fromJson(Map<String, dynamic> json) =>
      _$GeoFencingJobEditFromJson(json);

  @JsonKey(name: 'JobType')
  final String? jobType;
  @JsonKey(name: 'PayLoad')
  final GeoFencingPayLoad? payLoad;
  @JsonKey(name: 'Platform')
  final String? platform;
  @JsonKey(name: 'JobID')
  final String? jobID;
  @JsonKey(name: 'JobName')
  final String? jobName;
  static const fromJsonFactory = _$GeoFencingJobEditFromJson;
  static const toJsonFactory = _$GeoFencingJobEditToJson;
  Map<String, dynamic> toJson() => _$GeoFencingJobEditToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GeoFencingJobEdit &&
            (identical(other.jobType, jobType) ||
                const DeepCollectionEquality()
                    .equals(other.jobType, jobType)) &&
            (identical(other.payLoad, payLoad) ||
                const DeepCollectionEquality()
                    .equals(other.payLoad, payLoad)) &&
            (identical(other.platform, platform) ||
                const DeepCollectionEquality()
                    .equals(other.platform, platform)) &&
            (identical(other.jobID, jobID) ||
                const DeepCollectionEquality().equals(other.jobID, jobID)) &&
            (identical(other.jobName, jobName) ||
                const DeepCollectionEquality().equals(other.jobName, jobName)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobType) ^
      const DeepCollectionEquality().hash(payLoad) ^
      const DeepCollectionEquality().hash(platform) ^
      const DeepCollectionEquality().hash(jobID) ^
      const DeepCollectionEquality().hash(jobName) ^
      runtimeType.hashCode;
}

extension $GeoFencingJobEditExtension on GeoFencingJobEdit {
  GeoFencingJobEdit copyWith(
      {String? jobType,
      GeoFencingPayLoad? payLoad,
      String? platform,
      String? jobID,
      String? jobName}) {
    return GeoFencingJobEdit(
        jobType: jobType ?? this.jobType,
        payLoad: payLoad ?? this.payLoad,
        platform: platform ?? this.platform,
        jobID: jobID ?? this.jobID,
        jobName: jobName ?? this.jobName);
  }
}

@JsonSerializable(explicitToJson: true)
class TimeFencingJobEdit {
  TimeFencingJobEdit({
    this.jobType,
    this.payLoad,
    this.platform,
    this.jobID,
    this.jobName,
  });

  factory TimeFencingJobEdit.fromJson(Map<String, dynamic> json) =>
      _$TimeFencingJobEditFromJson(json);

  @JsonKey(name: 'JobType')
  final String? jobType;
  @JsonKey(name: 'PayLoad')
  final TimeFencingPayLoad? payLoad;
  @JsonKey(name: 'Platform')
  final String? platform;
  @JsonKey(name: 'JobID')
  final String? jobID;
  @JsonKey(name: 'JobName')
  final String? jobName;
  static const fromJsonFactory = _$TimeFencingJobEditFromJson;
  static const toJsonFactory = _$TimeFencingJobEditToJson;
  Map<String, dynamic> toJson() => _$TimeFencingJobEditToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TimeFencingJobEdit &&
            (identical(other.jobType, jobType) ||
                const DeepCollectionEquality()
                    .equals(other.jobType, jobType)) &&
            (identical(other.payLoad, payLoad) ||
                const DeepCollectionEquality()
                    .equals(other.payLoad, payLoad)) &&
            (identical(other.platform, platform) ||
                const DeepCollectionEquality()
                    .equals(other.platform, platform)) &&
            (identical(other.jobID, jobID) ||
                const DeepCollectionEquality().equals(other.jobID, jobID)) &&
            (identical(other.jobName, jobName) ||
                const DeepCollectionEquality().equals(other.jobName, jobName)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobType) ^
      const DeepCollectionEquality().hash(payLoad) ^
      const DeepCollectionEquality().hash(platform) ^
      const DeepCollectionEquality().hash(jobID) ^
      const DeepCollectionEquality().hash(jobName) ^
      runtimeType.hashCode;
}

extension $TimeFencingJobEditExtension on TimeFencingJobEdit {
  TimeFencingJobEdit copyWith(
      {String? jobType,
      TimeFencingPayLoad? payLoad,
      String? platform,
      String? jobID,
      String? jobName}) {
    return TimeFencingJobEdit(
        jobType: jobType ?? this.jobType,
        payLoad: payLoad ?? this.payLoad,
        platform: platform ?? this.platform,
        jobID: jobID ?? this.jobID,
        jobName: jobName ?? this.jobName);
  }
}

@JsonSerializable(explicitToJson: true)
class NetworkFencingJobEdit {
  NetworkFencingJobEdit({
    this.jobType,
    this.payLoad,
    this.platform,
    this.jobID,
    this.jobName,
  });

  factory NetworkFencingJobEdit.fromJson(Map<String, dynamic> json) =>
      _$NetworkFencingJobEditFromJson(json);

  @JsonKey(name: 'JobType')
  final String? jobType;
  @JsonKey(name: 'PayLoad')
  final NetworkFencingPayLoad? payLoad;
  @JsonKey(name: 'Platform')
  final String? platform;
  @JsonKey(name: 'JobID')
  final String? jobID;
  @JsonKey(name: 'JobName')
  final String? jobName;
  static const fromJsonFactory = _$NetworkFencingJobEditFromJson;
  static const toJsonFactory = _$NetworkFencingJobEditToJson;
  Map<String, dynamic> toJson() => _$NetworkFencingJobEditToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NetworkFencingJobEdit &&
            (identical(other.jobType, jobType) ||
                const DeepCollectionEquality()
                    .equals(other.jobType, jobType)) &&
            (identical(other.payLoad, payLoad) ||
                const DeepCollectionEquality()
                    .equals(other.payLoad, payLoad)) &&
            (identical(other.platform, platform) ||
                const DeepCollectionEquality()
                    .equals(other.platform, platform)) &&
            (identical(other.jobID, jobID) ||
                const DeepCollectionEquality().equals(other.jobID, jobID)) &&
            (identical(other.jobName, jobName) ||
                const DeepCollectionEquality().equals(other.jobName, jobName)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobType) ^
      const DeepCollectionEquality().hash(payLoad) ^
      const DeepCollectionEquality().hash(platform) ^
      const DeepCollectionEquality().hash(jobID) ^
      const DeepCollectionEquality().hash(jobName) ^
      runtimeType.hashCode;
}

extension $NetworkFencingJobEditExtension on NetworkFencingJobEdit {
  NetworkFencingJobEdit copyWith(
      {String? jobType,
      NetworkFencingPayLoad? payLoad,
      String? platform,
      String? jobID,
      String? jobName}) {
    return NetworkFencingJobEdit(
        jobType: jobType ?? this.jobType,
        payLoad: payLoad ?? this.payLoad,
        platform: platform ?? this.platform,
        jobID: jobID ?? this.jobID,
        jobName: jobName ?? this.jobName);
  }
}

@JsonSerializable(explicitToJson: true)
class CompliancePolicyJobEdit {
  CompliancePolicyJobEdit({
    this.jobType,
    this.payLoad,
    this.platform,
    this.jobID,
    this.jobName,
  });

  factory CompliancePolicyJobEdit.fromJson(Map<String, dynamic> json) =>
      _$CompliancePolicyJobEditFromJson(json);

  @JsonKey(name: 'JobType')
  final String? jobType;
  @JsonKey(name: 'PayLoad')
  final CompliancePolicyPayLoad? payLoad;
  @JsonKey(name: 'Platform')
  final String? platform;
  @JsonKey(name: 'JobID')
  final String? jobID;
  @JsonKey(name: 'JobName')
  final String? jobName;
  static const fromJsonFactory = _$CompliancePolicyJobEditFromJson;
  static const toJsonFactory = _$CompliancePolicyJobEditToJson;
  Map<String, dynamic> toJson() => _$CompliancePolicyJobEditToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CompliancePolicyJobEdit &&
            (identical(other.jobType, jobType) ||
                const DeepCollectionEquality()
                    .equals(other.jobType, jobType)) &&
            (identical(other.payLoad, payLoad) ||
                const DeepCollectionEquality()
                    .equals(other.payLoad, payLoad)) &&
            (identical(other.platform, platform) ||
                const DeepCollectionEquality()
                    .equals(other.platform, platform)) &&
            (identical(other.jobID, jobID) ||
                const DeepCollectionEquality().equals(other.jobID, jobID)) &&
            (identical(other.jobName, jobName) ||
                const DeepCollectionEquality().equals(other.jobName, jobName)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobType) ^
      const DeepCollectionEquality().hash(payLoad) ^
      const DeepCollectionEquality().hash(platform) ^
      const DeepCollectionEquality().hash(jobID) ^
      const DeepCollectionEquality().hash(jobName) ^
      runtimeType.hashCode;
}

extension $CompliancePolicyJobEditExtension on CompliancePolicyJobEdit {
  CompliancePolicyJobEdit copyWith(
      {String? jobType,
      CompliancePolicyPayLoad? payLoad,
      String? platform,
      String? jobID,
      String? jobName}) {
    return CompliancePolicyJobEdit(
        jobType: jobType ?? this.jobType,
        payLoad: payLoad ?? this.payLoad,
        platform: platform ?? this.platform,
        jobID: jobID ?? this.jobID,
        jobName: jobName ?? this.jobName);
  }
}

@JsonSerializable(explicitToJson: true)
class NixAgentSettingJobEdit {
  NixAgentSettingJobEdit({
    this.jobType,
    this.payLoad,
    this.platform,
    this.jobID,
    this.jobName,
  });

  factory NixAgentSettingJobEdit.fromJson(Map<String, dynamic> json) =>
      _$NixAgentSettingJobEditFromJson(json);

  @JsonKey(name: 'JobType')
  final String? jobType;
  @JsonKey(name: 'PayLoad')
  final NixAgentSettingPayLoad? payLoad;
  @JsonKey(name: 'Platform')
  final String? platform;
  @JsonKey(name: 'JobID')
  final String? jobID;
  @JsonKey(name: 'JobName')
  final String? jobName;
  static const fromJsonFactory = _$NixAgentSettingJobEditFromJson;
  static const toJsonFactory = _$NixAgentSettingJobEditToJson;
  Map<String, dynamic> toJson() => _$NixAgentSettingJobEditToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NixAgentSettingJobEdit &&
            (identical(other.jobType, jobType) ||
                const DeepCollectionEquality()
                    .equals(other.jobType, jobType)) &&
            (identical(other.payLoad, payLoad) ||
                const DeepCollectionEquality()
                    .equals(other.payLoad, payLoad)) &&
            (identical(other.platform, platform) ||
                const DeepCollectionEquality()
                    .equals(other.platform, platform)) &&
            (identical(other.jobID, jobID) ||
                const DeepCollectionEquality().equals(other.jobID, jobID)) &&
            (identical(other.jobName, jobName) ||
                const DeepCollectionEquality().equals(other.jobName, jobName)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobType) ^
      const DeepCollectionEquality().hash(payLoad) ^
      const DeepCollectionEquality().hash(platform) ^
      const DeepCollectionEquality().hash(jobID) ^
      const DeepCollectionEquality().hash(jobName) ^
      runtimeType.hashCode;
}

extension $NixAgentSettingJobEditExtension on NixAgentSettingJobEdit {
  NixAgentSettingJobEdit copyWith(
      {String? jobType,
      NixAgentSettingPayLoad? payLoad,
      String? platform,
      String? jobID,
      String? jobName}) {
    return NixAgentSettingJobEdit(
        jobType: jobType ?? this.jobType,
        payLoad: payLoad ?? this.payLoad,
        platform: platform ?? this.platform,
        jobID: jobID ?? this.jobID,
        jobName: jobName ?? this.jobName);
  }
}

@JsonSerializable(explicitToJson: true)
class RunScriptJobEdit {
  RunScriptJobEdit({
    this.jobType,
    this.platform,
    this.payLoad,
    this.jobID,
    this.jobName,
  });

  factory RunScriptJobEdit.fromJson(Map<String, dynamic> json) =>
      _$RunScriptJobEditFromJson(json);

  @JsonKey(name: 'JobType')
  final String? jobType;
  @JsonKey(name: 'Platform')
  final String? platform;
  @JsonKey(name: 'PayLoad')
  final RunScriptPayLoad? payLoad;
  @JsonKey(name: 'JobID')
  final String? jobID;
  @JsonKey(name: 'JobName')
  final String? jobName;
  static const fromJsonFactory = _$RunScriptJobEditFromJson;
  static const toJsonFactory = _$RunScriptJobEditToJson;
  Map<String, dynamic> toJson() => _$RunScriptJobEditToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RunScriptJobEdit &&
            (identical(other.jobType, jobType) ||
                const DeepCollectionEquality()
                    .equals(other.jobType, jobType)) &&
            (identical(other.platform, platform) ||
                const DeepCollectionEquality()
                    .equals(other.platform, platform)) &&
            (identical(other.payLoad, payLoad) ||
                const DeepCollectionEquality()
                    .equals(other.payLoad, payLoad)) &&
            (identical(other.jobID, jobID) ||
                const DeepCollectionEquality().equals(other.jobID, jobID)) &&
            (identical(other.jobName, jobName) ||
                const DeepCollectionEquality().equals(other.jobName, jobName)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobType) ^
      const DeepCollectionEquality().hash(platform) ^
      const DeepCollectionEquality().hash(payLoad) ^
      const DeepCollectionEquality().hash(jobID) ^
      const DeepCollectionEquality().hash(jobName) ^
      runtimeType.hashCode;
}

extension $RunScriptJobEditExtension on RunScriptJobEdit {
  RunScriptJobEdit copyWith(
      {String? jobType,
      String? platform,
      RunScriptPayLoad? payLoad,
      String? jobID,
      String? jobName}) {
    return RunScriptJobEdit(
        jobType: jobType ?? this.jobType,
        platform: platform ?? this.platform,
        payLoad: payLoad ?? this.payLoad,
        jobID: jobID ?? this.jobID,
        jobName: jobName ?? this.jobName);
  }
}

@JsonSerializable(explicitToJson: true)
class RemoteBuzzJobEdit {
  RemoteBuzzJobEdit({
    this.jobType,
    this.payLoad,
    this.platform,
    this.jobID,
    this.jobName,
  });

  factory RemoteBuzzJobEdit.fromJson(Map<String, dynamic> json) =>
      _$RemoteBuzzJobEditFromJson(json);

  @JsonKey(name: 'JobType')
  final String? jobType;
  @JsonKey(name: 'PayLoad')
  final RemoteBuzzPayLoad? payLoad;
  @JsonKey(name: 'Platform')
  final String? platform;
  @JsonKey(name: 'JobID')
  final String? jobID;
  @JsonKey(name: 'JobName')
  final String? jobName;
  static const fromJsonFactory = _$RemoteBuzzJobEditFromJson;
  static const toJsonFactory = _$RemoteBuzzJobEditToJson;
  Map<String, dynamic> toJson() => _$RemoteBuzzJobEditToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RemoteBuzzJobEdit &&
            (identical(other.jobType, jobType) ||
                const DeepCollectionEquality()
                    .equals(other.jobType, jobType)) &&
            (identical(other.payLoad, payLoad) ||
                const DeepCollectionEquality()
                    .equals(other.payLoad, payLoad)) &&
            (identical(other.platform, platform) ||
                const DeepCollectionEquality()
                    .equals(other.platform, platform)) &&
            (identical(other.jobID, jobID) ||
                const DeepCollectionEquality().equals(other.jobID, jobID)) &&
            (identical(other.jobName, jobName) ||
                const DeepCollectionEquality().equals(other.jobName, jobName)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobType) ^
      const DeepCollectionEquality().hash(payLoad) ^
      const DeepCollectionEquality().hash(platform) ^
      const DeepCollectionEquality().hash(jobID) ^
      const DeepCollectionEquality().hash(jobName) ^
      runtimeType.hashCode;
}

extension $RemoteBuzzJobEditExtension on RemoteBuzzJobEdit {
  RemoteBuzzJobEdit copyWith(
      {String? jobType,
      RemoteBuzzPayLoad? payLoad,
      String? platform,
      String? jobID,
      String? jobName}) {
    return RemoteBuzzJobEdit(
        jobType: jobType ?? this.jobType,
        payLoad: payLoad ?? this.payLoad,
        platform: platform ?? this.platform,
        jobID: jobID ?? this.jobID,
        jobName: jobName ?? this.jobName);
  }
}

@JsonSerializable(explicitToJson: true)
class SecurityPolicyJobEdit {
  SecurityPolicyJobEdit({
    this.jobType,
    this.payLoad,
    this.platform,
    this.jobID,
    this.jobName,
  });

  factory SecurityPolicyJobEdit.fromJson(Map<String, dynamic> json) =>
      _$SecurityPolicyJobEditFromJson(json);

  @JsonKey(name: 'JobType')
  final String? jobType;
  @JsonKey(name: 'PayLoad')
  final SecurityPolicyPayLoad? payLoad;
  @JsonKey(name: 'Platform')
  final String? platform;
  @JsonKey(name: 'JobID')
  final String? jobID;
  @JsonKey(name: 'JobName')
  final String? jobName;
  static const fromJsonFactory = _$SecurityPolicyJobEditFromJson;
  static const toJsonFactory = _$SecurityPolicyJobEditToJson;
  Map<String, dynamic> toJson() => _$SecurityPolicyJobEditToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SecurityPolicyJobEdit &&
            (identical(other.jobType, jobType) ||
                const DeepCollectionEquality()
                    .equals(other.jobType, jobType)) &&
            (identical(other.payLoad, payLoad) ||
                const DeepCollectionEquality()
                    .equals(other.payLoad, payLoad)) &&
            (identical(other.platform, platform) ||
                const DeepCollectionEquality()
                    .equals(other.platform, platform)) &&
            (identical(other.jobID, jobID) ||
                const DeepCollectionEquality().equals(other.jobID, jobID)) &&
            (identical(other.jobName, jobName) ||
                const DeepCollectionEquality().equals(other.jobName, jobName)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobType) ^
      const DeepCollectionEquality().hash(payLoad) ^
      const DeepCollectionEquality().hash(platform) ^
      const DeepCollectionEquality().hash(jobID) ^
      const DeepCollectionEquality().hash(jobName) ^
      runtimeType.hashCode;
}

extension $SecurityPolicyJobEditExtension on SecurityPolicyJobEdit {
  SecurityPolicyJobEdit copyWith(
      {String? jobType,
      SecurityPolicyPayLoad? payLoad,
      String? platform,
      String? jobID,
      String? jobName}) {
    return SecurityPolicyJobEdit(
        jobType: jobType ?? this.jobType,
        payLoad: payLoad ?? this.payLoad,
        platform: platform ?? this.platform,
        jobID: jobID ?? this.jobID,
        jobName: jobName ?? this.jobName);
  }
}

@JsonSerializable(explicitToJson: true)
class CompositeJobEdit {
  CompositeJobEdit({
    this.jobType,
    this.payLoad,
    this.platform,
    this.jobID,
    this.jobName,
  });

  factory CompositeJobEdit.fromJson(Map<String, dynamic> json) =>
      _$CompositeJobEditFromJson(json);

  @JsonKey(name: 'JobType')
  final String? jobType;
  @JsonKey(name: 'PayLoad')
  final CompositePayLoad? payLoad;
  @JsonKey(name: 'Platform')
  final String? platform;
  @JsonKey(name: 'JobID')
  final String? jobID;
  @JsonKey(name: 'JobName')
  final String? jobName;
  static const fromJsonFactory = _$CompositeJobEditFromJson;
  static const toJsonFactory = _$CompositeJobEditToJson;
  Map<String, dynamic> toJson() => _$CompositeJobEditToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CompositeJobEdit &&
            (identical(other.jobType, jobType) ||
                const DeepCollectionEquality()
                    .equals(other.jobType, jobType)) &&
            (identical(other.payLoad, payLoad) ||
                const DeepCollectionEquality()
                    .equals(other.payLoad, payLoad)) &&
            (identical(other.platform, platform) ||
                const DeepCollectionEquality()
                    .equals(other.platform, platform)) &&
            (identical(other.jobID, jobID) ||
                const DeepCollectionEquality().equals(other.jobID, jobID)) &&
            (identical(other.jobName, jobName) ||
                const DeepCollectionEquality().equals(other.jobName, jobName)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobType) ^
      const DeepCollectionEquality().hash(payLoad) ^
      const DeepCollectionEquality().hash(platform) ^
      const DeepCollectionEquality().hash(jobID) ^
      const DeepCollectionEquality().hash(jobName) ^
      runtimeType.hashCode;
}

extension $CompositeJobEditExtension on CompositeJobEdit {
  CompositeJobEdit copyWith(
      {String? jobType,
      CompositePayLoad? payLoad,
      String? platform,
      String? jobID,
      String? jobName}) {
    return CompositeJobEdit(
        jobType: jobType ?? this.jobType,
        payLoad: payLoad ?? this.payLoad,
        platform: platform ?? this.platform,
        jobID: jobID ?? this.jobID,
        jobName: jobName ?? this.jobName);
  }
}

@JsonSerializable(explicitToJson: true)
class LockDeviceJobEdit {
  LockDeviceJobEdit({
    this.jobType,
    this.payLoad,
    this.platform,
    this.jobID,
    this.jobName,
  });

  factory LockDeviceJobEdit.fromJson(Map<String, dynamic> json) =>
      _$LockDeviceJobEditFromJson(json);

  @JsonKey(name: 'JobType')
  final String? jobType;
  @JsonKey(name: 'PayLoad')
  final LockDevicePayLoad? payLoad;
  @JsonKey(name: 'Platform')
  final String? platform;
  @JsonKey(name: 'JobID')
  final String? jobID;
  @JsonKey(name: 'JobName')
  final String? jobName;
  static const fromJsonFactory = _$LockDeviceJobEditFromJson;
  static const toJsonFactory = _$LockDeviceJobEditToJson;
  Map<String, dynamic> toJson() => _$LockDeviceJobEditToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LockDeviceJobEdit &&
            (identical(other.jobType, jobType) ||
                const DeepCollectionEquality()
                    .equals(other.jobType, jobType)) &&
            (identical(other.payLoad, payLoad) ||
                const DeepCollectionEquality()
                    .equals(other.payLoad, payLoad)) &&
            (identical(other.platform, platform) ||
                const DeepCollectionEquality()
                    .equals(other.platform, platform)) &&
            (identical(other.jobID, jobID) ||
                const DeepCollectionEquality().equals(other.jobID, jobID)) &&
            (identical(other.jobName, jobName) ||
                const DeepCollectionEquality().equals(other.jobName, jobName)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobType) ^
      const DeepCollectionEquality().hash(payLoad) ^
      const DeepCollectionEquality().hash(platform) ^
      const DeepCollectionEquality().hash(jobID) ^
      const DeepCollectionEquality().hash(jobName) ^
      runtimeType.hashCode;
}

extension $LockDeviceJobEditExtension on LockDeviceJobEdit {
  LockDeviceJobEdit copyWith(
      {String? jobType,
      LockDevicePayLoad? payLoad,
      String? platform,
      String? jobID,
      String? jobName}) {
    return LockDeviceJobEdit(
        jobType: jobType ?? this.jobType,
        payLoad: payLoad ?? this.payLoad,
        platform: platform ?? this.platform,
        jobID: jobID ?? this.jobID,
        jobName: jobName ?? this.jobName);
  }
}

@JsonSerializable(explicitToJson: true)
class AndroidWorkProfileJob {
  AndroidWorkProfileJob({
    this.jobType,
    this.payLoad,
    this.platform,
    this.jobName,
    this.folderId,
  });

  factory AndroidWorkProfileJob.fromJson(Map<String, dynamic> json) =>
      _$AndroidWorkProfileJobFromJson(json);

  @JsonKey(name: 'JobType')
  final String? jobType;
  @JsonKey(name: 'PayLoad')
  final AndroidWorkProfilePayLoad? payLoad;
  @JsonKey(name: 'Platform')
  final String? platform;
  @JsonKey(name: 'JobName')
  final String? jobName;
  @JsonKey(name: 'FolderId')
  final String? folderId;
  static const fromJsonFactory = _$AndroidWorkProfileJobFromJson;
  static const toJsonFactory = _$AndroidWorkProfileJobToJson;
  Map<String, dynamic> toJson() => _$AndroidWorkProfileJobToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AndroidWorkProfileJob &&
            (identical(other.jobType, jobType) ||
                const DeepCollectionEquality()
                    .equals(other.jobType, jobType)) &&
            (identical(other.payLoad, payLoad) ||
                const DeepCollectionEquality()
                    .equals(other.payLoad, payLoad)) &&
            (identical(other.platform, platform) ||
                const DeepCollectionEquality()
                    .equals(other.platform, platform)) &&
            (identical(other.jobName, jobName) ||
                const DeepCollectionEquality()
                    .equals(other.jobName, jobName)) &&
            (identical(other.folderId, folderId) ||
                const DeepCollectionEquality()
                    .equals(other.folderId, folderId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobType) ^
      const DeepCollectionEquality().hash(payLoad) ^
      const DeepCollectionEquality().hash(platform) ^
      const DeepCollectionEquality().hash(jobName) ^
      const DeepCollectionEquality().hash(folderId) ^
      runtimeType.hashCode;
}

extension $AndroidWorkProfileJobExtension on AndroidWorkProfileJob {
  AndroidWorkProfileJob copyWith(
      {String? jobType,
      AndroidWorkProfilePayLoad? payLoad,
      String? platform,
      String? jobName,
      String? folderId}) {
    return AndroidWorkProfileJob(
        jobType: jobType ?? this.jobType,
        payLoad: payLoad ?? this.payLoad,
        platform: platform ?? this.platform,
        jobName: jobName ?? this.jobName,
        folderId: folderId ?? this.folderId);
  }
}

typedef AndroidWorkProfilePayLoad = List<AndroidWorkProfilePayLoad$Item>;

@JsonSerializable(explicitToJson: true)
class AndroidWorkProfilePayLoad$Item {
  AndroidWorkProfilePayLoad$Item({
    this.applicationPolicy,
    this.passwordPolicy,
    this.systemSettings,
    this.enterpriseAppStore,
    this.caCertificatePolicy,
    this.mailConfigurationPolicy,
    this.globalProxy,
    this.vpnConfig,
    this.mobileThreatPrevention,
    this.wifiConfigurationPolicy,
    this.astromailconfigurationPolicy,
    this.fileSharingPolicy,
    this.useAFW,
  });

  factory AndroidWorkProfilePayLoad$Item.fromJson(Map<String, dynamic> json) =>
      _$AndroidWorkProfilePayLoad$ItemFromJson(json);

  @JsonKey(name: 'applicationPolicy')
  final AndroidWorkProfilePayLoad$Item$ApplicationPolicy? applicationPolicy;
  @JsonKey(name: 'passwordPolicy')
  final AndroidWorkProfilePayLoad$Item$PasswordPolicy? passwordPolicy;
  @JsonKey(name: 'systemSettings')
  final AndroidWorkProfilePayLoad$Item$SystemSettings? systemSettings;
  @JsonKey(name: 'enterpriseAppStore')
  final AndroidWorkProfilePayLoad$Item$EnterpriseAppStore? enterpriseAppStore;
  @JsonKey(name: 'caCertificatePolicy')
  final AndroidWorkProfilePayLoad$Item$CaCertificatePolicy? caCertificatePolicy;
  @JsonKey(name: 'mailConfigurationPolicy')
  final AndroidWorkProfilePayLoad$Item$MailConfigurationPolicy?
      mailConfigurationPolicy;
  @JsonKey(name: 'globalProxy')
  final AndroidWorkProfilePayLoad$Item$GlobalProxy? globalProxy;
  @JsonKey(name: 'vpnConfig')
  final AndroidWorkProfilePayLoad$Item$VpnConfig? vpnConfig;
  @JsonKey(name: 'mobileThreatPrevention')
  final AndroidWorkProfilePayLoad$Item$MobileThreatPrevention?
      mobileThreatPrevention;
  @JsonKey(name: 'wifiConfigurationPolicy')
  final AndroidWorkProfilePayLoad$Item$WifiConfigurationPolicy?
      wifiConfigurationPolicy;
  @JsonKey(name: 'astromailconfigurationPolicy')
  final AndroidWorkProfilePayLoad$Item$AstromailconfigurationPolicy?
      astromailconfigurationPolicy;
  @JsonKey(name: 'fileSharingPolicy')
  final AndroidWorkProfilePayLoad$Item$FileSharingPolicy? fileSharingPolicy;
  @JsonKey(name: 'UseAFW')
  final bool? useAFW;
  static const fromJsonFactory = _$AndroidWorkProfilePayLoad$ItemFromJson;
  static const toJsonFactory = _$AndroidWorkProfilePayLoad$ItemToJson;
  Map<String, dynamic> toJson() => _$AndroidWorkProfilePayLoad$ItemToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AndroidWorkProfilePayLoad$Item &&
            (identical(other.applicationPolicy, applicationPolicy) ||
                const DeepCollectionEquality()
                    .equals(other.applicationPolicy, applicationPolicy)) &&
            (identical(other.passwordPolicy, passwordPolicy) ||
                const DeepCollectionEquality()
                    .equals(other.passwordPolicy, passwordPolicy)) &&
            (identical(other.systemSettings, systemSettings) ||
                const DeepCollectionEquality()
                    .equals(other.systemSettings, systemSettings)) &&
            (identical(other.enterpriseAppStore, enterpriseAppStore) ||
                const DeepCollectionEquality()
                    .equals(other.enterpriseAppStore, enterpriseAppStore)) &&
            (identical(other.caCertificatePolicy, caCertificatePolicy) ||
                const DeepCollectionEquality()
                    .equals(other.caCertificatePolicy, caCertificatePolicy)) &&
            (identical(
                    other.mailConfigurationPolicy, mailConfigurationPolicy) ||
                const DeepCollectionEquality().equals(
                    other.mailConfigurationPolicy, mailConfigurationPolicy)) &&
            (identical(other.globalProxy, globalProxy) ||
                const DeepCollectionEquality()
                    .equals(other.globalProxy, globalProxy)) &&
            (identical(other.vpnConfig, vpnConfig) ||
                const DeepCollectionEquality()
                    .equals(other.vpnConfig, vpnConfig)) &&
            (identical(other.mobileThreatPrevention, mobileThreatPrevention) ||
                const DeepCollectionEquality().equals(
                    other.mobileThreatPrevention, mobileThreatPrevention)) &&
            (identical(
                    other.wifiConfigurationPolicy, wifiConfigurationPolicy) ||
                const DeepCollectionEquality().equals(
                    other.wifiConfigurationPolicy, wifiConfigurationPolicy)) &&
            (identical(other.astromailconfigurationPolicy,
                    astromailconfigurationPolicy) ||
                const DeepCollectionEquality().equals(
                    other.astromailconfigurationPolicy,
                    astromailconfigurationPolicy)) &&
            (identical(other.fileSharingPolicy, fileSharingPolicy) ||
                const DeepCollectionEquality()
                    .equals(other.fileSharingPolicy, fileSharingPolicy)) &&
            (identical(other.useAFW, useAFW) ||
                const DeepCollectionEquality().equals(other.useAFW, useAFW)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(applicationPolicy) ^
      const DeepCollectionEquality().hash(passwordPolicy) ^
      const DeepCollectionEquality().hash(systemSettings) ^
      const DeepCollectionEquality().hash(enterpriseAppStore) ^
      const DeepCollectionEquality().hash(caCertificatePolicy) ^
      const DeepCollectionEquality().hash(mailConfigurationPolicy) ^
      const DeepCollectionEquality().hash(globalProxy) ^
      const DeepCollectionEquality().hash(vpnConfig) ^
      const DeepCollectionEquality().hash(mobileThreatPrevention) ^
      const DeepCollectionEquality().hash(wifiConfigurationPolicy) ^
      const DeepCollectionEquality().hash(astromailconfigurationPolicy) ^
      const DeepCollectionEquality().hash(fileSharingPolicy) ^
      const DeepCollectionEquality().hash(useAFW) ^
      runtimeType.hashCode;
}

extension $AndroidWorkProfilePayLoad$ItemExtension
    on AndroidWorkProfilePayLoad$Item {
  AndroidWorkProfilePayLoad$Item copyWith(
      {AndroidWorkProfilePayLoad$Item$ApplicationPolicy? applicationPolicy,
      AndroidWorkProfilePayLoad$Item$PasswordPolicy? passwordPolicy,
      AndroidWorkProfilePayLoad$Item$SystemSettings? systemSettings,
      AndroidWorkProfilePayLoad$Item$EnterpriseAppStore? enterpriseAppStore,
      AndroidWorkProfilePayLoad$Item$CaCertificatePolicy? caCertificatePolicy,
      AndroidWorkProfilePayLoad$Item$MailConfigurationPolicy?
          mailConfigurationPolicy,
      AndroidWorkProfilePayLoad$Item$GlobalProxy? globalProxy,
      AndroidWorkProfilePayLoad$Item$VpnConfig? vpnConfig,
      AndroidWorkProfilePayLoad$Item$MobileThreatPrevention?
          mobileThreatPrevention,
      AndroidWorkProfilePayLoad$Item$WifiConfigurationPolicy?
          wifiConfigurationPolicy,
      AndroidWorkProfilePayLoad$Item$AstromailconfigurationPolicy?
          astromailconfigurationPolicy,
      AndroidWorkProfilePayLoad$Item$FileSharingPolicy? fileSharingPolicy,
      bool? useAFW}) {
    return AndroidWorkProfilePayLoad$Item(
        applicationPolicy: applicationPolicy ?? this.applicationPolicy,
        passwordPolicy: passwordPolicy ?? this.passwordPolicy,
        systemSettings: systemSettings ?? this.systemSettings,
        enterpriseAppStore: enterpriseAppStore ?? this.enterpriseAppStore,
        caCertificatePolicy: caCertificatePolicy ?? this.caCertificatePolicy,
        mailConfigurationPolicy:
            mailConfigurationPolicy ?? this.mailConfigurationPolicy,
        globalProxy: globalProxy ?? this.globalProxy,
        vpnConfig: vpnConfig ?? this.vpnConfig,
        mobileThreatPrevention:
            mobileThreatPrevention ?? this.mobileThreatPrevention,
        wifiConfigurationPolicy:
            wifiConfigurationPolicy ?? this.wifiConfigurationPolicy,
        astromailconfigurationPolicy:
            astromailconfigurationPolicy ?? this.astromailconfigurationPolicy,
        fileSharingPolicy: fileSharingPolicy ?? this.fileSharingPolicy,
        useAFW: useAFW ?? this.useAFW);
  }
}

typedef LastLocationModel$Location = List<LastLocationModel$Location$Item>;

@JsonSerializable(explicitToJson: true)
class LastLocationModel$Location$Item {
  LastLocationModel$Location$Item({
    this.longitude,
    this.latitude,
    this.time,
    this.locationName,
  });

  factory LastLocationModel$Location$Item.fromJson(Map<String, dynamic> json) =>
      _$LastLocationModel$Location$ItemFromJson(json);

  @JsonKey(name: 'Longitude')
  final String? longitude;
  @JsonKey(name: 'Latitude')
  final String? latitude;
  @JsonKey(name: 'Time')
  final String? time;
  @JsonKey(name: 'LocationName')
  final String? locationName;
  static const fromJsonFactory = _$LastLocationModel$Location$ItemFromJson;
  static const toJsonFactory = _$LastLocationModel$Location$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$LastLocationModel$Location$ItemToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LastLocationModel$Location$Item &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)) &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)) &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)) &&
            (identical(other.locationName, locationName) ||
                const DeepCollectionEquality()
                    .equals(other.locationName, locationName)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(longitude) ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(time) ^
      const DeepCollectionEquality().hash(locationName) ^
      runtimeType.hashCode;
}

extension $LastLocationModel$Location$ItemExtension
    on LastLocationModel$Location$Item {
  LastLocationModel$Location$Item copyWith(
      {String? longitude,
      String? latitude,
      String? time,
      String? locationName}) {
    return LastLocationModel$Location$Item(
        longitude: longitude ?? this.longitude,
        latitude: latitude ?? this.latitude,
        time: time ?? this.time,
        locationName: locationName ?? this.locationName);
  }
}

typedef LocationModel$Location = List<LocationModel$Location$Item>;

@JsonSerializable(explicitToJson: true)
class LocationModel$Location$Item {
  LocationModel$Location$Item({
    this.longitude,
    this.latitude,
    this.time,
    this.locationName,
  });

  factory LocationModel$Location$Item.fromJson(Map<String, dynamic> json) =>
      _$LocationModel$Location$ItemFromJson(json);

  @JsonKey(name: 'Longitude')
  final String? longitude;
  @JsonKey(name: 'Latitude')
  final String? latitude;
  @JsonKey(name: 'Time')
  final String? time;
  @JsonKey(name: 'LocationName')
  final String? locationName;
  static const fromJsonFactory = _$LocationModel$Location$ItemFromJson;
  static const toJsonFactory = _$LocationModel$Location$ItemToJson;
  Map<String, dynamic> toJson() => _$LocationModel$Location$ItemToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LocationModel$Location$Item &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)) &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)) &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)) &&
            (identical(other.locationName, locationName) ||
                const DeepCollectionEquality()
                    .equals(other.locationName, locationName)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(longitude) ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(time) ^
      const DeepCollectionEquality().hash(locationName) ^
      runtimeType.hashCode;
}

extension $LocationModel$Location$ItemExtension on LocationModel$Location$Item {
  LocationModel$Location$Item copyWith(
      {String? longitude,
      String? latitude,
      String? time,
      String? locationName}) {
    return LocationModel$Location$Item(
        longitude: longitude ?? this.longitude,
        latitude: latitude ?? this.latitude,
        time: time ?? this.time,
        locationName: locationName ?? this.locationName);
  }
}

typedef AllMessageModel$Rows = List<AllMessageModel$Rows$Item>;

@JsonSerializable(explicitToJson: true)
class AllMessageModel$Rows$Item {
  AllMessageModel$Rows$Item({
    this.messageId,
    this.deviceId,
    this.deviceName,
    this.subject,
    this.timeStamp,
    this.status,
    this.platformType,
  });

  factory AllMessageModel$Rows$Item.fromJson(Map<String, dynamic> json) =>
      _$AllMessageModel$Rows$ItemFromJson(json);

  @JsonKey(name: 'MessageId')
  final String? messageId;
  @JsonKey(name: 'DeviceId')
  final String? deviceId;
  @JsonKey(name: 'DeviceName')
  final String? deviceName;
  @JsonKey(name: 'Subject')
  final String? subject;
  @JsonKey(name: 'TimeStamp')
  final String? timeStamp;
  @JsonKey(name: 'Status')
  final String? status;
  @JsonKey(name: 'PlatformType')
  final String? platformType;
  static const fromJsonFactory = _$AllMessageModel$Rows$ItemFromJson;
  static const toJsonFactory = _$AllMessageModel$Rows$ItemToJson;
  Map<String, dynamic> toJson() => _$AllMessageModel$Rows$ItemToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AllMessageModel$Rows$Item &&
            (identical(other.messageId, messageId) ||
                const DeepCollectionEquality()
                    .equals(other.messageId, messageId)) &&
            (identical(other.deviceId, deviceId) ||
                const DeepCollectionEquality()
                    .equals(other.deviceId, deviceId)) &&
            (identical(other.deviceName, deviceName) ||
                const DeepCollectionEquality()
                    .equals(other.deviceName, deviceName)) &&
            (identical(other.subject, subject) ||
                const DeepCollectionEquality()
                    .equals(other.subject, subject)) &&
            (identical(other.timeStamp, timeStamp) ||
                const DeepCollectionEquality()
                    .equals(other.timeStamp, timeStamp)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.platformType, platformType) ||
                const DeepCollectionEquality()
                    .equals(other.platformType, platformType)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(messageId) ^
      const DeepCollectionEquality().hash(deviceId) ^
      const DeepCollectionEquality().hash(deviceName) ^
      const DeepCollectionEquality().hash(subject) ^
      const DeepCollectionEquality().hash(timeStamp) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(platformType) ^
      runtimeType.hashCode;
}

extension $AllMessageModel$Rows$ItemExtension on AllMessageModel$Rows$Item {
  AllMessageModel$Rows$Item copyWith(
      {String? messageId,
      String? deviceId,
      String? deviceName,
      String? subject,
      String? timeStamp,
      String? status,
      String? platformType}) {
    return AllMessageModel$Rows$Item(
        messageId: messageId ?? this.messageId,
        deviceId: deviceId ?? this.deviceId,
        deviceName: deviceName ?? this.deviceName,
        subject: subject ?? this.subject,
        timeStamp: timeStamp ?? this.timeStamp,
        status: status ?? this.status,
        platformType: platformType ?? this.platformType);
  }
}

typedef DynamicGeoFencingPayLoad$Fence
    = List<DynamicGeoFencingPayLoad$Fence$Item>;

@JsonSerializable(explicitToJson: true)
class DynamicGeoFencingPayLoad$Fence$Item {
  DynamicGeoFencingPayLoad$Fence$Item({
    this.name,
    this.latitude,
    this.longitude,
    this.radius,
    this.geoFenceUnit,
    this.fence,
  });

  factory DynamicGeoFencingPayLoad$Fence$Item.fromJson(
          Map<String, dynamic> json) =>
      _$DynamicGeoFencingPayLoad$Fence$ItemFromJson(json);

  @JsonKey(name: 'Name')
  final String? name;
  @JsonKey(name: 'Latitude')
  final int? latitude;
  @JsonKey(name: 'Longitude')
  final int? longitude;
  @JsonKey(name: 'Radius')
  final int? radius;
  @JsonKey(name: 'GeoFenceUnit')
  final int? geoFenceUnit;
  @JsonKey(name: 'Fence')
  final String? fence;
  static const fromJsonFactory = _$DynamicGeoFencingPayLoad$Fence$ItemFromJson;
  static const toJsonFactory = _$DynamicGeoFencingPayLoad$Fence$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$DynamicGeoFencingPayLoad$Fence$ItemToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DynamicGeoFencingPayLoad$Fence$Item &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)) &&
            (identical(other.radius, radius) ||
                const DeepCollectionEquality().equals(other.radius, radius)) &&
            (identical(other.geoFenceUnit, geoFenceUnit) ||
                const DeepCollectionEquality()
                    .equals(other.geoFenceUnit, geoFenceUnit)) &&
            (identical(other.fence, fence) ||
                const DeepCollectionEquality().equals(other.fence, fence)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude) ^
      const DeepCollectionEquality().hash(radius) ^
      const DeepCollectionEquality().hash(geoFenceUnit) ^
      const DeepCollectionEquality().hash(fence) ^
      runtimeType.hashCode;
}

extension $DynamicGeoFencingPayLoad$Fence$ItemExtension
    on DynamicGeoFencingPayLoad$Fence$Item {
  DynamicGeoFencingPayLoad$Fence$Item copyWith(
      {String? name,
      int? latitude,
      int? longitude,
      int? radius,
      int? geoFenceUnit,
      String? fence}) {
    return DynamicGeoFencingPayLoad$Fence$Item(
        name: name ?? this.name,
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude,
        radius: radius ?? this.radius,
        geoFenceUnit: geoFenceUnit ?? this.geoFenceUnit,
        fence: fence ?? this.fence);
  }
}

typedef DynamicGeoFencingPayLoad$JobOut
    = List<DynamicGeoFencingPayLoad$JobOut$Item>;

@JsonSerializable(explicitToJson: true)
class DynamicGeoFencingPayLoad$JobOut$Item {
  DynamicGeoFencingPayLoad$JobOut$Item({
    this.jobID,
    this.jobName,
    this.platform,
    this.type,
  });

  factory DynamicGeoFencingPayLoad$JobOut$Item.fromJson(
          Map<String, dynamic> json) =>
      _$DynamicGeoFencingPayLoad$JobOut$ItemFromJson(json);

  @JsonKey(name: 'JobID')
  final String? jobID;
  @JsonKey(name: 'JobName')
  final String? jobName;
  @JsonKey(name: 'Platform')
  final String? platform;
  @JsonKey(name: 'Type')
  final String? type;
  static const fromJsonFactory = _$DynamicGeoFencingPayLoad$JobOut$ItemFromJson;
  static const toJsonFactory = _$DynamicGeoFencingPayLoad$JobOut$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$DynamicGeoFencingPayLoad$JobOut$ItemToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DynamicGeoFencingPayLoad$JobOut$Item &&
            (identical(other.jobID, jobID) ||
                const DeepCollectionEquality().equals(other.jobID, jobID)) &&
            (identical(other.jobName, jobName) ||
                const DeepCollectionEquality()
                    .equals(other.jobName, jobName)) &&
            (identical(other.platform, platform) ||
                const DeepCollectionEquality()
                    .equals(other.platform, platform)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobID) ^
      const DeepCollectionEquality().hash(jobName) ^
      const DeepCollectionEquality().hash(platform) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $DynamicGeoFencingPayLoad$JobOut$ItemExtension
    on DynamicGeoFencingPayLoad$JobOut$Item {
  DynamicGeoFencingPayLoad$JobOut$Item copyWith(
      {String? jobID, String? jobName, String? platform, String? type}) {
    return DynamicGeoFencingPayLoad$JobOut$Item(
        jobID: jobID ?? this.jobID,
        jobName: jobName ?? this.jobName,
        platform: platform ?? this.platform,
        type: type ?? this.type);
  }
}

typedef DynamicGeoFencingPayLoad$JobIn
    = List<DynamicGeoFencingPayLoad$JobIn$Item>;

@JsonSerializable(explicitToJson: true)
class DynamicGeoFencingPayLoad$JobIn$Item {
  DynamicGeoFencingPayLoad$JobIn$Item({
    this.jobID,
    this.jobName,
    this.platform,
    this.type,
  });

  factory DynamicGeoFencingPayLoad$JobIn$Item.fromJson(
          Map<String, dynamic> json) =>
      _$DynamicGeoFencingPayLoad$JobIn$ItemFromJson(json);

  @JsonKey(name: 'JobID')
  final String? jobID;
  @JsonKey(name: 'JobName')
  final String? jobName;
  @JsonKey(name: 'Platform')
  final String? platform;
  @JsonKey(name: 'Type')
  final String? type;
  static const fromJsonFactory = _$DynamicGeoFencingPayLoad$JobIn$ItemFromJson;
  static const toJsonFactory = _$DynamicGeoFencingPayLoad$JobIn$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$DynamicGeoFencingPayLoad$JobIn$ItemToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DynamicGeoFencingPayLoad$JobIn$Item &&
            (identical(other.jobID, jobID) ||
                const DeepCollectionEquality().equals(other.jobID, jobID)) &&
            (identical(other.jobName, jobName) ||
                const DeepCollectionEquality()
                    .equals(other.jobName, jobName)) &&
            (identical(other.platform, platform) ||
                const DeepCollectionEquality()
                    .equals(other.platform, platform)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobID) ^
      const DeepCollectionEquality().hash(jobName) ^
      const DeepCollectionEquality().hash(platform) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $DynamicGeoFencingPayLoad$JobIn$ItemExtension
    on DynamicGeoFencingPayLoad$JobIn$Item {
  DynamicGeoFencingPayLoad$JobIn$Item copyWith(
      {String? jobID, String? jobName, String? platform, String? type}) {
    return DynamicGeoFencingPayLoad$JobIn$Item(
        jobID: jobID ?? this.jobID,
        jobName: jobName ?? this.jobName,
        platform: platform ?? this.platform,
        type: type ?? this.type);
  }
}

typedef DynamicTimeFencingPayLoad$JobIn
    = List<DynamicTimeFencingPayLoad$JobIn$Item>;

@JsonSerializable(explicitToJson: true)
class DynamicTimeFencingPayLoad$JobIn$Item {
  DynamicTimeFencingPayLoad$JobIn$Item({
    this.jobID,
    this.jobName,
    this.platform,
    this.type,
  });

  factory DynamicTimeFencingPayLoad$JobIn$Item.fromJson(
          Map<String, dynamic> json) =>
      _$DynamicTimeFencingPayLoad$JobIn$ItemFromJson(json);

  @JsonKey(name: 'JobID')
  final String? jobID;
  @JsonKey(name: 'JobName')
  final String? jobName;
  @JsonKey(name: 'Platform')
  final String? platform;
  @JsonKey(name: 'Type')
  final String? type;
  static const fromJsonFactory = _$DynamicTimeFencingPayLoad$JobIn$ItemFromJson;
  static const toJsonFactory = _$DynamicTimeFencingPayLoad$JobIn$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$DynamicTimeFencingPayLoad$JobIn$ItemToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DynamicTimeFencingPayLoad$JobIn$Item &&
            (identical(other.jobID, jobID) ||
                const DeepCollectionEquality().equals(other.jobID, jobID)) &&
            (identical(other.jobName, jobName) ||
                const DeepCollectionEquality()
                    .equals(other.jobName, jobName)) &&
            (identical(other.platform, platform) ||
                const DeepCollectionEquality()
                    .equals(other.platform, platform)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobID) ^
      const DeepCollectionEquality().hash(jobName) ^
      const DeepCollectionEquality().hash(platform) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $DynamicTimeFencingPayLoad$JobIn$ItemExtension
    on DynamicTimeFencingPayLoad$JobIn$Item {
  DynamicTimeFencingPayLoad$JobIn$Item copyWith(
      {String? jobID, String? jobName, String? platform, String? type}) {
    return DynamicTimeFencingPayLoad$JobIn$Item(
        jobID: jobID ?? this.jobID,
        jobName: jobName ?? this.jobName,
        platform: platform ?? this.platform,
        type: type ?? this.type);
  }
}

typedef DynamicTimeFencingPayLoad$JobOut
    = List<DynamicTimeFencingPayLoad$JobOut$Item>;

@JsonSerializable(explicitToJson: true)
class DynamicTimeFencingPayLoad$JobOut$Item {
  DynamicTimeFencingPayLoad$JobOut$Item({
    this.jobID,
    this.jobName,
    this.platform,
    this.type,
  });

  factory DynamicTimeFencingPayLoad$JobOut$Item.fromJson(
          Map<String, dynamic> json) =>
      _$DynamicTimeFencingPayLoad$JobOut$ItemFromJson(json);

  @JsonKey(name: 'JobID')
  final String? jobID;
  @JsonKey(name: 'JobName')
  final String? jobName;
  @JsonKey(name: 'Platform')
  final String? platform;
  @JsonKey(name: 'Type')
  final String? type;
  static const fromJsonFactory =
      _$DynamicTimeFencingPayLoad$JobOut$ItemFromJson;
  static const toJsonFactory = _$DynamicTimeFencingPayLoad$JobOut$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$DynamicTimeFencingPayLoad$JobOut$ItemToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DynamicTimeFencingPayLoad$JobOut$Item &&
            (identical(other.jobID, jobID) ||
                const DeepCollectionEquality().equals(other.jobID, jobID)) &&
            (identical(other.jobName, jobName) ||
                const DeepCollectionEquality()
                    .equals(other.jobName, jobName)) &&
            (identical(other.platform, platform) ||
                const DeepCollectionEquality()
                    .equals(other.platform, platform)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobID) ^
      const DeepCollectionEquality().hash(jobName) ^
      const DeepCollectionEquality().hash(platform) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $DynamicTimeFencingPayLoad$JobOut$ItemExtension
    on DynamicTimeFencingPayLoad$JobOut$Item {
  DynamicTimeFencingPayLoad$JobOut$Item copyWith(
      {String? jobID, String? jobName, String? platform, String? type}) {
    return DynamicTimeFencingPayLoad$JobOut$Item(
        jobID: jobID ?? this.jobID,
        jobName: jobName ?? this.jobName,
        platform: platform ?? this.platform,
        type: type ?? this.type);
  }
}

@JsonSerializable(explicitToJson: true)
class DynamicTimeFencingPayLoad$SelectFence {
  DynamicTimeFencingPayLoad$SelectFence({
    this.timeFenceRows,
  });

  factory DynamicTimeFencingPayLoad$SelectFence.fromJson(
          Map<String, dynamic> json) =>
      _$DynamicTimeFencingPayLoad$SelectFenceFromJson(json);

  @JsonKey(
      name: 'TimeFenceRows',
      defaultValue: <DynamicTimeFencingPayLoad$SelectFence$TimeFenceRows>[])
  final List<DynamicTimeFencingPayLoad$SelectFence$TimeFenceRows>?
      timeFenceRows;
  static const fromJsonFactory =
      _$DynamicTimeFencingPayLoad$SelectFenceFromJson;
  static const toJsonFactory = _$DynamicTimeFencingPayLoad$SelectFenceToJson;
  Map<String, dynamic> toJson() =>
      _$DynamicTimeFencingPayLoad$SelectFenceToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DynamicTimeFencingPayLoad$SelectFence &&
            (identical(other.timeFenceRows, timeFenceRows) ||
                const DeepCollectionEquality()
                    .equals(other.timeFenceRows, timeFenceRows)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(timeFenceRows) ^ runtimeType.hashCode;
}

extension $DynamicTimeFencingPayLoad$SelectFenceExtension
    on DynamicTimeFencingPayLoad$SelectFence {
  DynamicTimeFencingPayLoad$SelectFence copyWith(
      {List<DynamicTimeFencingPayLoad$SelectFence$TimeFenceRows>?
          timeFenceRows}) {
    return DynamicTimeFencingPayLoad$SelectFence(
        timeFenceRows: timeFenceRows ?? this.timeFenceRows);
  }
}

@JsonSerializable(explicitToJson: true)
class DynamicNetworkFencingPayLoad$JobIn {
  DynamicNetworkFencingPayLoad$JobIn({
    this.jobID,
    this.jobName,
    this.platform,
    this.type,
  });

  factory DynamicNetworkFencingPayLoad$JobIn.fromJson(
          Map<String, dynamic> json) =>
      _$DynamicNetworkFencingPayLoad$JobInFromJson(json);

  @JsonKey(name: 'JobID')
  final String? jobID;
  @JsonKey(name: 'JobName')
  final String? jobName;
  @JsonKey(name: 'Platform')
  final String? platform;
  @JsonKey(name: 'Type')
  final String? type;
  static const fromJsonFactory = _$DynamicNetworkFencingPayLoad$JobInFromJson;
  static const toJsonFactory = _$DynamicNetworkFencingPayLoad$JobInToJson;
  Map<String, dynamic> toJson() =>
      _$DynamicNetworkFencingPayLoad$JobInToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DynamicNetworkFencingPayLoad$JobIn &&
            (identical(other.jobID, jobID) ||
                const DeepCollectionEquality().equals(other.jobID, jobID)) &&
            (identical(other.jobName, jobName) ||
                const DeepCollectionEquality()
                    .equals(other.jobName, jobName)) &&
            (identical(other.platform, platform) ||
                const DeepCollectionEquality()
                    .equals(other.platform, platform)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobID) ^
      const DeepCollectionEquality().hash(jobName) ^
      const DeepCollectionEquality().hash(platform) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $DynamicNetworkFencingPayLoad$JobInExtension
    on DynamicNetworkFencingPayLoad$JobIn {
  DynamicNetworkFencingPayLoad$JobIn copyWith(
      {String? jobID, String? jobName, String? platform, String? type}) {
    return DynamicNetworkFencingPayLoad$JobIn(
        jobID: jobID ?? this.jobID,
        jobName: jobName ?? this.jobName,
        platform: platform ?? this.platform,
        type: type ?? this.type);
  }
}

@JsonSerializable(explicitToJson: true)
class DynamicNetworkFencingPayLoad$JobOut {
  DynamicNetworkFencingPayLoad$JobOut({
    this.jobID,
    this.jobName,
    this.platform,
    this.type,
  });

  factory DynamicNetworkFencingPayLoad$JobOut.fromJson(
          Map<String, dynamic> json) =>
      _$DynamicNetworkFencingPayLoad$JobOutFromJson(json);

  @JsonKey(name: 'JobID')
  final String? jobID;
  @JsonKey(name: 'JobName')
  final String? jobName;
  @JsonKey(name: 'Platform')
  final String? platform;
  @JsonKey(name: 'Type')
  final String? type;
  static const fromJsonFactory = _$DynamicNetworkFencingPayLoad$JobOutFromJson;
  static const toJsonFactory = _$DynamicNetworkFencingPayLoad$JobOutToJson;
  Map<String, dynamic> toJson() =>
      _$DynamicNetworkFencingPayLoad$JobOutToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DynamicNetworkFencingPayLoad$JobOut &&
            (identical(other.jobID, jobID) ||
                const DeepCollectionEquality().equals(other.jobID, jobID)) &&
            (identical(other.jobName, jobName) ||
                const DeepCollectionEquality()
                    .equals(other.jobName, jobName)) &&
            (identical(other.platform, platform) ||
                const DeepCollectionEquality()
                    .equals(other.platform, platform)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobID) ^
      const DeepCollectionEquality().hash(jobName) ^
      const DeepCollectionEquality().hash(platform) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $DynamicNetworkFencingPayLoad$JobOutExtension
    on DynamicNetworkFencingPayLoad$JobOut {
  DynamicNetworkFencingPayLoad$JobOut copyWith(
      {String? jobID, String? jobName, String? platform, String? type}) {
    return DynamicNetworkFencingPayLoad$JobOut(
        jobID: jobID ?? this.jobID,
        jobName: jobName ?? this.jobName,
        platform: platform ?? this.platform,
        type: type ?? this.type);
  }
}

@JsonSerializable(explicitToJson: true)
class DynamicNetworkFencingPayLoad$SelectFence {
  DynamicNetworkFencingPayLoad$SelectFence({
    this.networkFenceRows,
  });

  factory DynamicNetworkFencingPayLoad$SelectFence.fromJson(
          Map<String, dynamic> json) =>
      _$DynamicNetworkFencingPayLoad$SelectFenceFromJson(json);

  @JsonKey(name: 'NetworkFenceRows')
  final DynamicNetworkFencingPayLoad$SelectFence$NetworkFenceRows?
      networkFenceRows;
  static const fromJsonFactory =
      _$DynamicNetworkFencingPayLoad$SelectFenceFromJson;
  static const toJsonFactory = _$DynamicNetworkFencingPayLoad$SelectFenceToJson;
  Map<String, dynamic> toJson() =>
      _$DynamicNetworkFencingPayLoad$SelectFenceToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DynamicNetworkFencingPayLoad$SelectFence &&
            (identical(other.networkFenceRows, networkFenceRows) ||
                const DeepCollectionEquality()
                    .equals(other.networkFenceRows, networkFenceRows)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(networkFenceRows) ^
      runtimeType.hashCode;
}

extension $DynamicNetworkFencingPayLoad$SelectFenceExtension
    on DynamicNetworkFencingPayLoad$SelectFence {
  DynamicNetworkFencingPayLoad$SelectFence copyWith(
      {DynamicNetworkFencingPayLoad$SelectFence$NetworkFenceRows?
          networkFenceRows}) {
    return DynamicNetworkFencingPayLoad$SelectFence(
        networkFenceRows: networkFenceRows ?? this.networkFenceRows);
  }
}

typedef DataUsageOutput$AppsDataUsage
    = List<DataUsageOutput$AppsDataUsage$Item>;

@JsonSerializable(explicitToJson: true)
class DataUsageOutput$AppsDataUsage$Item {
  DataUsageOutput$AppsDataUsage$Item({
    this.appId,
    this.appName,
    this.appIcon,
    this.foregroundMobileDataUsage,
    this.backgroundMobileDataUsage,
    this.foregroundWifiDataUsage,
    this.backgroundWifiDataUsage,
    this.deviceId,
    this.mobileDataUsage,
    this.wifiDataUsage,
    this.startTime,
    this.endTime,
    this.totalusage,
  });

  factory DataUsageOutput$AppsDataUsage$Item.fromJson(
          Map<String, dynamic> json) =>
      _$DataUsageOutput$AppsDataUsage$ItemFromJson(json);

  @JsonKey(name: 'AppId')
  final String? appId;
  @JsonKey(name: 'AppName')
  final String? appName;
  @JsonKey(name: 'AppIcon')
  final String? appIcon;
  @JsonKey(name: 'ForegroundMobileDataUsage')
  final int? foregroundMobileDataUsage;
  @JsonKey(name: 'BackgroundMobileDataUsage')
  final int? backgroundMobileDataUsage;
  @JsonKey(name: 'ForegroundWifiDataUsage')
  final int? foregroundWifiDataUsage;
  @JsonKey(name: 'BackgroundWifiDataUsage')
  final int? backgroundWifiDataUsage;
  @JsonKey(name: 'DeviceId')
  final String? deviceId;
  @JsonKey(name: 'MobileDataUsage')
  final int? mobileDataUsage;
  @JsonKey(name: 'WifiDataUsage')
  final int? wifiDataUsage;
  @JsonKey(name: 'StartTime')
  final String? startTime;
  @JsonKey(name: 'EndTime')
  final String? endTime;
  @JsonKey(name: 'Totalusage')
  final int? totalusage;
  static const fromJsonFactory = _$DataUsageOutput$AppsDataUsage$ItemFromJson;
  static const toJsonFactory = _$DataUsageOutput$AppsDataUsage$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$DataUsageOutput$AppsDataUsage$ItemToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DataUsageOutput$AppsDataUsage$Item &&
            (identical(other.appId, appId) ||
                const DeepCollectionEquality().equals(other.appId, appId)) &&
            (identical(other.appName, appName) ||
                const DeepCollectionEquality()
                    .equals(other.appName, appName)) &&
            (identical(other.appIcon, appIcon) ||
                const DeepCollectionEquality()
                    .equals(other.appIcon, appIcon)) &&
            (identical(other.foregroundMobileDataUsage, foregroundMobileDataUsage) ||
                const DeepCollectionEquality().equals(
                    other.foregroundMobileDataUsage,
                    foregroundMobileDataUsage)) &&
            (identical(other.backgroundMobileDataUsage, backgroundMobileDataUsage) ||
                const DeepCollectionEquality().equals(
                    other.backgroundMobileDataUsage,
                    backgroundMobileDataUsage)) &&
            (identical(other.foregroundWifiDataUsage, foregroundWifiDataUsage) ||
                const DeepCollectionEquality().equals(
                    other.foregroundWifiDataUsage, foregroundWifiDataUsage)) &&
            (identical(other.backgroundWifiDataUsage, backgroundWifiDataUsage) ||
                const DeepCollectionEquality().equals(
                    other.backgroundWifiDataUsage, backgroundWifiDataUsage)) &&
            (identical(other.deviceId, deviceId) ||
                const DeepCollectionEquality()
                    .equals(other.deviceId, deviceId)) &&
            (identical(other.mobileDataUsage, mobileDataUsage) ||
                const DeepCollectionEquality()
                    .equals(other.mobileDataUsage, mobileDataUsage)) &&
            (identical(other.wifiDataUsage, wifiDataUsage) ||
                const DeepCollectionEquality()
                    .equals(other.wifiDataUsage, wifiDataUsage)) &&
            (identical(other.startTime, startTime) ||
                const DeepCollectionEquality()
                    .equals(other.startTime, startTime)) &&
            (identical(other.endTime, endTime) ||
                const DeepCollectionEquality()
                    .equals(other.endTime, endTime)) &&
            (identical(other.totalusage, totalusage) ||
                const DeepCollectionEquality().equals(other.totalusage, totalusage)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(appId) ^
      const DeepCollectionEquality().hash(appName) ^
      const DeepCollectionEquality().hash(appIcon) ^
      const DeepCollectionEquality().hash(foregroundMobileDataUsage) ^
      const DeepCollectionEquality().hash(backgroundMobileDataUsage) ^
      const DeepCollectionEquality().hash(foregroundWifiDataUsage) ^
      const DeepCollectionEquality().hash(backgroundWifiDataUsage) ^
      const DeepCollectionEquality().hash(deviceId) ^
      const DeepCollectionEquality().hash(mobileDataUsage) ^
      const DeepCollectionEquality().hash(wifiDataUsage) ^
      const DeepCollectionEquality().hash(startTime) ^
      const DeepCollectionEquality().hash(endTime) ^
      const DeepCollectionEquality().hash(totalusage) ^
      runtimeType.hashCode;
}

extension $DataUsageOutput$AppsDataUsage$ItemExtension
    on DataUsageOutput$AppsDataUsage$Item {
  DataUsageOutput$AppsDataUsage$Item copyWith(
      {String? appId,
      String? appName,
      String? appIcon,
      int? foregroundMobileDataUsage,
      int? backgroundMobileDataUsage,
      int? foregroundWifiDataUsage,
      int? backgroundWifiDataUsage,
      String? deviceId,
      int? mobileDataUsage,
      int? wifiDataUsage,
      String? startTime,
      String? endTime,
      int? totalusage}) {
    return DataUsageOutput$AppsDataUsage$Item(
        appId: appId ?? this.appId,
        appName: appName ?? this.appName,
        appIcon: appIcon ?? this.appIcon,
        foregroundMobileDataUsage:
            foregroundMobileDataUsage ?? this.foregroundMobileDataUsage,
        backgroundMobileDataUsage:
            backgroundMobileDataUsage ?? this.backgroundMobileDataUsage,
        foregroundWifiDataUsage:
            foregroundWifiDataUsage ?? this.foregroundWifiDataUsage,
        backgroundWifiDataUsage:
            backgroundWifiDataUsage ?? this.backgroundWifiDataUsage,
        deviceId: deviceId ?? this.deviceId,
        mobileDataUsage: mobileDataUsage ?? this.mobileDataUsage,
        wifiDataUsage: wifiDataUsage ?? this.wifiDataUsage,
        startTime: startTime ?? this.startTime,
        endTime: endTime ?? this.endTime,
        totalusage: totalusage ?? this.totalusage);
  }
}

typedef DataUsageOutput$DataUsage = List<DataUsageOutput$DataUsage$Item>;

@JsonSerializable(explicitToJson: true)
class DataUsageOutput$DataUsage$Item {
  DataUsageOutput$DataUsage$Item({
    this.deviceId,
    this.mobileDataUsage,
    this.wifiDataUsage,
    this.startTime,
    this.endTime,
    this.isRoaming,
  });

  factory DataUsageOutput$DataUsage$Item.fromJson(Map<String, dynamic> json) =>
      _$DataUsageOutput$DataUsage$ItemFromJson(json);

  @JsonKey(name: 'DeviceId')
  final String? deviceId;
  @JsonKey(name: 'MobileDataUsage')
  final int? mobileDataUsage;
  @JsonKey(name: 'WifiDataUsage')
  final int? wifiDataUsage;
  @JsonKey(name: 'StartTime')
  final int? startTime;
  @JsonKey(name: 'EndTime')
  final int? endTime;
  @JsonKey(name: 'IsRoaming')
  final String? isRoaming;
  static const fromJsonFactory = _$DataUsageOutput$DataUsage$ItemFromJson;
  static const toJsonFactory = _$DataUsageOutput$DataUsage$ItemToJson;
  Map<String, dynamic> toJson() => _$DataUsageOutput$DataUsage$ItemToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DataUsageOutput$DataUsage$Item &&
            (identical(other.deviceId, deviceId) ||
                const DeepCollectionEquality()
                    .equals(other.deviceId, deviceId)) &&
            (identical(other.mobileDataUsage, mobileDataUsage) ||
                const DeepCollectionEquality()
                    .equals(other.mobileDataUsage, mobileDataUsage)) &&
            (identical(other.wifiDataUsage, wifiDataUsage) ||
                const DeepCollectionEquality()
                    .equals(other.wifiDataUsage, wifiDataUsage)) &&
            (identical(other.startTime, startTime) ||
                const DeepCollectionEquality()
                    .equals(other.startTime, startTime)) &&
            (identical(other.endTime, endTime) ||
                const DeepCollectionEquality()
                    .equals(other.endTime, endTime)) &&
            (identical(other.isRoaming, isRoaming) ||
                const DeepCollectionEquality()
                    .equals(other.isRoaming, isRoaming)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(deviceId) ^
      const DeepCollectionEquality().hash(mobileDataUsage) ^
      const DeepCollectionEquality().hash(wifiDataUsage) ^
      const DeepCollectionEquality().hash(startTime) ^
      const DeepCollectionEquality().hash(endTime) ^
      const DeepCollectionEquality().hash(isRoaming) ^
      runtimeType.hashCode;
}

extension $DataUsageOutput$DataUsage$ItemExtension
    on DataUsageOutput$DataUsage$Item {
  DataUsageOutput$DataUsage$Item copyWith(
      {String? deviceId,
      int? mobileDataUsage,
      int? wifiDataUsage,
      int? startTime,
      int? endTime,
      String? isRoaming}) {
    return DataUsageOutput$DataUsage$Item(
        deviceId: deviceId ?? this.deviceId,
        mobileDataUsage: mobileDataUsage ?? this.mobileDataUsage,
        wifiDataUsage: wifiDataUsage ?? this.wifiDataUsage,
        startTime: startTime ?? this.startTime,
        endTime: endTime ?? this.endTime,
        isRoaming: isRoaming ?? this.isRoaming);
  }
}

typedef GroupGetAllModel$Groups = List<GroupGetAllModel$Groups$Item>;

@JsonSerializable(explicitToJson: true)
class GroupGetAllModel$Groups$Item {
  GroupGetAllModel$Groups$Item({
    this.parentGroupID,
    this.defaultJobsCount,
    this.deviceNameRule,
    this.groupName,
    this.groupID,
  });

  factory GroupGetAllModel$Groups$Item.fromJson(Map<String, dynamic> json) =>
      _$GroupGetAllModel$Groups$ItemFromJson(json);

  @JsonKey(name: 'ParentGroupID')
  final String? parentGroupID;
  @JsonKey(name: 'DefaultJobsCount')
  final int? defaultJobsCount;
  @JsonKey(name: 'DeviceNameRule')
  final String? deviceNameRule;
  @JsonKey(name: 'GroupName')
  final String? groupName;
  @JsonKey(name: 'GroupID')
  final String? groupID;
  static const fromJsonFactory = _$GroupGetAllModel$Groups$ItemFromJson;
  static const toJsonFactory = _$GroupGetAllModel$Groups$ItemToJson;
  Map<String, dynamic> toJson() => _$GroupGetAllModel$Groups$ItemToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GroupGetAllModel$Groups$Item &&
            (identical(other.parentGroupID, parentGroupID) ||
                const DeepCollectionEquality()
                    .equals(other.parentGroupID, parentGroupID)) &&
            (identical(other.defaultJobsCount, defaultJobsCount) ||
                const DeepCollectionEquality()
                    .equals(other.defaultJobsCount, defaultJobsCount)) &&
            (identical(other.deviceNameRule, deviceNameRule) ||
                const DeepCollectionEquality()
                    .equals(other.deviceNameRule, deviceNameRule)) &&
            (identical(other.groupName, groupName) ||
                const DeepCollectionEquality()
                    .equals(other.groupName, groupName)) &&
            (identical(other.groupID, groupID) ||
                const DeepCollectionEquality().equals(other.groupID, groupID)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(parentGroupID) ^
      const DeepCollectionEquality().hash(defaultJobsCount) ^
      const DeepCollectionEquality().hash(deviceNameRule) ^
      const DeepCollectionEquality().hash(groupName) ^
      const DeepCollectionEquality().hash(groupID) ^
      runtimeType.hashCode;
}

extension $GroupGetAllModel$Groups$ItemExtension
    on GroupGetAllModel$Groups$Item {
  GroupGetAllModel$Groups$Item copyWith(
      {String? parentGroupID,
      int? defaultJobsCount,
      String? deviceNameRule,
      String? groupName,
      String? groupID}) {
    return GroupGetAllModel$Groups$Item(
        parentGroupID: parentGroupID ?? this.parentGroupID,
        defaultJobsCount: defaultJobsCount ?? this.defaultJobsCount,
        deviceNameRule: deviceNameRule ?? this.deviceNameRule,
        groupName: groupName ?? this.groupName,
        groupID: groupID ?? this.groupID);
  }
}

typedef PreapprovedDeviceResponseModel$Rows
    = List<PreapprovedDeviceResponseModel$Rows$Item>;

@JsonSerializable(explicitToJson: true)
class PreapprovedDeviceResponseModel$Rows$Item {
  PreapprovedDeviceResponseModel$Rows$Item({
    this.deviceID,
    this.deviceName,
    this.id,
    this.iDType,
    this.groupID,
    this.groupPath,
    this.tagName,
    this.deviceNotes,
    this.serialNumber,
    this.enableEnroll,
    this.phoneNumber,
    this.emailId,
    this.deviceIDS,
  });

  factory PreapprovedDeviceResponseModel$Rows$Item.fromJson(
          Map<String, dynamic> json) =>
      _$PreapprovedDeviceResponseModel$Rows$ItemFromJson(json);

  @JsonKey(name: 'DeviceID')
  final String? deviceID;
  @JsonKey(name: 'DeviceName')
  final String? deviceName;
  @JsonKey(name: 'ID')
  final String? id;
  @JsonKey(name: 'IDType')
  final String? iDType;
  @JsonKey(name: 'GroupID')
  final String? groupID;
  @JsonKey(name: 'GroupPath')
  final String? groupPath;
  @JsonKey(name: 'TagName')
  final String? tagName;
  @JsonKey(name: 'DeviceNotes')
  final String? deviceNotes;
  @JsonKey(name: 'SerialNumber')
  final String? serialNumber;
  @JsonKey(name: 'EnableEnroll')
  final String? enableEnroll;
  @JsonKey(name: 'PhoneNumber')
  final String? phoneNumber;
  @JsonKey(name: 'EmailId')
  final String? emailId;
  @JsonKey(name: 'DeviceIDS', defaultValue: <Object>[])
  final List<Object>? deviceIDS;
  static const fromJsonFactory =
      _$PreapprovedDeviceResponseModel$Rows$ItemFromJson;
  static const toJsonFactory = _$PreapprovedDeviceResponseModel$Rows$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$PreapprovedDeviceResponseModel$Rows$ItemToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PreapprovedDeviceResponseModel$Rows$Item &&
            (identical(other.deviceID, deviceID) ||
                const DeepCollectionEquality()
                    .equals(other.deviceID, deviceID)) &&
            (identical(other.deviceName, deviceName) ||
                const DeepCollectionEquality()
                    .equals(other.deviceName, deviceName)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.iDType, iDType) ||
                const DeepCollectionEquality().equals(other.iDType, iDType)) &&
            (identical(other.groupID, groupID) ||
                const DeepCollectionEquality()
                    .equals(other.groupID, groupID)) &&
            (identical(other.groupPath, groupPath) ||
                const DeepCollectionEquality()
                    .equals(other.groupPath, groupPath)) &&
            (identical(other.tagName, tagName) ||
                const DeepCollectionEquality()
                    .equals(other.tagName, tagName)) &&
            (identical(other.deviceNotes, deviceNotes) ||
                const DeepCollectionEquality()
                    .equals(other.deviceNotes, deviceNotes)) &&
            (identical(other.serialNumber, serialNumber) ||
                const DeepCollectionEquality()
                    .equals(other.serialNumber, serialNumber)) &&
            (identical(other.enableEnroll, enableEnroll) ||
                const DeepCollectionEquality()
                    .equals(other.enableEnroll, enableEnroll)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.emailId, emailId) ||
                const DeepCollectionEquality()
                    .equals(other.emailId, emailId)) &&
            (identical(other.deviceIDS, deviceIDS) ||
                const DeepCollectionEquality()
                    .equals(other.deviceIDS, deviceIDS)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(deviceID) ^
      const DeepCollectionEquality().hash(deviceName) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(iDType) ^
      const DeepCollectionEquality().hash(groupID) ^
      const DeepCollectionEquality().hash(groupPath) ^
      const DeepCollectionEquality().hash(tagName) ^
      const DeepCollectionEquality().hash(deviceNotes) ^
      const DeepCollectionEquality().hash(serialNumber) ^
      const DeepCollectionEquality().hash(enableEnroll) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(emailId) ^
      const DeepCollectionEquality().hash(deviceIDS) ^
      runtimeType.hashCode;
}

extension $PreapprovedDeviceResponseModel$Rows$ItemExtension
    on PreapprovedDeviceResponseModel$Rows$Item {
  PreapprovedDeviceResponseModel$Rows$Item copyWith(
      {String? deviceID,
      String? deviceName,
      String? id,
      String? iDType,
      String? groupID,
      String? groupPath,
      String? tagName,
      String? deviceNotes,
      String? serialNumber,
      String? enableEnroll,
      String? phoneNumber,
      String? emailId,
      List<Object>? deviceIDS}) {
    return PreapprovedDeviceResponseModel$Rows$Item(
        deviceID: deviceID ?? this.deviceID,
        deviceName: deviceName ?? this.deviceName,
        id: id ?? this.id,
        iDType: iDType ?? this.iDType,
        groupID: groupID ?? this.groupID,
        groupPath: groupPath ?? this.groupPath,
        tagName: tagName ?? this.tagName,
        deviceNotes: deviceNotes ?? this.deviceNotes,
        serialNumber: serialNumber ?? this.serialNumber,
        enableEnroll: enableEnroll ?? this.enableEnroll,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        emailId: emailId ?? this.emailId,
        deviceIDS: deviceIDS ?? this.deviceIDS);
  }
}

typedef PostDeviceResponseModel$Rows = List<PostDeviceResponseModel$Rows$Item>;

@JsonSerializable(explicitToJson: true)
class PostDeviceResponseModel$Rows$Item {
  PostDeviceResponseModel$Rows$Item({
    this.deviceID,
    this.enrollmentMode,
    this.locationTimeStamp,
    this.deviceName,
    this.deviceModelName,
    this.platformType,
    this.lastTimeStamp,
    this.agentVersion,
    this.battery,
    this.phoneSignal,
    this.$Operator,
    this.deviceIPAddress,
    this.deviceTimeStamp,
    this.phoneRoaming,
    this.sureLockVersion,
    this.sureVideoVersion,
    this.sureFoxVersion,
    this.rootStatus,
    this.knoxStatus,
    this.releaseVersion,
    this.imei,
    this.deviceRegistered,
    this.dataUsage,
    this.cpuUsage,
    this.gpuUsage,
    this.temperature,
    this.isSupervised,
    this.isenrolled,
    this.notes,
    this.nixPollingType,
    this.networkType,
    this.serialNumber,
    this.phoneNumber,
    this.deviceUserName,
    this.gPSEnabled,
    this.simSerialNumber,
    this.bluetoothEnabled,
    this.uSBPluggedIn,
    this.bssid,
    this.sureLockSettingsVersionCode,
    this.osBuildNumber,
    this.memoryStorageAvailable,
    this.availablePhysicalMemory,
    this.realDeviceName,
    this.securityPatchDate,
    this.afwProfile,
    this.deviceGroupPath,
    this.mTPSystemScanTimeStamp,
    this.mTPSystemScanThreatCount,
    this.isMobileHotSpotEnabled,
    this.isEncryptionEnabled,
    this.imei2,
    this.ctsProfileMatch,
    this.basicIntegrity,
    this.verifyAppEnable,
    this.aDBEnable,
    this.allowUnknownSource,
    this.deviceTimeZone,
    this.deviceLocalIPAddress,
    this.wifiSSID,
    this.androidID,
    this.hashCode,
    this.efotaRegistrationStatus,
    this.currentFirmwareVersion,
    this.groupID,
    this.protocol,
    this.trackingOn,
    this.defaultHome,
    this.sureLockLicense,
    this.sureFoxLicense,
    this.sureVideoLicense,
    this.batteryState,
    this.storageMemoryTotal,
    this.totalPhysicalMemory,
    this.deviceApprovedStatus,
    this.thingsData,
    this.trackingInterval,
    this.jobsFailed,
    this.dJobsFailed,
    this.jobsDeployed,
    this.jobsInQueue,
    this.jobsInProgress,
    this.connectionStatus,
    this.uDIDiOS,
    this.pushMagic,
    this.iOSToken,
    this.eASDeviceIdentifier,
    this.customerID,
    this.gcmid,
    this.deviceUserID,
    this.backupBatteryPercent,
    this.backupBatteryLevel,
    this.backupBatteryState,
    this.organizationUnit,
    this.deviceBrand,
    this.deviceManufacture,
    this.activeSyncStatus,
    this.camera,
    this.fCMStatus,
    this.gCMStatusCode,
    this.incradle,
    this.isSureLockDefaultLauncher,
    this.isSureLockDeviceAdmin,
    this.isSureLockKnox,
    this.isSureLockUsageAccessAllowed,
    this.iUsbDbuggingDisabled,
    this.address,
    this.longitute,
    this.latitude,
    this.lockedUsing,
    this.extraDeviceInfo,
    this.parentDeviceId,
    this.thingHashCode,
    this.macName,
    this.macType,
    this.isConfigureSystemPermissionEnabled,
    this.isDisplayOverOtherAppsEnabled,
    this.isCRPStorageStatus,
    this.isCRPContactStatus,
    this.isCRPLocationStatus,
    this.isCRPCameraStatus,
    this.isCRPPhoneStatus,
    this.isCRPSmsStatus,
    this.oSVersionSortVal,
    this.drivesStorageMemory,
    this.managementStatus,
  });

  factory PostDeviceResponseModel$Rows$Item.fromJson(
          Map<String, dynamic> json) =>
      _$PostDeviceResponseModel$Rows$ItemFromJson(json);

  @JsonKey(name: 'DeviceID')
  final String? deviceID;
  @JsonKey(name: 'EnrollmentMode')
  final String? enrollmentMode;
  @JsonKey(name: 'LocationTimeStamp')
  final String? locationTimeStamp;
  @JsonKey(name: 'DeviceName')
  final String? deviceName;
  @JsonKey(name: 'DeviceModelName')
  final String? deviceModelName;
  @JsonKey(name: 'PlatformType')
  final String? platformType;
  @JsonKey(name: 'LastTimeStamp')
  final String? lastTimeStamp;
  @JsonKey(name: 'AgentVersion')
  final String? agentVersion;
  @JsonKey(name: 'battery')
  final String? battery;
  @JsonKey(name: 'PhoneSignal')
  final String? phoneSignal;
  @JsonKey(name: 'Operator')
  final String? $Operator;
  @JsonKey(name: 'DeviceIPAddress')
  final String? deviceIPAddress;
  @JsonKey(name: 'DeviceTimeStamp')
  final String? deviceTimeStamp;
  @JsonKey(name: 'PhoneRoaming')
  final String? phoneRoaming;
  @JsonKey(name: 'SureLockVersion')
  final String? sureLockVersion;
  @JsonKey(name: 'SureVideoVersion')
  final String? sureVideoVersion;
  @JsonKey(name: 'SureFoxVersion')
  final String? sureFoxVersion;
  @JsonKey(name: 'RootStatus')
  final String? rootStatus;
  @JsonKey(name: 'KnoxStatus')
  final String? knoxStatus;
  @JsonKey(name: 'ReleaseVersion')
  final String? releaseVersion;
  @JsonKey(name: 'IMEI')
  final String? imei;
  @JsonKey(name: 'DeviceRegistered')
  final String? deviceRegistered;
  @JsonKey(name: 'DataUsage')
  final String? dataUsage;
  @JsonKey(name: 'CpuUsage')
  final String? cpuUsage;
  @JsonKey(name: 'GpuUsage')
  final String? gpuUsage;
  @JsonKey(name: 'Temperature')
  final String? temperature;
  @JsonKey(name: 'IsSupervised')
  final String? isSupervised;
  @JsonKey(name: 'Isenrolled')
  final String? isenrolled;
  @JsonKey(name: 'Notes')
  final String? notes;
  @JsonKey(name: 'NixPollingType')
  final String? nixPollingType;
  @JsonKey(name: 'NetworkType')
  final String? networkType;
  @JsonKey(name: 'SerialNumber')
  final String? serialNumber;
  @JsonKey(name: 'PhoneNumber')
  final String? phoneNumber;
  @JsonKey(name: 'DeviceUserName')
  final String? deviceUserName;
  @JsonKey(name: 'GPSEnabled')
  final String? gPSEnabled;
  @JsonKey(name: 'SimSerialNumber')
  final String? simSerialNumber;
  @JsonKey(name: 'BluetoothEnabled')
  final String? bluetoothEnabled;
  @JsonKey(name: 'USBPluggedIn')
  final String? uSBPluggedIn;
  @JsonKey(name: 'BSSID')
  final String? bssid;
  @JsonKey(name: 'SureLockSettingsVersionCode')
  final String? sureLockSettingsVersionCode;
  @JsonKey(name: 'OsBuildNumber')
  final String? osBuildNumber;
  @JsonKey(name: 'MemoryStorageAvailable')
  final String? memoryStorageAvailable;
  @JsonKey(name: 'AvailablePhysicalMemory')
  final String? availablePhysicalMemory;
  @JsonKey(name: 'RealDeviceName')
  final String? realDeviceName;
  @JsonKey(name: 'SecurityPatchDate')
  final String? securityPatchDate;
  @JsonKey(name: 'AfwProfile')
  final String? afwProfile;
  @JsonKey(name: 'DeviceGroupPath')
  final String? deviceGroupPath;
  @JsonKey(name: 'MTPSystemScanTimeStamp')
  final String? mTPSystemScanTimeStamp;
  @JsonKey(name: 'MTPSystemScanThreatCount')
  final String? mTPSystemScanThreatCount;
  @JsonKey(name: 'IsMobileHotSpotEnabled')
  final String? isMobileHotSpotEnabled;
  @JsonKey(name: 'IsEncryptionEnabled')
  final String? isEncryptionEnabled;
  @JsonKey(name: 'IMEI2')
  final String? imei2;
  @JsonKey(name: 'CtsProfileMatch')
  final String? ctsProfileMatch;
  @JsonKey(name: 'BasicIntegrity')
  final String? basicIntegrity;
  @JsonKey(name: 'VerifyAppEnable')
  final String? verifyAppEnable;
  @JsonKey(name: 'ADBEnable')
  final String? aDBEnable;
  @JsonKey(name: 'AllowUnknownSource')
  final String? allowUnknownSource;
  @JsonKey(name: 'DeviceTimeZone')
  final String? deviceTimeZone;
  @JsonKey(name: 'DeviceLocalIPAddress')
  final String? deviceLocalIPAddress;
  @JsonKey(name: 'WifiSSID')
  final String? wifiSSID;
  @JsonKey(name: 'AndroidID')
  final String? androidID;
  @JsonKey(name: 'HashCode')
  final String? hashCode;
  @JsonKey(name: 'EfotaRegistrationStatus')
  final String? efotaRegistrationStatus;
  @JsonKey(name: 'CurrentFirmwareVersion')
  final String? currentFirmwareVersion;
  @JsonKey(name: 'GroupID')
  final String? groupID;
  @JsonKey(name: 'Protocol')
  final String? protocol;
  @JsonKey(name: 'TrackingOn')
  final String? trackingOn;
  @JsonKey(name: 'DefaultHome')
  final String? defaultHome;
  @JsonKey(name: 'SureLockLicense')
  final String? sureLockLicense;
  @JsonKey(name: 'SureFoxLicense')
  final String? sureFoxLicense;
  @JsonKey(name: 'SureVideoLicense')
  final String? sureVideoLicense;
  @JsonKey(name: 'batteryState')
  final String? batteryState;
  @JsonKey(name: 'StorageMemoryTotal')
  final String? storageMemoryTotal;
  @JsonKey(name: 'TotalPhysicalMemory')
  final String? totalPhysicalMemory;
  @JsonKey(name: 'DeviceApprovedStatus')
  final String? deviceApprovedStatus;
  @JsonKey(name: 'ThingsData')
  final String? thingsData;
  @JsonKey(name: 'TrackingInterval')
  final String? trackingInterval;
  @JsonKey(name: 'JobsFailed')
  final String? jobsFailed;
  @JsonKey(name: 'DJobsFailed')
  final String? dJobsFailed;
  @JsonKey(name: 'JobsDeployed')
  final String? jobsDeployed;
  @JsonKey(name: 'JobsInQueue')
  final String? jobsInQueue;
  @JsonKey(name: 'JobsInProgress')
  final String? jobsInProgress;
  @JsonKey(name: 'ConnectionStatus')
  final enums.PostDeviceResponseModel$Rows$ItemConnectionStatus?
      connectionStatus;
  @JsonKey(name: 'uDIDiOS')
  final dynamic uDIDiOS;
  @JsonKey(name: 'pushMagic')
  final dynamic pushMagic;
  @JsonKey(name: 'iOSToken')
  final dynamic iOSToken;
  @JsonKey(name: 'eASDeviceIdentifier')
  final dynamic eASDeviceIdentifier;
  @JsonKey(name: 'Customer ID')
  final String? customerID;
  @JsonKey(name: 'gcmid')
  final dynamic gcmid;
  @JsonKey(name: 'deviceUserID')
  final dynamic deviceUserID;
  @JsonKey(name: 'BackupBatteryPercent')
  final double? backupBatteryPercent;
  @JsonKey(name: 'backupBatteryLevel')
  final dynamic backupBatteryLevel;
  @JsonKey(name: 'backupBatteryState')
  final dynamic backupBatteryState;
  @JsonKey(name: 'organizationUnit')
  final dynamic organizationUnit;
  @JsonKey(name: 'DeviceBrand')
  final String? deviceBrand;
  @JsonKey(name: 'DeviceManufacture')
  final String? deviceManufacture;
  @JsonKey(name: 'activeSyncStatus')
  final dynamic activeSyncStatus;
  @JsonKey(name: 'camera')
  final dynamic camera;
  @JsonKey(name: 'fCMStatus')
  final dynamic fCMStatus;
  @JsonKey(name: 'gCMStatusCode')
  final dynamic gCMStatusCode;
  @JsonKey(name: 'incradle')
  final dynamic incradle;
  @JsonKey(name: 'IsSureLockDefaultLauncher')
  final String? isSureLockDefaultLauncher;
  @JsonKey(name: 'IsSureLockDeviceAdmin')
  final String? isSureLockDeviceAdmin;
  @JsonKey(name: 'IsSureLockKnox')
  final String? isSureLockKnox;
  @JsonKey(name: 'IsSureLockUsageAccessAllowed')
  final String? isSureLockUsageAccessAllowed;
  @JsonKey(name: 'IUsbDbuggingDisabled')
  final String? iUsbDbuggingDisabled;
  @JsonKey(name: 'Address')
  final String? address;
  @JsonKey(name: 'Longitute')
  final String? longitute;
  @JsonKey(name: 'Latitude')
  final String? latitude;
  @JsonKey(name: 'lockedUsing')
  final dynamic lockedUsing;
  @JsonKey(name: 'extraDeviceInfo')
  final dynamic extraDeviceInfo;
  @JsonKey(name: 'parentDeviceId')
  final dynamic parentDeviceId;
  @JsonKey(name: 'thingHashCode')
  final dynamic thingHashCode;
  @JsonKey(name: 'macName')
  final dynamic macName;
  @JsonKey(name: 'macType')
  final dynamic macType;
  @JsonKey(name: 'isConfigureSystemPermissionEnabled')
  final String? isConfigureSystemPermissionEnabled;
  @JsonKey(name: 'isDisplayOverOtherAppsEnabled')
  final String? isDisplayOverOtherAppsEnabled;
  @JsonKey(name: 'isCRPStorageStatus')
  final String? isCRPStorageStatus;
  @JsonKey(name: 'isCRPContactStatus')
  final String? isCRPContactStatus;
  @JsonKey(name: 'isCRPLocationStatus')
  final String? isCRPLocationStatus;
  @JsonKey(name: 'isCRPCameraStatus')
  final String? isCRPCameraStatus;
  @JsonKey(name: 'isCRPPhoneStatus')
  final String? isCRPPhoneStatus;
  @JsonKey(name: 'isCRPSmsStatus')
  final String? isCRPSmsStatus;
  @JsonKey(name: 'oSVersionSortVal')
  final dynamic oSVersionSortVal;
  @JsonKey(name: 'drivesStorageMemory')
  final dynamic drivesStorageMemory;
  @JsonKey(name: 'managementStatus')
  final dynamic managementStatus;
  static const fromJsonFactory = _$PostDeviceResponseModel$Rows$ItemFromJson;
  static const toJsonFactory = _$PostDeviceResponseModel$Rows$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$PostDeviceResponseModel$Rows$ItemToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PostDeviceResponseModel$Rows$Item &&
            (identical(other.deviceID, deviceID) ||
                const DeepCollectionEquality()
                    .equals(other.deviceID, deviceID)) &&
            (identical(other.enrollmentMode, enrollmentMode) ||
                const DeepCollectionEquality()
                    .equals(other.enrollmentMode, enrollmentMode)) &&
            (identical(other.locationTimeStamp, locationTimeStamp) ||
                const DeepCollectionEquality()
                    .equals(other.locationTimeStamp, locationTimeStamp)) &&
            (identical(other.deviceName, deviceName) ||
                const DeepCollectionEquality()
                    .equals(other.deviceName, deviceName)) &&
            (identical(other.deviceModelName, deviceModelName) ||
                const DeepCollectionEquality()
                    .equals(other.deviceModelName, deviceModelName)) &&
            (identical(other.platformType, platformType) ||
                const DeepCollectionEquality()
                    .equals(other.platformType, platformType)) &&
            (identical(other.lastTimeStamp, lastTimeStamp) ||
                const DeepCollectionEquality()
                    .equals(other.lastTimeStamp, lastTimeStamp)) &&
            (identical(other.agentVersion, agentVersion) ||
                const DeepCollectionEquality()
                    .equals(other.agentVersion, agentVersion)) &&
            (identical(other.battery, battery) ||
                const DeepCollectionEquality()
                    .equals(other.battery, battery)) &&
            (identical(other.phoneSignal, phoneSignal) ||
                const DeepCollectionEquality()
                    .equals(other.phoneSignal, phoneSignal)) &&
            (identical(other.$Operator, $Operator) ||
                const DeepCollectionEquality()
                    .equals(other.$Operator, $Operator)) &&
            (identical(other.deviceIPAddress, deviceIPAddress) ||
                const DeepCollectionEquality()
                    .equals(other.deviceIPAddress, deviceIPAddress)) &&
            (identical(other.deviceTimeStamp, deviceTimeStamp) ||
                const DeepCollectionEquality()
                    .equals(other.deviceTimeStamp, deviceTimeStamp)) &&
            (identical(other.phoneRoaming, phoneRoaming) ||
                const DeepCollectionEquality()
                    .equals(other.phoneRoaming, phoneRoaming)) &&
            (identical(other.sureLockVersion, sureLockVersion) ||
                const DeepCollectionEquality()
                    .equals(other.sureLockVersion, sureLockVersion)) &&
            (identical(other.sureVideoVersion, sureVideoVersion) ||
                const DeepCollectionEquality()
                    .equals(other.sureVideoVersion, sureVideoVersion)) &&
            (identical(other.sureFoxVersion, sureFoxVersion) ||
                const DeepCollectionEquality()
                    .equals(other.sureFoxVersion, sureFoxVersion)) &&
            (identical(other.rootStatus, rootStatus) ||
                const DeepCollectionEquality()
                    .equals(other.rootStatus, rootStatus)) &&
            (identical(other.knoxStatus, knoxStatus) ||
                const DeepCollectionEquality()
                    .equals(other.knoxStatus, knoxStatus)) &&
            (identical(other.releaseVersion, releaseVersion) ||
                const DeepCollectionEquality()
                    .equals(other.releaseVersion, releaseVersion)) &&
            (identical(other.imei, imei) ||
                const DeepCollectionEquality().equals(other.imei, imei)) &&
            (identical(other.deviceRegistered, deviceRegistered) ||
                const DeepCollectionEquality()
                    .equals(other.deviceRegistered, deviceRegistered)) &&
            (identical(other.dataUsage, dataUsage) || const DeepCollectionEquality().equals(other.dataUsage, dataUsage)) &&
            (identical(other.cpuUsage, cpuUsage) || const DeepCollectionEquality().equals(other.cpuUsage, cpuUsage)) &&
            (identical(other.gpuUsage, gpuUsage) || const DeepCollectionEquality().equals(other.gpuUsage, gpuUsage)) &&
            (identical(other.temperature, temperature) || const DeepCollectionEquality().equals(other.temperature, temperature)) &&
            (identical(other.isSupervised, isSupervised) || const DeepCollectionEquality().equals(other.isSupervised, isSupervised)) &&
            (identical(other.isenrolled, isenrolled) || const DeepCollectionEquality().equals(other.isenrolled, isenrolled)) &&
            (identical(other.notes, notes) || const DeepCollectionEquality().equals(other.notes, notes)) &&
            (identical(other.nixPollingType, nixPollingType) || const DeepCollectionEquality().equals(other.nixPollingType, nixPollingType)) &&
            (identical(other.networkType, networkType) || const DeepCollectionEquality().equals(other.networkType, networkType)) &&
            (identical(other.serialNumber, serialNumber) || const DeepCollectionEquality().equals(other.serialNumber, serialNumber)) &&
            (identical(other.phoneNumber, phoneNumber) || const DeepCollectionEquality().equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.deviceUserName, deviceUserName) || const DeepCollectionEquality().equals(other.deviceUserName, deviceUserName)) &&
            (identical(other.gPSEnabled, gPSEnabled) || const DeepCollectionEquality().equals(other.gPSEnabled, gPSEnabled)) &&
            (identical(other.simSerialNumber, simSerialNumber) || const DeepCollectionEquality().equals(other.simSerialNumber, simSerialNumber)) &&
            (identical(other.bluetoothEnabled, bluetoothEnabled) || const DeepCollectionEquality().equals(other.bluetoothEnabled, bluetoothEnabled)) &&
            (identical(other.uSBPluggedIn, uSBPluggedIn) || const DeepCollectionEquality().equals(other.uSBPluggedIn, uSBPluggedIn)) &&
            (identical(other.bssid, bssid) || const DeepCollectionEquality().equals(other.bssid, bssid)) &&
            (identical(other.sureLockSettingsVersionCode, sureLockSettingsVersionCode) || const DeepCollectionEquality().equals(other.sureLockSettingsVersionCode, sureLockSettingsVersionCode)) &&
            (identical(other.osBuildNumber, osBuildNumber) || const DeepCollectionEquality().equals(other.osBuildNumber, osBuildNumber)) &&
            (identical(other.memoryStorageAvailable, memoryStorageAvailable) || const DeepCollectionEquality().equals(other.memoryStorageAvailable, memoryStorageAvailable)) &&
            (identical(other.availablePhysicalMemory, availablePhysicalMemory) || const DeepCollectionEquality().equals(other.availablePhysicalMemory, availablePhysicalMemory)) &&
            (identical(other.realDeviceName, realDeviceName) || const DeepCollectionEquality().equals(other.realDeviceName, realDeviceName)) &&
            (identical(other.securityPatchDate, securityPatchDate) || const DeepCollectionEquality().equals(other.securityPatchDate, securityPatchDate)) &&
            (identical(other.afwProfile, afwProfile) || const DeepCollectionEquality().equals(other.afwProfile, afwProfile)) &&
            (identical(other.deviceGroupPath, deviceGroupPath) || const DeepCollectionEquality().equals(other.deviceGroupPath, deviceGroupPath)) &&
            (identical(other.mTPSystemScanTimeStamp, mTPSystemScanTimeStamp) || const DeepCollectionEquality().equals(other.mTPSystemScanTimeStamp, mTPSystemScanTimeStamp)) &&
            (identical(other.mTPSystemScanThreatCount, mTPSystemScanThreatCount) || const DeepCollectionEquality().equals(other.mTPSystemScanThreatCount, mTPSystemScanThreatCount)) &&
            (identical(other.isMobileHotSpotEnabled, isMobileHotSpotEnabled) || const DeepCollectionEquality().equals(other.isMobileHotSpotEnabled, isMobileHotSpotEnabled)) &&
            (identical(other.isEncryptionEnabled, isEncryptionEnabled) || const DeepCollectionEquality().equals(other.isEncryptionEnabled, isEncryptionEnabled)) &&
            (identical(other.imei2, imei2) || const DeepCollectionEquality().equals(other.imei2, imei2)) &&
            (identical(other.ctsProfileMatch, ctsProfileMatch) || const DeepCollectionEquality().equals(other.ctsProfileMatch, ctsProfileMatch)) &&
            (identical(other.basicIntegrity, basicIntegrity) || const DeepCollectionEquality().equals(other.basicIntegrity, basicIntegrity)) &&
            (identical(other.verifyAppEnable, verifyAppEnable) || const DeepCollectionEquality().equals(other.verifyAppEnable, verifyAppEnable)) &&
            (identical(other.aDBEnable, aDBEnable) || const DeepCollectionEquality().equals(other.aDBEnable, aDBEnable)) &&
            (identical(other.allowUnknownSource, allowUnknownSource) || const DeepCollectionEquality().equals(other.allowUnknownSource, allowUnknownSource)) &&
            (identical(other.deviceTimeZone, deviceTimeZone) || const DeepCollectionEquality().equals(other.deviceTimeZone, deviceTimeZone)) &&
            (identical(other.deviceLocalIPAddress, deviceLocalIPAddress) || const DeepCollectionEquality().equals(other.deviceLocalIPAddress, deviceLocalIPAddress)) &&
            (identical(other.wifiSSID, wifiSSID) || const DeepCollectionEquality().equals(other.wifiSSID, wifiSSID)) &&
            (identical(other.androidID, androidID) || const DeepCollectionEquality().equals(other.androidID, androidID)) &&
            (identical(other.hashCode, hashCode) || const DeepCollectionEquality().equals(other.hashCode, hashCode)) &&
            (identical(other.efotaRegistrationStatus, efotaRegistrationStatus) || const DeepCollectionEquality().equals(other.efotaRegistrationStatus, efotaRegistrationStatus)) &&
            (identical(other.currentFirmwareVersion, currentFirmwareVersion) || const DeepCollectionEquality().equals(other.currentFirmwareVersion, currentFirmwareVersion)) &&
            (identical(other.groupID, groupID) || const DeepCollectionEquality().equals(other.groupID, groupID)) &&
            (identical(other.protocol, protocol) || const DeepCollectionEquality().equals(other.protocol, protocol)) &&
            (identical(other.trackingOn, trackingOn) || const DeepCollectionEquality().equals(other.trackingOn, trackingOn)) &&
            (identical(other.defaultHome, defaultHome) || const DeepCollectionEquality().equals(other.defaultHome, defaultHome)) &&
            (identical(other.sureLockLicense, sureLockLicense) || const DeepCollectionEquality().equals(other.sureLockLicense, sureLockLicense)) &&
            (identical(other.sureFoxLicense, sureFoxLicense) || const DeepCollectionEquality().equals(other.sureFoxLicense, sureFoxLicense)) &&
            (identical(other.sureVideoLicense, sureVideoLicense) || const DeepCollectionEquality().equals(other.sureVideoLicense, sureVideoLicense)) &&
            (identical(other.batteryState, batteryState) || const DeepCollectionEquality().equals(other.batteryState, batteryState)) &&
            (identical(other.storageMemoryTotal, storageMemoryTotal) || const DeepCollectionEquality().equals(other.storageMemoryTotal, storageMemoryTotal)) &&
            (identical(other.totalPhysicalMemory, totalPhysicalMemory) || const DeepCollectionEquality().equals(other.totalPhysicalMemory, totalPhysicalMemory)) &&
            (identical(other.deviceApprovedStatus, deviceApprovedStatus) || const DeepCollectionEquality().equals(other.deviceApprovedStatus, deviceApprovedStatus)) &&
            (identical(other.thingsData, thingsData) || const DeepCollectionEquality().equals(other.thingsData, thingsData)) &&
            (identical(other.trackingInterval, trackingInterval) || const DeepCollectionEquality().equals(other.trackingInterval, trackingInterval)) &&
            (identical(other.jobsFailed, jobsFailed) || const DeepCollectionEquality().equals(other.jobsFailed, jobsFailed)) &&
            (identical(other.dJobsFailed, dJobsFailed) || const DeepCollectionEquality().equals(other.dJobsFailed, dJobsFailed)) &&
            (identical(other.jobsDeployed, jobsDeployed) || const DeepCollectionEquality().equals(other.jobsDeployed, jobsDeployed)) &&
            (identical(other.jobsInQueue, jobsInQueue) || const DeepCollectionEquality().equals(other.jobsInQueue, jobsInQueue)) &&
            (identical(other.jobsInProgress, jobsInProgress) || const DeepCollectionEquality().equals(other.jobsInProgress, jobsInProgress)) &&
            (identical(other.connectionStatus, connectionStatus) || const DeepCollectionEquality().equals(other.connectionStatus, connectionStatus)) &&
            (identical(other.uDIDiOS, uDIDiOS) || const DeepCollectionEquality().equals(other.uDIDiOS, uDIDiOS)) &&
            (identical(other.pushMagic, pushMagic) || const DeepCollectionEquality().equals(other.pushMagic, pushMagic)) &&
            (identical(other.iOSToken, iOSToken) || const DeepCollectionEquality().equals(other.iOSToken, iOSToken)) &&
            (identical(other.eASDeviceIdentifier, eASDeviceIdentifier) || const DeepCollectionEquality().equals(other.eASDeviceIdentifier, eASDeviceIdentifier)) &&
            (identical(other.customerID, customerID) || const DeepCollectionEquality().equals(other.customerID, customerID)) &&
            (identical(other.gcmid, gcmid) || const DeepCollectionEquality().equals(other.gcmid, gcmid)) &&
            (identical(other.deviceUserID, deviceUserID) || const DeepCollectionEquality().equals(other.deviceUserID, deviceUserID)) &&
            (identical(other.backupBatteryPercent, backupBatteryPercent) || const DeepCollectionEquality().equals(other.backupBatteryPercent, backupBatteryPercent)) &&
            (identical(other.backupBatteryLevel, backupBatteryLevel) || const DeepCollectionEquality().equals(other.backupBatteryLevel, backupBatteryLevel)) &&
            (identical(other.backupBatteryState, backupBatteryState) || const DeepCollectionEquality().equals(other.backupBatteryState, backupBatteryState)) &&
            (identical(other.organizationUnit, organizationUnit) || const DeepCollectionEquality().equals(other.organizationUnit, organizationUnit)) &&
            (identical(other.deviceBrand, deviceBrand) || const DeepCollectionEquality().equals(other.deviceBrand, deviceBrand)) &&
            (identical(other.deviceManufacture, deviceManufacture) || const DeepCollectionEquality().equals(other.deviceManufacture, deviceManufacture)) &&
            (identical(other.activeSyncStatus, activeSyncStatus) || const DeepCollectionEquality().equals(other.activeSyncStatus, activeSyncStatus)) &&
            (identical(other.camera, camera) || const DeepCollectionEquality().equals(other.camera, camera)) &&
            (identical(other.fCMStatus, fCMStatus) || const DeepCollectionEquality().equals(other.fCMStatus, fCMStatus)) &&
            (identical(other.gCMStatusCode, gCMStatusCode) || const DeepCollectionEquality().equals(other.gCMStatusCode, gCMStatusCode)) &&
            (identical(other.incradle, incradle) || const DeepCollectionEquality().equals(other.incradle, incradle)) &&
            (identical(other.isSureLockDefaultLauncher, isSureLockDefaultLauncher) || const DeepCollectionEquality().equals(other.isSureLockDefaultLauncher, isSureLockDefaultLauncher)) &&
            (identical(other.isSureLockDeviceAdmin, isSureLockDeviceAdmin) || const DeepCollectionEquality().equals(other.isSureLockDeviceAdmin, isSureLockDeviceAdmin)) &&
            (identical(other.isSureLockKnox, isSureLockKnox) || const DeepCollectionEquality().equals(other.isSureLockKnox, isSureLockKnox)) &&
            (identical(other.isSureLockUsageAccessAllowed, isSureLockUsageAccessAllowed) || const DeepCollectionEquality().equals(other.isSureLockUsageAccessAllowed, isSureLockUsageAccessAllowed)) &&
            (identical(other.iUsbDbuggingDisabled, iUsbDbuggingDisabled) || const DeepCollectionEquality().equals(other.iUsbDbuggingDisabled, iUsbDbuggingDisabled)) &&
            (identical(other.address, address) || const DeepCollectionEquality().equals(other.address, address)) &&
            (identical(other.longitute, longitute) || const DeepCollectionEquality().equals(other.longitute, longitute)) &&
            (identical(other.latitude, latitude) || const DeepCollectionEquality().equals(other.latitude, latitude)) &&
            (identical(other.lockedUsing, lockedUsing) || const DeepCollectionEquality().equals(other.lockedUsing, lockedUsing)) &&
            (identical(other.extraDeviceInfo, extraDeviceInfo) || const DeepCollectionEquality().equals(other.extraDeviceInfo, extraDeviceInfo)) &&
            (identical(other.parentDeviceId, parentDeviceId) || const DeepCollectionEquality().equals(other.parentDeviceId, parentDeviceId)) &&
            (identical(other.thingHashCode, thingHashCode) || const DeepCollectionEquality().equals(other.thingHashCode, thingHashCode)) &&
            (identical(other.macName, macName) || const DeepCollectionEquality().equals(other.macName, macName)) &&
            (identical(other.macType, macType) || const DeepCollectionEquality().equals(other.macType, macType)) &&
            (identical(other.isConfigureSystemPermissionEnabled, isConfigureSystemPermissionEnabled) || const DeepCollectionEquality().equals(other.isConfigureSystemPermissionEnabled, isConfigureSystemPermissionEnabled)) &&
            (identical(other.isDisplayOverOtherAppsEnabled, isDisplayOverOtherAppsEnabled) || const DeepCollectionEquality().equals(other.isDisplayOverOtherAppsEnabled, isDisplayOverOtherAppsEnabled)) &&
            (identical(other.isCRPStorageStatus, isCRPStorageStatus) || const DeepCollectionEquality().equals(other.isCRPStorageStatus, isCRPStorageStatus)) &&
            (identical(other.isCRPContactStatus, isCRPContactStatus) || const DeepCollectionEquality().equals(other.isCRPContactStatus, isCRPContactStatus)) &&
            (identical(other.isCRPLocationStatus, isCRPLocationStatus) || const DeepCollectionEquality().equals(other.isCRPLocationStatus, isCRPLocationStatus)) &&
            (identical(other.isCRPCameraStatus, isCRPCameraStatus) || const DeepCollectionEquality().equals(other.isCRPCameraStatus, isCRPCameraStatus)) &&
            (identical(other.isCRPPhoneStatus, isCRPPhoneStatus) || const DeepCollectionEquality().equals(other.isCRPPhoneStatus, isCRPPhoneStatus)) &&
            (identical(other.isCRPSmsStatus, isCRPSmsStatus) || const DeepCollectionEquality().equals(other.isCRPSmsStatus, isCRPSmsStatus)) &&
            (identical(other.oSVersionSortVal, oSVersionSortVal) || const DeepCollectionEquality().equals(other.oSVersionSortVal, oSVersionSortVal)) &&
            (identical(other.drivesStorageMemory, drivesStorageMemory) || const DeepCollectionEquality().equals(other.drivesStorageMemory, drivesStorageMemory)) &&
            (identical(other.managementStatus, managementStatus) || const DeepCollectionEquality().equals(other.managementStatus, managementStatus)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(deviceID) ^
      const DeepCollectionEquality().hash(enrollmentMode) ^
      const DeepCollectionEquality().hash(locationTimeStamp) ^
      const DeepCollectionEquality().hash(deviceName) ^
      const DeepCollectionEquality().hash(deviceModelName) ^
      const DeepCollectionEquality().hash(platformType) ^
      const DeepCollectionEquality().hash(lastTimeStamp) ^
      const DeepCollectionEquality().hash(agentVersion) ^
      const DeepCollectionEquality().hash(battery) ^
      const DeepCollectionEquality().hash(phoneSignal) ^
      const DeepCollectionEquality().hash($Operator) ^
      const DeepCollectionEquality().hash(deviceIPAddress) ^
      const DeepCollectionEquality().hash(deviceTimeStamp) ^
      const DeepCollectionEquality().hash(phoneRoaming) ^
      const DeepCollectionEquality().hash(sureLockVersion) ^
      const DeepCollectionEquality().hash(sureVideoVersion) ^
      const DeepCollectionEquality().hash(sureFoxVersion) ^
      const DeepCollectionEquality().hash(rootStatus) ^
      const DeepCollectionEquality().hash(knoxStatus) ^
      const DeepCollectionEquality().hash(releaseVersion) ^
      const DeepCollectionEquality().hash(imei) ^
      const DeepCollectionEquality().hash(deviceRegistered) ^
      const DeepCollectionEquality().hash(dataUsage) ^
      const DeepCollectionEquality().hash(cpuUsage) ^
      const DeepCollectionEquality().hash(gpuUsage) ^
      const DeepCollectionEquality().hash(temperature) ^
      const DeepCollectionEquality().hash(isSupervised) ^
      const DeepCollectionEquality().hash(isenrolled) ^
      const DeepCollectionEquality().hash(notes) ^
      const DeepCollectionEquality().hash(nixPollingType) ^
      const DeepCollectionEquality().hash(networkType) ^
      const DeepCollectionEquality().hash(serialNumber) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(deviceUserName) ^
      const DeepCollectionEquality().hash(gPSEnabled) ^
      const DeepCollectionEquality().hash(simSerialNumber) ^
      const DeepCollectionEquality().hash(bluetoothEnabled) ^
      const DeepCollectionEquality().hash(uSBPluggedIn) ^
      const DeepCollectionEquality().hash(bssid) ^
      const DeepCollectionEquality().hash(sureLockSettingsVersionCode) ^
      const DeepCollectionEquality().hash(osBuildNumber) ^
      const DeepCollectionEquality().hash(memoryStorageAvailable) ^
      const DeepCollectionEquality().hash(availablePhysicalMemory) ^
      const DeepCollectionEquality().hash(realDeviceName) ^
      const DeepCollectionEquality().hash(securityPatchDate) ^
      const DeepCollectionEquality().hash(afwProfile) ^
      const DeepCollectionEquality().hash(deviceGroupPath) ^
      const DeepCollectionEquality().hash(mTPSystemScanTimeStamp) ^
      const DeepCollectionEquality().hash(mTPSystemScanThreatCount) ^
      const DeepCollectionEquality().hash(isMobileHotSpotEnabled) ^
      const DeepCollectionEquality().hash(isEncryptionEnabled) ^
      const DeepCollectionEquality().hash(imei2) ^
      const DeepCollectionEquality().hash(ctsProfileMatch) ^
      const DeepCollectionEquality().hash(basicIntegrity) ^
      const DeepCollectionEquality().hash(verifyAppEnable) ^
      const DeepCollectionEquality().hash(aDBEnable) ^
      const DeepCollectionEquality().hash(allowUnknownSource) ^
      const DeepCollectionEquality().hash(deviceTimeZone) ^
      const DeepCollectionEquality().hash(deviceLocalIPAddress) ^
      const DeepCollectionEquality().hash(wifiSSID) ^
      const DeepCollectionEquality().hash(androidID) ^
      const DeepCollectionEquality().hash(hashCode) ^
      const DeepCollectionEquality().hash(efotaRegistrationStatus) ^
      const DeepCollectionEquality().hash(currentFirmwareVersion) ^
      const DeepCollectionEquality().hash(groupID) ^
      const DeepCollectionEquality().hash(protocol) ^
      const DeepCollectionEquality().hash(trackingOn) ^
      const DeepCollectionEquality().hash(defaultHome) ^
      const DeepCollectionEquality().hash(sureLockLicense) ^
      const DeepCollectionEquality().hash(sureFoxLicense) ^
      const DeepCollectionEquality().hash(sureVideoLicense) ^
      const DeepCollectionEquality().hash(batteryState) ^
      const DeepCollectionEquality().hash(storageMemoryTotal) ^
      const DeepCollectionEquality().hash(totalPhysicalMemory) ^
      const DeepCollectionEquality().hash(deviceApprovedStatus) ^
      const DeepCollectionEquality().hash(thingsData) ^
      const DeepCollectionEquality().hash(trackingInterval) ^
      const DeepCollectionEquality().hash(jobsFailed) ^
      const DeepCollectionEquality().hash(dJobsFailed) ^
      const DeepCollectionEquality().hash(jobsDeployed) ^
      const DeepCollectionEquality().hash(jobsInQueue) ^
      const DeepCollectionEquality().hash(jobsInProgress) ^
      const DeepCollectionEquality().hash(connectionStatus) ^
      const DeepCollectionEquality().hash(uDIDiOS) ^
      const DeepCollectionEquality().hash(pushMagic) ^
      const DeepCollectionEquality().hash(iOSToken) ^
      const DeepCollectionEquality().hash(eASDeviceIdentifier) ^
      const DeepCollectionEquality().hash(customerID) ^
      const DeepCollectionEquality().hash(gcmid) ^
      const DeepCollectionEquality().hash(deviceUserID) ^
      const DeepCollectionEquality().hash(backupBatteryPercent) ^
      const DeepCollectionEquality().hash(backupBatteryLevel) ^
      const DeepCollectionEquality().hash(backupBatteryState) ^
      const DeepCollectionEquality().hash(organizationUnit) ^
      const DeepCollectionEquality().hash(deviceBrand) ^
      const DeepCollectionEquality().hash(deviceManufacture) ^
      const DeepCollectionEquality().hash(activeSyncStatus) ^
      const DeepCollectionEquality().hash(camera) ^
      const DeepCollectionEquality().hash(fCMStatus) ^
      const DeepCollectionEquality().hash(gCMStatusCode) ^
      const DeepCollectionEquality().hash(incradle) ^
      const DeepCollectionEquality().hash(isSureLockDefaultLauncher) ^
      const DeepCollectionEquality().hash(isSureLockDeviceAdmin) ^
      const DeepCollectionEquality().hash(isSureLockKnox) ^
      const DeepCollectionEquality().hash(isSureLockUsageAccessAllowed) ^
      const DeepCollectionEquality().hash(iUsbDbuggingDisabled) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(longitute) ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(lockedUsing) ^
      const DeepCollectionEquality().hash(extraDeviceInfo) ^
      const DeepCollectionEquality().hash(parentDeviceId) ^
      const DeepCollectionEquality().hash(thingHashCode) ^
      const DeepCollectionEquality().hash(macName) ^
      const DeepCollectionEquality().hash(macType) ^
      const DeepCollectionEquality().hash(isConfigureSystemPermissionEnabled) ^
      const DeepCollectionEquality().hash(isDisplayOverOtherAppsEnabled) ^
      const DeepCollectionEquality().hash(isCRPStorageStatus) ^
      const DeepCollectionEquality().hash(isCRPContactStatus) ^
      const DeepCollectionEquality().hash(isCRPLocationStatus) ^
      const DeepCollectionEquality().hash(isCRPCameraStatus) ^
      const DeepCollectionEquality().hash(isCRPPhoneStatus) ^
      const DeepCollectionEquality().hash(isCRPSmsStatus) ^
      const DeepCollectionEquality().hash(oSVersionSortVal) ^
      const DeepCollectionEquality().hash(drivesStorageMemory) ^
      const DeepCollectionEquality().hash(managementStatus) ^
      runtimeType.hashCode;
}

extension $PostDeviceResponseModel$Rows$ItemExtension
    on PostDeviceResponseModel$Rows$Item {
  PostDeviceResponseModel$Rows$Item copyWith(
      {String? deviceID,
      String? enrollmentMode,
      String? locationTimeStamp,
      String? deviceName,
      String? deviceModelName,
      String? platformType,
      String? lastTimeStamp,
      String? agentVersion,
      String? battery,
      String? phoneSignal,
      String? $Operator,
      String? deviceIPAddress,
      String? deviceTimeStamp,
      String? phoneRoaming,
      String? sureLockVersion,
      String? sureVideoVersion,
      String? sureFoxVersion,
      String? rootStatus,
      String? knoxStatus,
      String? releaseVersion,
      String? imei,
      String? deviceRegistered,
      String? dataUsage,
      String? cpuUsage,
      String? gpuUsage,
      String? temperature,
      String? isSupervised,
      String? isenrolled,
      String? notes,
      String? nixPollingType,
      String? networkType,
      String? serialNumber,
      String? phoneNumber,
      String? deviceUserName,
      String? gPSEnabled,
      String? simSerialNumber,
      String? bluetoothEnabled,
      String? uSBPluggedIn,
      String? bssid,
      String? sureLockSettingsVersionCode,
      String? osBuildNumber,
      String? memoryStorageAvailable,
      String? availablePhysicalMemory,
      String? realDeviceName,
      String? securityPatchDate,
      String? afwProfile,
      String? deviceGroupPath,
      String? mTPSystemScanTimeStamp,
      String? mTPSystemScanThreatCount,
      String? isMobileHotSpotEnabled,
      String? isEncryptionEnabled,
      String? imei2,
      String? ctsProfileMatch,
      String? basicIntegrity,
      String? verifyAppEnable,
      String? aDBEnable,
      String? allowUnknownSource,
      String? deviceTimeZone,
      String? deviceLocalIPAddress,
      String? wifiSSID,
      String? androidID,
      String? hashCode,
      String? efotaRegistrationStatus,
      String? currentFirmwareVersion,
      String? groupID,
      String? protocol,
      String? trackingOn,
      String? defaultHome,
      String? sureLockLicense,
      String? sureFoxLicense,
      String? sureVideoLicense,
      String? batteryState,
      String? storageMemoryTotal,
      String? totalPhysicalMemory,
      String? deviceApprovedStatus,
      String? thingsData,
      String? trackingInterval,
      String? jobsFailed,
      String? dJobsFailed,
      String? jobsDeployed,
      String? jobsInQueue,
      String? jobsInProgress,
      enums.PostDeviceResponseModel$Rows$ItemConnectionStatus? connectionStatus,
      dynamic uDIDiOS,
      dynamic pushMagic,
      dynamic iOSToken,
      dynamic eASDeviceIdentifier,
      String? customerID,
      dynamic gcmid,
      dynamic deviceUserID,
      double? backupBatteryPercent,
      dynamic backupBatteryLevel,
      dynamic backupBatteryState,
      dynamic organizationUnit,
      String? deviceBrand,
      String? deviceManufacture,
      dynamic activeSyncStatus,
      dynamic camera,
      dynamic fCMStatus,
      dynamic gCMStatusCode,
      dynamic incradle,
      String? isSureLockDefaultLauncher,
      String? isSureLockDeviceAdmin,
      String? isSureLockKnox,
      String? isSureLockUsageAccessAllowed,
      String? iUsbDbuggingDisabled,
      String? address,
      String? longitute,
      String? latitude,
      dynamic lockedUsing,
      dynamic extraDeviceInfo,
      dynamic parentDeviceId,
      dynamic thingHashCode,
      dynamic macName,
      dynamic macType,
      String? isConfigureSystemPermissionEnabled,
      String? isDisplayOverOtherAppsEnabled,
      String? isCRPStorageStatus,
      String? isCRPContactStatus,
      String? isCRPLocationStatus,
      String? isCRPCameraStatus,
      String? isCRPPhoneStatus,
      String? isCRPSmsStatus,
      dynamic oSVersionSortVal,
      dynamic drivesStorageMemory,
      dynamic managementStatus}) {
    return PostDeviceResponseModel$Rows$Item(
        deviceID: deviceID ?? this.deviceID,
        enrollmentMode: enrollmentMode ?? this.enrollmentMode,
        locationTimeStamp: locationTimeStamp ?? this.locationTimeStamp,
        deviceName: deviceName ?? this.deviceName,
        deviceModelName: deviceModelName ?? this.deviceModelName,
        platformType: platformType ?? this.platformType,
        lastTimeStamp: lastTimeStamp ?? this.lastTimeStamp,
        agentVersion: agentVersion ?? this.agentVersion,
        battery: battery ?? this.battery,
        phoneSignal: phoneSignal ?? this.phoneSignal,
        $Operator: $Operator ?? this.$Operator,
        deviceIPAddress: deviceIPAddress ?? this.deviceIPAddress,
        deviceTimeStamp: deviceTimeStamp ?? this.deviceTimeStamp,
        phoneRoaming: phoneRoaming ?? this.phoneRoaming,
        sureLockVersion: sureLockVersion ?? this.sureLockVersion,
        sureVideoVersion: sureVideoVersion ?? this.sureVideoVersion,
        sureFoxVersion: sureFoxVersion ?? this.sureFoxVersion,
        rootStatus: rootStatus ?? this.rootStatus,
        knoxStatus: knoxStatus ?? this.knoxStatus,
        releaseVersion: releaseVersion ?? this.releaseVersion,
        imei: imei ?? this.imei,
        deviceRegistered: deviceRegistered ?? this.deviceRegistered,
        dataUsage: dataUsage ?? this.dataUsage,
        cpuUsage: cpuUsage ?? this.cpuUsage,
        gpuUsage: gpuUsage ?? this.gpuUsage,
        temperature: temperature ?? this.temperature,
        isSupervised: isSupervised ?? this.isSupervised,
        isenrolled: isenrolled ?? this.isenrolled,
        notes: notes ?? this.notes,
        nixPollingType: nixPollingType ?? this.nixPollingType,
        networkType: networkType ?? this.networkType,
        serialNumber: serialNumber ?? this.serialNumber,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        deviceUserName: deviceUserName ?? this.deviceUserName,
        gPSEnabled: gPSEnabled ?? this.gPSEnabled,
        simSerialNumber: simSerialNumber ?? this.simSerialNumber,
        bluetoothEnabled: bluetoothEnabled ?? this.bluetoothEnabled,
        uSBPluggedIn: uSBPluggedIn ?? this.uSBPluggedIn,
        bssid: bssid ?? this.bssid,
        sureLockSettingsVersionCode:
            sureLockSettingsVersionCode ?? this.sureLockSettingsVersionCode,
        osBuildNumber: osBuildNumber ?? this.osBuildNumber,
        memoryStorageAvailable:
            memoryStorageAvailable ?? this.memoryStorageAvailable,
        availablePhysicalMemory:
            availablePhysicalMemory ?? this.availablePhysicalMemory,
        realDeviceName: realDeviceName ?? this.realDeviceName,
        securityPatchDate: securityPatchDate ?? this.securityPatchDate,
        afwProfile: afwProfile ?? this.afwProfile,
        deviceGroupPath: deviceGroupPath ?? this.deviceGroupPath,
        mTPSystemScanTimeStamp:
            mTPSystemScanTimeStamp ?? this.mTPSystemScanTimeStamp,
        mTPSystemScanThreatCount:
            mTPSystemScanThreatCount ?? this.mTPSystemScanThreatCount,
        isMobileHotSpotEnabled:
            isMobileHotSpotEnabled ?? this.isMobileHotSpotEnabled,
        isEncryptionEnabled: isEncryptionEnabled ?? this.isEncryptionEnabled,
        imei2: imei2 ?? this.imei2,
        ctsProfileMatch: ctsProfileMatch ?? this.ctsProfileMatch,
        basicIntegrity: basicIntegrity ?? this.basicIntegrity,
        verifyAppEnable: verifyAppEnable ?? this.verifyAppEnable,
        aDBEnable: aDBEnable ?? this.aDBEnable,
        allowUnknownSource: allowUnknownSource ?? this.allowUnknownSource,
        deviceTimeZone: deviceTimeZone ?? this.deviceTimeZone,
        deviceLocalIPAddress: deviceLocalIPAddress ?? this.deviceLocalIPAddress,
        wifiSSID: wifiSSID ?? this.wifiSSID,
        androidID: androidID ?? this.androidID,
        hashCode: hashCode ?? this.hashCode,
        efotaRegistrationStatus:
            efotaRegistrationStatus ?? this.efotaRegistrationStatus,
        currentFirmwareVersion:
            currentFirmwareVersion ?? this.currentFirmwareVersion,
        groupID: groupID ?? this.groupID,
        protocol: protocol ?? this.protocol,
        trackingOn: trackingOn ?? this.trackingOn,
        defaultHome: defaultHome ?? this.defaultHome,
        sureLockLicense: sureLockLicense ?? this.sureLockLicense,
        sureFoxLicense: sureFoxLicense ?? this.sureFoxLicense,
        sureVideoLicense: sureVideoLicense ?? this.sureVideoLicense,
        batteryState: batteryState ?? this.batteryState,
        storageMemoryTotal: storageMemoryTotal ?? this.storageMemoryTotal,
        totalPhysicalMemory: totalPhysicalMemory ?? this.totalPhysicalMemory,
        deviceApprovedStatus: deviceApprovedStatus ?? this.deviceApprovedStatus,
        thingsData: thingsData ?? this.thingsData,
        trackingInterval: trackingInterval ?? this.trackingInterval,
        jobsFailed: jobsFailed ?? this.jobsFailed,
        dJobsFailed: dJobsFailed ?? this.dJobsFailed,
        jobsDeployed: jobsDeployed ?? this.jobsDeployed,
        jobsInQueue: jobsInQueue ?? this.jobsInQueue,
        jobsInProgress: jobsInProgress ?? this.jobsInProgress,
        connectionStatus: connectionStatus ?? this.connectionStatus,
        uDIDiOS: uDIDiOS ?? this.uDIDiOS,
        pushMagic: pushMagic ?? this.pushMagic,
        iOSToken: iOSToken ?? this.iOSToken,
        eASDeviceIdentifier: eASDeviceIdentifier ?? this.eASDeviceIdentifier,
        customerID: customerID ?? this.customerID,
        gcmid: gcmid ?? this.gcmid,
        deviceUserID: deviceUserID ?? this.deviceUserID,
        backupBatteryPercent: backupBatteryPercent ?? this.backupBatteryPercent,
        backupBatteryLevel: backupBatteryLevel ?? this.backupBatteryLevel,
        backupBatteryState: backupBatteryState ?? this.backupBatteryState,
        organizationUnit: organizationUnit ?? this.organizationUnit,
        deviceBrand: deviceBrand ?? this.deviceBrand,
        deviceManufacture: deviceManufacture ?? this.deviceManufacture,
        activeSyncStatus: activeSyncStatus ?? this.activeSyncStatus,
        camera: camera ?? this.camera,
        fCMStatus: fCMStatus ?? this.fCMStatus,
        gCMStatusCode: gCMStatusCode ?? this.gCMStatusCode,
        incradle: incradle ?? this.incradle,
        isSureLockDefaultLauncher:
            isSureLockDefaultLauncher ?? this.isSureLockDefaultLauncher,
        isSureLockDeviceAdmin:
            isSureLockDeviceAdmin ?? this.isSureLockDeviceAdmin,
        isSureLockKnox: isSureLockKnox ?? this.isSureLockKnox,
        isSureLockUsageAccessAllowed:
            isSureLockUsageAccessAllowed ?? this.isSureLockUsageAccessAllowed,
        iUsbDbuggingDisabled: iUsbDbuggingDisabled ?? this.iUsbDbuggingDisabled,
        address: address ?? this.address,
        longitute: longitute ?? this.longitute,
        latitude: latitude ?? this.latitude,
        lockedUsing: lockedUsing ?? this.lockedUsing,
        extraDeviceInfo: extraDeviceInfo ?? this.extraDeviceInfo,
        parentDeviceId: parentDeviceId ?? this.parentDeviceId,
        thingHashCode: thingHashCode ?? this.thingHashCode,
        macName: macName ?? this.macName,
        macType: macType ?? this.macType,
        isConfigureSystemPermissionEnabled:
            isConfigureSystemPermissionEnabled ??
                this.isConfigureSystemPermissionEnabled,
        isDisplayOverOtherAppsEnabled:
            isDisplayOverOtherAppsEnabled ?? this.isDisplayOverOtherAppsEnabled,
        isCRPStorageStatus: isCRPStorageStatus ?? this.isCRPStorageStatus,
        isCRPContactStatus: isCRPContactStatus ?? this.isCRPContactStatus,
        isCRPLocationStatus: isCRPLocationStatus ?? this.isCRPLocationStatus,
        isCRPCameraStatus: isCRPCameraStatus ?? this.isCRPCameraStatus,
        isCRPPhoneStatus: isCRPPhoneStatus ?? this.isCRPPhoneStatus,
        isCRPSmsStatus: isCRPSmsStatus ?? this.isCRPSmsStatus,
        oSVersionSortVal: oSVersionSortVal ?? this.oSVersionSortVal,
        drivesStorageMemory: drivesStorageMemory ?? this.drivesStorageMemory,
        managementStatus: managementStatus ?? this.managementStatus);
  }
}

@JsonSerializable(explicitToJson: true)
class PostDeviceResponseModel$ExtraInfoDetails {
  PostDeviceResponseModel$ExtraInfoDetails({
    this.appVersions,
    this.customColsHeader,
    this.customColsId,
  });

  factory PostDeviceResponseModel$ExtraInfoDetails.fromJson(
          Map<String, dynamic> json) =>
      _$PostDeviceResponseModel$ExtraInfoDetailsFromJson(json);

  @JsonKey(name: 'appVersions', defaultValue: <String>[])
  final List<String>? appVersions;
  @JsonKey(name: 'CustomColsHeader', defaultValue: <String>[])
  final List<String>? customColsHeader;
  @JsonKey(name: 'CustomColsId', defaultValue: <String>[])
  final List<String>? customColsId;
  static const fromJsonFactory =
      _$PostDeviceResponseModel$ExtraInfoDetailsFromJson;
  static const toJsonFactory = _$PostDeviceResponseModel$ExtraInfoDetailsToJson;
  Map<String, dynamic> toJson() =>
      _$PostDeviceResponseModel$ExtraInfoDetailsToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PostDeviceResponseModel$ExtraInfoDetails &&
            (identical(other.appVersions, appVersions) ||
                const DeepCollectionEquality()
                    .equals(other.appVersions, appVersions)) &&
            (identical(other.customColsHeader, customColsHeader) ||
                const DeepCollectionEquality()
                    .equals(other.customColsHeader, customColsHeader)) &&
            (identical(other.customColsId, customColsId) ||
                const DeepCollectionEquality()
                    .equals(other.customColsId, customColsId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(appVersions) ^
      const DeepCollectionEquality().hash(customColsHeader) ^
      const DeepCollectionEquality().hash(customColsId) ^
      runtimeType.hashCode;
}

extension $PostDeviceResponseModel$ExtraInfoDetailsExtension
    on PostDeviceResponseModel$ExtraInfoDetails {
  PostDeviceResponseModel$ExtraInfoDetails copyWith(
      {List<String>? appVersions,
      List<String>? customColsHeader,
      List<String>? customColsId}) {
    return PostDeviceResponseModel$ExtraInfoDetails(
        appVersions: appVersions ?? this.appVersions,
        customColsHeader: customColsHeader ?? this.customColsHeader,
        customColsId: customColsId ?? this.customColsId);
  }
}

typedef RunScriptOutputModel$RetALL = List<RunScriptOutputModel$RetALL$Item>;

@JsonSerializable(explicitToJson: true)
class RunScriptOutputModel$RetALL$Item {
  RunScriptOutputModel$RetALL$Item({
    this.scriptid,
    this.scripttype,
    this.title,
    this.script,
    this.helptext,
    this.notes,
    this.inputplaceholder,
    this.inputClass,
  });

  factory RunScriptOutputModel$RetALL$Item.fromJson(
          Map<String, dynamic> json) =>
      _$RunScriptOutputModel$RetALL$ItemFromJson(json);

  @JsonKey(name: 'scriptid')
  final String? scriptid;
  @JsonKey(name: 'scripttype')
  final String? scripttype;
  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(name: 'script')
  final String? script;
  @JsonKey(name: 'helptext')
  final String? helptext;
  @JsonKey(name: 'notes')
  final String? notes;
  @JsonKey(name: 'inputplaceholder')
  final String? inputplaceholder;
  @JsonKey(name: 'inputClass')
  final String? inputClass;
  static const fromJsonFactory = _$RunScriptOutputModel$RetALL$ItemFromJson;
  static const toJsonFactory = _$RunScriptOutputModel$RetALL$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$RunScriptOutputModel$RetALL$ItemToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RunScriptOutputModel$RetALL$Item &&
            (identical(other.scriptid, scriptid) ||
                const DeepCollectionEquality()
                    .equals(other.scriptid, scriptid)) &&
            (identical(other.scripttype, scripttype) ||
                const DeepCollectionEquality()
                    .equals(other.scripttype, scripttype)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.script, script) ||
                const DeepCollectionEquality().equals(other.script, script)) &&
            (identical(other.helptext, helptext) ||
                const DeepCollectionEquality()
                    .equals(other.helptext, helptext)) &&
            (identical(other.notes, notes) ||
                const DeepCollectionEquality().equals(other.notes, notes)) &&
            (identical(other.inputplaceholder, inputplaceholder) ||
                const DeepCollectionEquality()
                    .equals(other.inputplaceholder, inputplaceholder)) &&
            (identical(other.inputClass, inputClass) ||
                const DeepCollectionEquality()
                    .equals(other.inputClass, inputClass)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(scriptid) ^
      const DeepCollectionEquality().hash(scripttype) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(script) ^
      const DeepCollectionEquality().hash(helptext) ^
      const DeepCollectionEquality().hash(notes) ^
      const DeepCollectionEquality().hash(inputplaceholder) ^
      const DeepCollectionEquality().hash(inputClass) ^
      runtimeType.hashCode;
}

extension $RunScriptOutputModel$RetALL$ItemExtension
    on RunScriptOutputModel$RetALL$Item {
  RunScriptOutputModel$RetALL$Item copyWith(
      {String? scriptid,
      String? scripttype,
      String? title,
      String? script,
      String? helptext,
      String? notes,
      String? inputplaceholder,
      String? inputClass}) {
    return RunScriptOutputModel$RetALL$Item(
        scriptid: scriptid ?? this.scriptid,
        scripttype: scripttype ?? this.scripttype,
        title: title ?? this.title,
        script: script ?? this.script,
        helptext: helptext ?? this.helptext,
        notes: notes ?? this.notes,
        inputplaceholder: inputplaceholder ?? this.inputplaceholder,
        inputClass: inputClass ?? this.inputClass);
  }
}

typedef RunScriptOutputModel$RetKNOX = List<RunScriptOutputModel$RetKNOX$Item>;

@JsonSerializable(explicitToJson: true)
class RunScriptOutputModel$RetKNOX$Item {
  RunScriptOutputModel$RetKNOX$Item({
    this.scriptid,
    this.scripttype,
    this.title,
    this.script,
    this.helptext,
    this.notes,
    this.inputplaceholder,
    this.inputClass,
  });

  factory RunScriptOutputModel$RetKNOX$Item.fromJson(
          Map<String, dynamic> json) =>
      _$RunScriptOutputModel$RetKNOX$ItemFromJson(json);

  @JsonKey(name: 'scriptid')
  final String? scriptid;
  @JsonKey(name: 'scripttype')
  final String? scripttype;
  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(name: 'script')
  final String? script;
  @JsonKey(name: 'helptext')
  final String? helptext;
  @JsonKey(name: 'notes')
  final String? notes;
  @JsonKey(name: 'inputplaceholder')
  final String? inputplaceholder;
  @JsonKey(name: 'inputClass')
  final String? inputClass;
  static const fromJsonFactory = _$RunScriptOutputModel$RetKNOX$ItemFromJson;
  static const toJsonFactory = _$RunScriptOutputModel$RetKNOX$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$RunScriptOutputModel$RetKNOX$ItemToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RunScriptOutputModel$RetKNOX$Item &&
            (identical(other.scriptid, scriptid) ||
                const DeepCollectionEquality()
                    .equals(other.scriptid, scriptid)) &&
            (identical(other.scripttype, scripttype) ||
                const DeepCollectionEquality()
                    .equals(other.scripttype, scripttype)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.script, script) ||
                const DeepCollectionEquality().equals(other.script, script)) &&
            (identical(other.helptext, helptext) ||
                const DeepCollectionEquality()
                    .equals(other.helptext, helptext)) &&
            (identical(other.notes, notes) ||
                const DeepCollectionEquality().equals(other.notes, notes)) &&
            (identical(other.inputplaceholder, inputplaceholder) ||
                const DeepCollectionEquality()
                    .equals(other.inputplaceholder, inputplaceholder)) &&
            (identical(other.inputClass, inputClass) ||
                const DeepCollectionEquality()
                    .equals(other.inputClass, inputClass)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(scriptid) ^
      const DeepCollectionEquality().hash(scripttype) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(script) ^
      const DeepCollectionEquality().hash(helptext) ^
      const DeepCollectionEquality().hash(notes) ^
      const DeepCollectionEquality().hash(inputplaceholder) ^
      const DeepCollectionEquality().hash(inputClass) ^
      runtimeType.hashCode;
}

extension $RunScriptOutputModel$RetKNOX$ItemExtension
    on RunScriptOutputModel$RetKNOX$Item {
  RunScriptOutputModel$RetKNOX$Item copyWith(
      {String? scriptid,
      String? scripttype,
      String? title,
      String? script,
      String? helptext,
      String? notes,
      String? inputplaceholder,
      String? inputClass}) {
    return RunScriptOutputModel$RetKNOX$Item(
        scriptid: scriptid ?? this.scriptid,
        scripttype: scripttype ?? this.scripttype,
        title: title ?? this.title,
        script: script ?? this.script,
        helptext: helptext ?? this.helptext,
        notes: notes ?? this.notes,
        inputplaceholder: inputplaceholder ?? this.inputplaceholder,
        inputClass: inputClass ?? this.inputClass);
  }
}

typedef RunScriptOutputModel$RetSHELL
    = List<RunScriptOutputModel$RetSHELL$Item>;

@JsonSerializable(explicitToJson: true)
class RunScriptOutputModel$RetSHELL$Item {
  RunScriptOutputModel$RetSHELL$Item({
    this.scriptid,
    this.scripttype,
    this.title,
    this.script,
    this.helptext,
    this.notes,
    this.inputplaceholder,
    this.inputClass,
  });

  factory RunScriptOutputModel$RetSHELL$Item.fromJson(
          Map<String, dynamic> json) =>
      _$RunScriptOutputModel$RetSHELL$ItemFromJson(json);

  @JsonKey(name: 'scriptid')
  final String? scriptid;
  @JsonKey(name: 'scripttype')
  final String? scripttype;
  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(name: 'script')
  final String? script;
  @JsonKey(name: 'helptext')
  final String? helptext;
  @JsonKey(name: 'notes')
  final String? notes;
  @JsonKey(name: 'inputplaceholder')
  final String? inputplaceholder;
  @JsonKey(name: 'inputClass')
  final String? inputClass;
  static const fromJsonFactory = _$RunScriptOutputModel$RetSHELL$ItemFromJson;
  static const toJsonFactory = _$RunScriptOutputModel$RetSHELL$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$RunScriptOutputModel$RetSHELL$ItemToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RunScriptOutputModel$RetSHELL$Item &&
            (identical(other.scriptid, scriptid) ||
                const DeepCollectionEquality()
                    .equals(other.scriptid, scriptid)) &&
            (identical(other.scripttype, scripttype) ||
                const DeepCollectionEquality()
                    .equals(other.scripttype, scripttype)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.script, script) ||
                const DeepCollectionEquality().equals(other.script, script)) &&
            (identical(other.helptext, helptext) ||
                const DeepCollectionEquality()
                    .equals(other.helptext, helptext)) &&
            (identical(other.notes, notes) ||
                const DeepCollectionEquality().equals(other.notes, notes)) &&
            (identical(other.inputplaceholder, inputplaceholder) ||
                const DeepCollectionEquality()
                    .equals(other.inputplaceholder, inputplaceholder)) &&
            (identical(other.inputClass, inputClass) ||
                const DeepCollectionEquality()
                    .equals(other.inputClass, inputClass)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(scriptid) ^
      const DeepCollectionEquality().hash(scripttype) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(script) ^
      const DeepCollectionEquality().hash(helptext) ^
      const DeepCollectionEquality().hash(notes) ^
      const DeepCollectionEquality().hash(inputplaceholder) ^
      const DeepCollectionEquality().hash(inputClass) ^
      runtimeType.hashCode;
}

extension $RunScriptOutputModel$RetSHELL$ItemExtension
    on RunScriptOutputModel$RetSHELL$Item {
  RunScriptOutputModel$RetSHELL$Item copyWith(
      {String? scriptid,
      String? scripttype,
      String? title,
      String? script,
      String? helptext,
      String? notes,
      String? inputplaceholder,
      String? inputClass}) {
    return RunScriptOutputModel$RetSHELL$Item(
        scriptid: scriptid ?? this.scriptid,
        scripttype: scripttype ?? this.scripttype,
        title: title ?? this.title,
        script: script ?? this.script,
        helptext: helptext ?? this.helptext,
        notes: notes ?? this.notes,
        inputplaceholder: inputplaceholder ?? this.inputplaceholder,
        inputClass: inputClass ?? this.inputClass);
  }
}

typedef RunScriptOutputModel$RetEA = List<RunScriptOutputModel$RetEA$Item>;

@JsonSerializable(explicitToJson: true)
class RunScriptOutputModel$RetEA$Item {
  RunScriptOutputModel$RetEA$Item({
    this.scriptid,
    this.scripttype,
    this.title,
    this.script,
    this.helptext,
    this.notes,
    this.inputplaceholder,
    this.inputClass,
  });

  factory RunScriptOutputModel$RetEA$Item.fromJson(Map<String, dynamic> json) =>
      _$RunScriptOutputModel$RetEA$ItemFromJson(json);

  @JsonKey(name: 'scriptid')
  final String? scriptid;
  @JsonKey(name: 'scripttype')
  final String? scripttype;
  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(name: 'script')
  final String? script;
  @JsonKey(name: 'helptext')
  final String? helptext;
  @JsonKey(name: 'notes')
  final String? notes;
  @JsonKey(name: 'inputplaceholder')
  final String? inputplaceholder;
  @JsonKey(name: 'inputClass')
  final String? inputClass;
  static const fromJsonFactory = _$RunScriptOutputModel$RetEA$ItemFromJson;
  static const toJsonFactory = _$RunScriptOutputModel$RetEA$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$RunScriptOutputModel$RetEA$ItemToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RunScriptOutputModel$RetEA$Item &&
            (identical(other.scriptid, scriptid) ||
                const DeepCollectionEquality()
                    .equals(other.scriptid, scriptid)) &&
            (identical(other.scripttype, scripttype) ||
                const DeepCollectionEquality()
                    .equals(other.scripttype, scripttype)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.script, script) ||
                const DeepCollectionEquality().equals(other.script, script)) &&
            (identical(other.helptext, helptext) ||
                const DeepCollectionEquality()
                    .equals(other.helptext, helptext)) &&
            (identical(other.notes, notes) ||
                const DeepCollectionEquality().equals(other.notes, notes)) &&
            (identical(other.inputplaceholder, inputplaceholder) ||
                const DeepCollectionEquality()
                    .equals(other.inputplaceholder, inputplaceholder)) &&
            (identical(other.inputClass, inputClass) ||
                const DeepCollectionEquality()
                    .equals(other.inputClass, inputClass)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(scriptid) ^
      const DeepCollectionEquality().hash(scripttype) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(script) ^
      const DeepCollectionEquality().hash(helptext) ^
      const DeepCollectionEquality().hash(notes) ^
      const DeepCollectionEquality().hash(inputplaceholder) ^
      const DeepCollectionEquality().hash(inputClass) ^
      runtimeType.hashCode;
}

extension $RunScriptOutputModel$RetEA$ItemExtension
    on RunScriptOutputModel$RetEA$Item {
  RunScriptOutputModel$RetEA$Item copyWith(
      {String? scriptid,
      String? scripttype,
      String? title,
      String? script,
      String? helptext,
      String? notes,
      String? inputplaceholder,
      String? inputClass}) {
    return RunScriptOutputModel$RetEA$Item(
        scriptid: scriptid ?? this.scriptid,
        scripttype: scripttype ?? this.scripttype,
        title: title ?? this.title,
        script: script ?? this.script,
        helptext: helptext ?? this.helptext,
        notes: notes ?? this.notes,
        inputplaceholder: inputplaceholder ?? this.inputplaceholder,
        inputClass: inputClass ?? this.inputClass);
  }
}

typedef RunScriptOutputModel$RetIOS = List<RunScriptOutputModel$RetIOS$Item>;

@JsonSerializable(explicitToJson: true)
class RunScriptOutputModel$RetIOS$Item {
  RunScriptOutputModel$RetIOS$Item({
    this.scriptid,
    this.scripttype,
    this.title,
    this.script,
    this.helptext,
    this.notes,
    this.inputplaceholder,
    this.inputClass,
  });

  factory RunScriptOutputModel$RetIOS$Item.fromJson(
          Map<String, dynamic> json) =>
      _$RunScriptOutputModel$RetIOS$ItemFromJson(json);

  @JsonKey(name: 'scriptid')
  final String? scriptid;
  @JsonKey(name: 'scripttype')
  final String? scripttype;
  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(name: 'script')
  final String? script;
  @JsonKey(name: 'helptext')
  final String? helptext;
  @JsonKey(name: 'notes')
  final String? notes;
  @JsonKey(name: 'inputplaceholder')
  final String? inputplaceholder;
  @JsonKey(name: 'inputClass')
  final String? inputClass;
  static const fromJsonFactory = _$RunScriptOutputModel$RetIOS$ItemFromJson;
  static const toJsonFactory = _$RunScriptOutputModel$RetIOS$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$RunScriptOutputModel$RetIOS$ItemToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RunScriptOutputModel$RetIOS$Item &&
            (identical(other.scriptid, scriptid) ||
                const DeepCollectionEquality()
                    .equals(other.scriptid, scriptid)) &&
            (identical(other.scripttype, scripttype) ||
                const DeepCollectionEquality()
                    .equals(other.scripttype, scripttype)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.script, script) ||
                const DeepCollectionEquality().equals(other.script, script)) &&
            (identical(other.helptext, helptext) ||
                const DeepCollectionEquality()
                    .equals(other.helptext, helptext)) &&
            (identical(other.notes, notes) ||
                const DeepCollectionEquality().equals(other.notes, notes)) &&
            (identical(other.inputplaceholder, inputplaceholder) ||
                const DeepCollectionEquality()
                    .equals(other.inputplaceholder, inputplaceholder)) &&
            (identical(other.inputClass, inputClass) ||
                const DeepCollectionEquality()
                    .equals(other.inputClass, inputClass)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(scriptid) ^
      const DeepCollectionEquality().hash(scripttype) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(script) ^
      const DeepCollectionEquality().hash(helptext) ^
      const DeepCollectionEquality().hash(notes) ^
      const DeepCollectionEquality().hash(inputplaceholder) ^
      const DeepCollectionEquality().hash(inputClass) ^
      runtimeType.hashCode;
}

extension $RunScriptOutputModel$RetIOS$ItemExtension
    on RunScriptOutputModel$RetIOS$Item {
  RunScriptOutputModel$RetIOS$Item copyWith(
      {String? scriptid,
      String? scripttype,
      String? title,
      String? script,
      String? helptext,
      String? notes,
      String? inputplaceholder,
      String? inputClass}) {
    return RunScriptOutputModel$RetIOS$Item(
        scriptid: scriptid ?? this.scriptid,
        scripttype: scripttype ?? this.scripttype,
        title: title ?? this.title,
        script: script ?? this.script,
        helptext: helptext ?? this.helptext,
        notes: notes ?? this.notes,
        inputplaceholder: inputplaceholder ?? this.inputplaceholder,
        inputClass: inputClass ?? this.inputClass);
  }
}

typedef RunScriptOutputModel$RetWINDOWS
    = List<RunScriptOutputModel$RetWINDOWS$Item>;

@JsonSerializable(explicitToJson: true)
class RunScriptOutputModel$RetWINDOWS$Item {
  RunScriptOutputModel$RetWINDOWS$Item({
    this.scriptid,
    this.scripttype,
    this.title,
    this.script,
    this.helptext,
    this.notes,
    this.inputplaceholder,
    this.inputClass,
  });

  factory RunScriptOutputModel$RetWINDOWS$Item.fromJson(
          Map<String, dynamic> json) =>
      _$RunScriptOutputModel$RetWINDOWS$ItemFromJson(json);

  @JsonKey(name: 'scriptid')
  final String? scriptid;
  @JsonKey(name: 'scripttype')
  final String? scripttype;
  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(name: 'script')
  final String? script;
  @JsonKey(name: 'helptext')
  final String? helptext;
  @JsonKey(name: 'notes')
  final String? notes;
  @JsonKey(name: 'inputplaceholder')
  final String? inputplaceholder;
  @JsonKey(name: 'inputClass')
  final String? inputClass;
  static const fromJsonFactory = _$RunScriptOutputModel$RetWINDOWS$ItemFromJson;
  static const toJsonFactory = _$RunScriptOutputModel$RetWINDOWS$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$RunScriptOutputModel$RetWINDOWS$ItemToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RunScriptOutputModel$RetWINDOWS$Item &&
            (identical(other.scriptid, scriptid) ||
                const DeepCollectionEquality()
                    .equals(other.scriptid, scriptid)) &&
            (identical(other.scripttype, scripttype) ||
                const DeepCollectionEquality()
                    .equals(other.scripttype, scripttype)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.script, script) ||
                const DeepCollectionEquality().equals(other.script, script)) &&
            (identical(other.helptext, helptext) ||
                const DeepCollectionEquality()
                    .equals(other.helptext, helptext)) &&
            (identical(other.notes, notes) ||
                const DeepCollectionEquality().equals(other.notes, notes)) &&
            (identical(other.inputplaceholder, inputplaceholder) ||
                const DeepCollectionEquality()
                    .equals(other.inputplaceholder, inputplaceholder)) &&
            (identical(other.inputClass, inputClass) ||
                const DeepCollectionEquality()
                    .equals(other.inputClass, inputClass)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(scriptid) ^
      const DeepCollectionEquality().hash(scripttype) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(script) ^
      const DeepCollectionEquality().hash(helptext) ^
      const DeepCollectionEquality().hash(notes) ^
      const DeepCollectionEquality().hash(inputplaceholder) ^
      const DeepCollectionEquality().hash(inputClass) ^
      runtimeType.hashCode;
}

extension $RunScriptOutputModel$RetWINDOWS$ItemExtension
    on RunScriptOutputModel$RetWINDOWS$Item {
  RunScriptOutputModel$RetWINDOWS$Item copyWith(
      {String? scriptid,
      String? scripttype,
      String? title,
      String? script,
      String? helptext,
      String? notes,
      String? inputplaceholder,
      String? inputClass}) {
    return RunScriptOutputModel$RetWINDOWS$Item(
        scriptid: scriptid ?? this.scriptid,
        scripttype: scripttype ?? this.scripttype,
        title: title ?? this.title,
        script: script ?? this.script,
        helptext: helptext ?? this.helptext,
        notes: notes ?? this.notes,
        inputplaceholder: inputplaceholder ?? this.inputplaceholder,
        inputClass: inputClass ?? this.inputClass);
  }
}

typedef RunScriptOutputModel$RetANDROIDVR
    = List<RunScriptOutputModel$RetANDROIDVR$Item>;

@JsonSerializable(explicitToJson: true)
class RunScriptOutputModel$RetANDROIDVR$Item {
  RunScriptOutputModel$RetANDROIDVR$Item({
    this.scriptid,
    this.scripttype,
    this.title,
    this.script,
    this.helptext,
    this.notes,
    this.inputplaceholder,
    this.inputClass,
  });

  factory RunScriptOutputModel$RetANDROIDVR$Item.fromJson(
          Map<String, dynamic> json) =>
      _$RunScriptOutputModel$RetANDROIDVR$ItemFromJson(json);

  @JsonKey(name: 'scriptid')
  final String? scriptid;
  @JsonKey(name: 'scripttype')
  final String? scripttype;
  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(name: 'script')
  final String? script;
  @JsonKey(name: 'helptext')
  final String? helptext;
  @JsonKey(name: 'notes')
  final String? notes;
  @JsonKey(name: 'inputplaceholder')
  final String? inputplaceholder;
  @JsonKey(name: 'inputClass')
  final String? inputClass;
  static const fromJsonFactory =
      _$RunScriptOutputModel$RetANDROIDVR$ItemFromJson;
  static const toJsonFactory = _$RunScriptOutputModel$RetANDROIDVR$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$RunScriptOutputModel$RetANDROIDVR$ItemToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RunScriptOutputModel$RetANDROIDVR$Item &&
            (identical(other.scriptid, scriptid) ||
                const DeepCollectionEquality()
                    .equals(other.scriptid, scriptid)) &&
            (identical(other.scripttype, scripttype) ||
                const DeepCollectionEquality()
                    .equals(other.scripttype, scripttype)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.script, script) ||
                const DeepCollectionEquality().equals(other.script, script)) &&
            (identical(other.helptext, helptext) ||
                const DeepCollectionEquality()
                    .equals(other.helptext, helptext)) &&
            (identical(other.notes, notes) ||
                const DeepCollectionEquality().equals(other.notes, notes)) &&
            (identical(other.inputplaceholder, inputplaceholder) ||
                const DeepCollectionEquality()
                    .equals(other.inputplaceholder, inputplaceholder)) &&
            (identical(other.inputClass, inputClass) ||
                const DeepCollectionEquality()
                    .equals(other.inputClass, inputClass)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(scriptid) ^
      const DeepCollectionEquality().hash(scripttype) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(script) ^
      const DeepCollectionEquality().hash(helptext) ^
      const DeepCollectionEquality().hash(notes) ^
      const DeepCollectionEquality().hash(inputplaceholder) ^
      const DeepCollectionEquality().hash(inputClass) ^
      runtimeType.hashCode;
}

extension $RunScriptOutputModel$RetANDROIDVR$ItemExtension
    on RunScriptOutputModel$RetANDROIDVR$Item {
  RunScriptOutputModel$RetANDROIDVR$Item copyWith(
      {String? scriptid,
      String? scripttype,
      String? title,
      String? script,
      String? helptext,
      String? notes,
      String? inputplaceholder,
      String? inputClass}) {
    return RunScriptOutputModel$RetANDROIDVR$Item(
        scriptid: scriptid ?? this.scriptid,
        scripttype: scripttype ?? this.scripttype,
        title: title ?? this.title,
        script: script ?? this.script,
        helptext: helptext ?? this.helptext,
        notes: notes ?? this.notes,
        inputplaceholder: inputplaceholder ?? this.inputplaceholder,
        inputClass: inputClass ?? this.inputClass);
  }
}

typedef DynamicTimeFencingPayLoad$SelectFence$TimeFenceRows
    = List<DynamicTimeFencingPayLoad$SelectFence$TimeFenceRows$Item>;

@JsonSerializable(explicitToJson: true)
class DynamicTimeFencingPayLoad$SelectFence$TimeFenceRows$Item {
  DynamicTimeFencingPayLoad$SelectFence$TimeFenceRows$Item({
    this.timeZoneType,
    this.startTime,
    this.endTime,
    this.days,
  });

  factory DynamicTimeFencingPayLoad$SelectFence$TimeFenceRows$Item.fromJson(
          Map<String, dynamic> json) =>
      _$DynamicTimeFencingPayLoad$SelectFence$TimeFenceRows$ItemFromJson(json);

  @JsonKey(name: 'TimeZoneType')
  final int? timeZoneType;
  @JsonKey(name: 'StartTime')
  final String? startTime;
  @JsonKey(name: 'EndTime')
  final String? endTime;
  @JsonKey(name: 'Days', defaultValue: <Object>[])
  final List<Object>? days;
  static const fromJsonFactory =
      _$DynamicTimeFencingPayLoad$SelectFence$TimeFenceRows$ItemFromJson;
  static const toJsonFactory =
      _$DynamicTimeFencingPayLoad$SelectFence$TimeFenceRows$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$DynamicTimeFencingPayLoad$SelectFence$TimeFenceRows$ItemToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DynamicTimeFencingPayLoad$SelectFence$TimeFenceRows$Item &&
            (identical(other.timeZoneType, timeZoneType) ||
                const DeepCollectionEquality()
                    .equals(other.timeZoneType, timeZoneType)) &&
            (identical(other.startTime, startTime) ||
                const DeepCollectionEquality()
                    .equals(other.startTime, startTime)) &&
            (identical(other.endTime, endTime) ||
                const DeepCollectionEquality()
                    .equals(other.endTime, endTime)) &&
            (identical(other.days, days) ||
                const DeepCollectionEquality().equals(other.days, days)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(timeZoneType) ^
      const DeepCollectionEquality().hash(startTime) ^
      const DeepCollectionEquality().hash(endTime) ^
      const DeepCollectionEquality().hash(days) ^
      runtimeType.hashCode;
}

extension $DynamicTimeFencingPayLoad$SelectFence$TimeFenceRows$ItemExtension
    on DynamicTimeFencingPayLoad$SelectFence$TimeFenceRows$Item {
  DynamicTimeFencingPayLoad$SelectFence$TimeFenceRows$Item copyWith(
      {int? timeZoneType,
      String? startTime,
      String? endTime,
      List<Object>? days}) {
    return DynamicTimeFencingPayLoad$SelectFence$TimeFenceRows$Item(
        timeZoneType: timeZoneType ?? this.timeZoneType,
        startTime: startTime ?? this.startTime,
        endTime: endTime ?? this.endTime,
        days: days ?? this.days);
  }
}

@JsonSerializable(explicitToJson: true)
class DynamicNetworkFencingPayLoad$SelectFence$NetworkFenceRows {
  DynamicNetworkFencingPayLoad$SelectFence$NetworkFenceRows({
    this.ssid,
  });

  factory DynamicNetworkFencingPayLoad$SelectFence$NetworkFenceRows.fromJson(
          Map<String, dynamic> json) =>
      _$DynamicNetworkFencingPayLoad$SelectFence$NetworkFenceRowsFromJson(json);

  @JsonKey(name: 'SSID')
  final String? ssid;
  static const fromJsonFactory =
      _$DynamicNetworkFencingPayLoad$SelectFence$NetworkFenceRowsFromJson;
  static const toJsonFactory =
      _$DynamicNetworkFencingPayLoad$SelectFence$NetworkFenceRowsToJson;
  Map<String, dynamic> toJson() =>
      _$DynamicNetworkFencingPayLoad$SelectFence$NetworkFenceRowsToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DynamicNetworkFencingPayLoad$SelectFence$NetworkFenceRows &&
            (identical(other.ssid, ssid) ||
                const DeepCollectionEquality().equals(other.ssid, ssid)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ssid) ^ runtimeType.hashCode;
}

extension $DynamicNetworkFencingPayLoad$SelectFence$NetworkFenceRowsExtension
    on DynamicNetworkFencingPayLoad$SelectFence$NetworkFenceRows {
  DynamicNetworkFencingPayLoad$SelectFence$NetworkFenceRows copyWith(
      {String? ssid}) {
    return DynamicNetworkFencingPayLoad$SelectFence$NetworkFenceRows(
        ssid: ssid ?? this.ssid);
  }
}

String? reapplyJobModelStatusToJson(
    enums.ReapplyJobModelStatus? reapplyJobModelStatus) {
  return enums.$ReapplyJobModelStatusMap[reapplyJobModelStatus];
}

enums.ReapplyJobModelStatus reapplyJobModelStatusFromJson(
  Object? reapplyJobModelStatus, [
  enums.ReapplyJobModelStatus? defaultValue,
]) {
  if (reapplyJobModelStatus is String) {
    return enums.$ReapplyJobModelStatusMap.entries
        .firstWhere(
            (element) =>
                element.value.toLowerCase() ==
                reapplyJobModelStatus.toLowerCase(),
            orElse: () => const MapEntry(
                enums.ReapplyJobModelStatus.swaggerGeneratedUnknown, ''))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$ReapplyJobModelStatusMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ??
      defaultValue ??
      enums.ReapplyJobModelStatus.swaggerGeneratedUnknown;
}

List<String> reapplyJobModelStatusListToJson(
    List<enums.ReapplyJobModelStatus>? reapplyJobModelStatus) {
  if (reapplyJobModelStatus == null) {
    return [];
  }

  return reapplyJobModelStatus
      .map((e) => enums.$ReapplyJobModelStatusMap[e]!)
      .toList();
}

List<enums.ReapplyJobModelStatus> reapplyJobModelStatusListFromJson(
  List? reapplyJobModelStatus, [
  List<enums.ReapplyJobModelStatus>? defaultValue,
]) {
  if (reapplyJobModelStatus == null) {
    return defaultValue ?? [];
  }

  return reapplyJobModelStatus
      .map((e) => reapplyJobModelStatusFromJson(e.toString()))
      .toList();
}

String? refreshDeviceJobTypeToJson(
    enums.RefreshDeviceJobType? refreshDeviceJobType) {
  return enums.$RefreshDeviceJobTypeMap[refreshDeviceJobType];
}

enums.RefreshDeviceJobType refreshDeviceJobTypeFromJson(
  Object? refreshDeviceJobType, [
  enums.RefreshDeviceJobType? defaultValue,
]) {
  if (refreshDeviceJobType is String) {
    return enums.$RefreshDeviceJobTypeMap.entries
        .firstWhere(
            (element) =>
                element.value.toLowerCase() ==
                refreshDeviceJobType.toLowerCase(),
            orElse: () => const MapEntry(
                enums.RefreshDeviceJobType.swaggerGeneratedUnknown, ''))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$RefreshDeviceJobTypeMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ??
      defaultValue ??
      enums.RefreshDeviceJobType.swaggerGeneratedUnknown;
}

List<String> refreshDeviceJobTypeListToJson(
    List<enums.RefreshDeviceJobType>? refreshDeviceJobType) {
  if (refreshDeviceJobType == null) {
    return [];
  }

  return refreshDeviceJobType
      .map((e) => enums.$RefreshDeviceJobTypeMap[e]!)
      .toList();
}

List<enums.RefreshDeviceJobType> refreshDeviceJobTypeListFromJson(
  List? refreshDeviceJobType, [
  List<enums.RefreshDeviceJobType>? defaultValue,
]) {
  if (refreshDeviceJobType == null) {
    return defaultValue ?? [];
  }

  return refreshDeviceJobType
      .map((e) => refreshDeviceJobTypeFromJson(e.toString()))
      .toList();
}

String? getDeviceAppsJobTypeToJson(
    enums.GetDeviceAppsJobType? getDeviceAppsJobType) {
  return enums.$GetDeviceAppsJobTypeMap[getDeviceAppsJobType];
}

enums.GetDeviceAppsJobType getDeviceAppsJobTypeFromJson(
  Object? getDeviceAppsJobType, [
  enums.GetDeviceAppsJobType? defaultValue,
]) {
  if (getDeviceAppsJobType is String) {
    return enums.$GetDeviceAppsJobTypeMap.entries
        .firstWhere(
            (element) =>
                element.value.toLowerCase() ==
                getDeviceAppsJobType.toLowerCase(),
            orElse: () => const MapEntry(
                enums.GetDeviceAppsJobType.swaggerGeneratedUnknown, ''))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$GetDeviceAppsJobTypeMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ??
      defaultValue ??
      enums.GetDeviceAppsJobType.swaggerGeneratedUnknown;
}

List<String> getDeviceAppsJobTypeListToJson(
    List<enums.GetDeviceAppsJobType>? getDeviceAppsJobType) {
  if (getDeviceAppsJobType == null) {
    return [];
  }

  return getDeviceAppsJobType
      .map((e) => enums.$GetDeviceAppsJobTypeMap[e]!)
      .toList();
}

List<enums.GetDeviceAppsJobType> getDeviceAppsJobTypeListFromJson(
  List? getDeviceAppsJobType, [
  List<enums.GetDeviceAppsJobType>? defaultValue,
]) {
  if (getDeviceAppsJobType == null) {
    return defaultValue ?? [];
  }

  return getDeviceAppsJobType
      .map((e) => getDeviceAppsJobTypeFromJson(e.toString()))
      .toList();
}

String? lockDeviceJobTypeToJson(enums.LockDeviceJobType? lockDeviceJobType) {
  return enums.$LockDeviceJobTypeMap[lockDeviceJobType];
}

enums.LockDeviceJobType lockDeviceJobTypeFromJson(
  Object? lockDeviceJobType, [
  enums.LockDeviceJobType? defaultValue,
]) {
  if (lockDeviceJobType is String) {
    return enums.$LockDeviceJobTypeMap.entries
        .firstWhere(
            (element) =>
                element.value.toLowerCase() == lockDeviceJobType.toLowerCase(),
            orElse: () => const MapEntry(
                enums.LockDeviceJobType.swaggerGeneratedUnknown, ''))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$LockDeviceJobTypeMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ??
      defaultValue ??
      enums.LockDeviceJobType.swaggerGeneratedUnknown;
}

List<String> lockDeviceJobTypeListToJson(
    List<enums.LockDeviceJobType>? lockDeviceJobType) {
  if (lockDeviceJobType == null) {
    return [];
  }

  return lockDeviceJobType.map((e) => enums.$LockDeviceJobTypeMap[e]!).toList();
}

List<enums.LockDeviceJobType> lockDeviceJobTypeListFromJson(
  List? lockDeviceJobType, [
  List<enums.LockDeviceJobType>? defaultValue,
]) {
  if (lockDeviceJobType == null) {
    return defaultValue ?? [];
  }

  return lockDeviceJobType
      .map((e) => lockDeviceJobTypeFromJson(e.toString()))
      .toList();
}

String? rebootDeviceJobTypeToJson(
    enums.RebootDeviceJobType? rebootDeviceJobType) {
  return enums.$RebootDeviceJobTypeMap[rebootDeviceJobType];
}

enums.RebootDeviceJobType rebootDeviceJobTypeFromJson(
  Object? rebootDeviceJobType, [
  enums.RebootDeviceJobType? defaultValue,
]) {
  if (rebootDeviceJobType is String) {
    return enums.$RebootDeviceJobTypeMap.entries
        .firstWhere(
            (element) =>
                element.value.toLowerCase() ==
                rebootDeviceJobType.toLowerCase(),
            orElse: () => const MapEntry(
                enums.RebootDeviceJobType.swaggerGeneratedUnknown, ''))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$RebootDeviceJobTypeMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ??
      defaultValue ??
      enums.RebootDeviceJobType.swaggerGeneratedUnknown;
}

List<String> rebootDeviceJobTypeListToJson(
    List<enums.RebootDeviceJobType>? rebootDeviceJobType) {
  if (rebootDeviceJobType == null) {
    return [];
  }

  return rebootDeviceJobType
      .map((e) => enums.$RebootDeviceJobTypeMap[e]!)
      .toList();
}

List<enums.RebootDeviceJobType> rebootDeviceJobTypeListFromJson(
  List? rebootDeviceJobType, [
  List<enums.RebootDeviceJobType>? defaultValue,
]) {
  if (rebootDeviceJobType == null) {
    return defaultValue ?? [];
  }

  return rebootDeviceJobType
      .map((e) => rebootDeviceJobTypeFromJson(e.toString()))
      .toList();
}

String? buzzJobTypeToJson(enums.BuzzJobType? buzzJobType) {
  return enums.$BuzzJobTypeMap[buzzJobType];
}

enums.BuzzJobType buzzJobTypeFromJson(
  Object? buzzJobType, [
  enums.BuzzJobType? defaultValue,
]) {
  if (buzzJobType is String) {
    return enums.$BuzzJobTypeMap.entries
        .firstWhere(
            (element) =>
                element.value.toLowerCase() == buzzJobType.toLowerCase(),
            orElse: () =>
                const MapEntry(enums.BuzzJobType.swaggerGeneratedUnknown, ''))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$BuzzJobTypeMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ??
      defaultValue ??
      enums.BuzzJobType.swaggerGeneratedUnknown;
}

List<String> buzzJobTypeListToJson(List<enums.BuzzJobType>? buzzJobType) {
  if (buzzJobType == null) {
    return [];
  }

  return buzzJobType.map((e) => enums.$BuzzJobTypeMap[e]!).toList();
}

List<enums.BuzzJobType> buzzJobTypeListFromJson(
  List? buzzJobType, [
  List<enums.BuzzJobType>? defaultValue,
]) {
  if (buzzJobType == null) {
    return defaultValue ?? [];
  }

  return buzzJobType.map((e) => buzzJobTypeFromJson(e.toString())).toList();
}

String? changePinJobTypeToJson(enums.ChangePinJobType? changePinJobType) {
  return enums.$ChangePinJobTypeMap[changePinJobType];
}

enums.ChangePinJobType changePinJobTypeFromJson(
  Object? changePinJobType, [
  enums.ChangePinJobType? defaultValue,
]) {
  if (changePinJobType is String) {
    return enums.$ChangePinJobTypeMap.entries
        .firstWhere(
            (element) =>
                element.value.toLowerCase() == changePinJobType.toLowerCase(),
            orElse: () => const MapEntry(
                enums.ChangePinJobType.swaggerGeneratedUnknown, ''))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$ChangePinJobTypeMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ??
      defaultValue ??
      enums.ChangePinJobType.swaggerGeneratedUnknown;
}

List<String> changePinJobTypeListToJson(
    List<enums.ChangePinJobType>? changePinJobType) {
  if (changePinJobType == null) {
    return [];
  }

  return changePinJobType.map((e) => enums.$ChangePinJobTypeMap[e]!).toList();
}

List<enums.ChangePinJobType> changePinJobTypeListFromJson(
  List? changePinJobType, [
  List<enums.ChangePinJobType>? defaultValue,
]) {
  if (changePinJobType == null) {
    return defaultValue ?? [];
  }

  return changePinJobType
      .map((e) => changePinJobTypeFromJson(e.toString()))
      .toList();
}

String? callTrackingJobTypeToJson(
    enums.CallTrackingJobType? callTrackingJobType) {
  return enums.$CallTrackingJobTypeMap[callTrackingJobType];
}

enums.CallTrackingJobType callTrackingJobTypeFromJson(
  Object? callTrackingJobType, [
  enums.CallTrackingJobType? defaultValue,
]) {
  if (callTrackingJobType is String) {
    return enums.$CallTrackingJobTypeMap.entries
        .firstWhere(
            (element) =>
                element.value.toLowerCase() ==
                callTrackingJobType.toLowerCase(),
            orElse: () => const MapEntry(
                enums.CallTrackingJobType.swaggerGeneratedUnknown, ''))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$CallTrackingJobTypeMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ??
      defaultValue ??
      enums.CallTrackingJobType.swaggerGeneratedUnknown;
}

List<String> callTrackingJobTypeListToJson(
    List<enums.CallTrackingJobType>? callTrackingJobType) {
  if (callTrackingJobType == null) {
    return [];
  }

  return callTrackingJobType
      .map((e) => enums.$CallTrackingJobTypeMap[e]!)
      .toList();
}

List<enums.CallTrackingJobType> callTrackingJobTypeListFromJson(
  List? callTrackingJobType, [
  List<enums.CallTrackingJobType>? defaultValue,
]) {
  if (callTrackingJobType == null) {
    return defaultValue ?? [];
  }

  return callTrackingJobType
      .map((e) => callTrackingJobTypeFromJson(e.toString()))
      .toList();
}

String? sMSTrackingJobTypeToJson(enums.SMSTrackingJobType? sMSTrackingJobType) {
  return enums.$SMSTrackingJobTypeMap[sMSTrackingJobType];
}

enums.SMSTrackingJobType sMSTrackingJobTypeFromJson(
  Object? sMSTrackingJobType, [
  enums.SMSTrackingJobType? defaultValue,
]) {
  if (sMSTrackingJobType is String) {
    return enums.$SMSTrackingJobTypeMap.entries
        .firstWhere(
            (element) =>
                element.value.toLowerCase() == sMSTrackingJobType.toLowerCase(),
            orElse: () => const MapEntry(
                enums.SMSTrackingJobType.swaggerGeneratedUnknown, ''))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$SMSTrackingJobTypeMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ??
      defaultValue ??
      enums.SMSTrackingJobType.swaggerGeneratedUnknown;
}

List<String> sMSTrackingJobTypeListToJson(
    List<enums.SMSTrackingJobType>? sMSTrackingJobType) {
  if (sMSTrackingJobType == null) {
    return [];
  }

  return sMSTrackingJobType
      .map((e) => enums.$SMSTrackingJobTypeMap[e]!)
      .toList();
}

List<enums.SMSTrackingJobType> sMSTrackingJobTypeListFromJson(
  List? sMSTrackingJobType, [
  List<enums.SMSTrackingJobType>? defaultValue,
]) {
  if (sMSTrackingJobType == null) {
    return defaultValue ?? [];
  }

  return sMSTrackingJobType
      .map((e) => sMSTrackingJobTypeFromJson(e.toString()))
      .toList();
}

String? wipeJobTypeToJson(enums.WipeJobType? wipeJobType) {
  return enums.$WipeJobTypeMap[wipeJobType];
}

enums.WipeJobType wipeJobTypeFromJson(
  Object? wipeJobType, [
  enums.WipeJobType? defaultValue,
]) {
  if (wipeJobType is String) {
    return enums.$WipeJobTypeMap.entries
        .firstWhere(
            (element) =>
                element.value.toLowerCase() == wipeJobType.toLowerCase(),
            orElse: () =>
                const MapEntry(enums.WipeJobType.swaggerGeneratedUnknown, ''))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$WipeJobTypeMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ??
      defaultValue ??
      enums.WipeJobType.swaggerGeneratedUnknown;
}

List<String> wipeJobTypeListToJson(List<enums.WipeJobType>? wipeJobType) {
  if (wipeJobType == null) {
    return [];
  }

  return wipeJobType.map((e) => enums.$WipeJobTypeMap[e]!).toList();
}

List<enums.WipeJobType> wipeJobTypeListFromJson(
  List? wipeJobType, [
  List<enums.WipeJobType>? defaultValue,
]) {
  if (wipeJobType == null) {
    return defaultValue ?? [];
  }

  return wipeJobType.map((e) => wipeJobTypeFromJson(e.toString())).toList();
}

String? changeDeviceNameJobTypeToJson(
    enums.ChangeDeviceNameJobType? changeDeviceNameJobType) {
  return enums.$ChangeDeviceNameJobTypeMap[changeDeviceNameJobType];
}

enums.ChangeDeviceNameJobType changeDeviceNameJobTypeFromJson(
  Object? changeDeviceNameJobType, [
  enums.ChangeDeviceNameJobType? defaultValue,
]) {
  if (changeDeviceNameJobType is String) {
    return enums.$ChangeDeviceNameJobTypeMap.entries
        .firstWhere(
            (element) =>
                element.value.toLowerCase() ==
                changeDeviceNameJobType.toLowerCase(),
            orElse: () => const MapEntry(
                enums.ChangeDeviceNameJobType.swaggerGeneratedUnknown, ''))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$ChangeDeviceNameJobTypeMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ??
      defaultValue ??
      enums.ChangeDeviceNameJobType.swaggerGeneratedUnknown;
}

List<String> changeDeviceNameJobTypeListToJson(
    List<enums.ChangeDeviceNameJobType>? changeDeviceNameJobType) {
  if (changeDeviceNameJobType == null) {
    return [];
  }

  return changeDeviceNameJobType
      .map((e) => enums.$ChangeDeviceNameJobTypeMap[e]!)
      .toList();
}

List<enums.ChangeDeviceNameJobType> changeDeviceNameJobTypeListFromJson(
  List? changeDeviceNameJobType, [
  List<enums.ChangeDeviceNameJobType>? defaultValue,
]) {
  if (changeDeviceNameJobType == null) {
    return defaultValue ?? [];
  }

  return changeDeviceNameJobType
      .map((e) => changeDeviceNameJobTypeFromJson(e.toString()))
      .toList();
}

String? setBluetoothNameJobTypeToJson(
    enums.SetBluetoothNameJobType? setBluetoothNameJobType) {
  return enums.$SetBluetoothNameJobTypeMap[setBluetoothNameJobType];
}

enums.SetBluetoothNameJobType setBluetoothNameJobTypeFromJson(
  Object? setBluetoothNameJobType, [
  enums.SetBluetoothNameJobType? defaultValue,
]) {
  if (setBluetoothNameJobType is String) {
    return enums.$SetBluetoothNameJobTypeMap.entries
        .firstWhere(
            (element) =>
                element.value.toLowerCase() ==
                setBluetoothNameJobType.toLowerCase(),
            orElse: () => const MapEntry(
                enums.SetBluetoothNameJobType.swaggerGeneratedUnknown, ''))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$SetBluetoothNameJobTypeMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ??
      defaultValue ??
      enums.SetBluetoothNameJobType.swaggerGeneratedUnknown;
}

List<String> setBluetoothNameJobTypeListToJson(
    List<enums.SetBluetoothNameJobType>? setBluetoothNameJobType) {
  if (setBluetoothNameJobType == null) {
    return [];
  }

  return setBluetoothNameJobType
      .map((e) => enums.$SetBluetoothNameJobTypeMap[e]!)
      .toList();
}

List<enums.SetBluetoothNameJobType> setBluetoothNameJobTypeListFromJson(
  List? setBluetoothNameJobType, [
  List<enums.SetBluetoothNameJobType>? defaultValue,
]) {
  if (setBluetoothNameJobType == null) {
    return defaultValue ?? [];
  }

  return setBluetoothNameJobType
      .map((e) => setBluetoothNameJobTypeFromJson(e.toString()))
      .toList();
}

String? setDeviceNotesJobTypeToJson(
    enums.SetDeviceNotesJobType? setDeviceNotesJobType) {
  return enums.$SetDeviceNotesJobTypeMap[setDeviceNotesJobType];
}

enums.SetDeviceNotesJobType setDeviceNotesJobTypeFromJson(
  Object? setDeviceNotesJobType, [
  enums.SetDeviceNotesJobType? defaultValue,
]) {
  if (setDeviceNotesJobType is String) {
    return enums.$SetDeviceNotesJobTypeMap.entries
        .firstWhere(
            (element) =>
                element.value.toLowerCase() ==
                setDeviceNotesJobType.toLowerCase(),
            orElse: () => const MapEntry(
                enums.SetDeviceNotesJobType.swaggerGeneratedUnknown, ''))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$SetDeviceNotesJobTypeMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ??
      defaultValue ??
      enums.SetDeviceNotesJobType.swaggerGeneratedUnknown;
}

List<String> setDeviceNotesJobTypeListToJson(
    List<enums.SetDeviceNotesJobType>? setDeviceNotesJobType) {
  if (setDeviceNotesJobType == null) {
    return [];
  }

  return setDeviceNotesJobType
      .map((e) => enums.$SetDeviceNotesJobTypeMap[e]!)
      .toList();
}

List<enums.SetDeviceNotesJobType> setDeviceNotesJobTypeListFromJson(
  List? setDeviceNotesJobType, [
  List<enums.SetDeviceNotesJobType>? defaultValue,
]) {
  if (setDeviceNotesJobType == null) {
    return defaultValue ?? [];
  }

  return setDeviceNotesJobType
      .map((e) => setDeviceNotesJobTypeFromJson(e.toString()))
      .toList();
}

String? clearAppDataJobTypeToJson(
    enums.ClearAppDataJobType? clearAppDataJobType) {
  return enums.$ClearAppDataJobTypeMap[clearAppDataJobType];
}

enums.ClearAppDataJobType clearAppDataJobTypeFromJson(
  Object? clearAppDataJobType, [
  enums.ClearAppDataJobType? defaultValue,
]) {
  if (clearAppDataJobType is String) {
    return enums.$ClearAppDataJobTypeMap.entries
        .firstWhere(
            (element) =>
                element.value.toLowerCase() ==
                clearAppDataJobType.toLowerCase(),
            orElse: () => const MapEntry(
                enums.ClearAppDataJobType.swaggerGeneratedUnknown, ''))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$ClearAppDataJobTypeMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ??
      defaultValue ??
      enums.ClearAppDataJobType.swaggerGeneratedUnknown;
}

List<String> clearAppDataJobTypeListToJson(
    List<enums.ClearAppDataJobType>? clearAppDataJobType) {
  if (clearAppDataJobType == null) {
    return [];
  }

  return clearAppDataJobType
      .map((e) => enums.$ClearAppDataJobTypeMap[e]!)
      .toList();
}

List<enums.ClearAppDataJobType> clearAppDataJobTypeListFromJson(
  List? clearAppDataJobType, [
  List<enums.ClearAppDataJobType>? defaultValue,
]) {
  if (clearAppDataJobType == null) {
    return defaultValue ?? [];
  }

  return clearAppDataJobType
      .map((e) => clearAppDataJobTypeFromJson(e.toString()))
      .toList();
}

String? uninstallApplicationJobTypeToJson(
    enums.UninstallApplicationJobType? uninstallApplicationJobType) {
  return enums.$UninstallApplicationJobTypeMap[uninstallApplicationJobType];
}

enums.UninstallApplicationJobType uninstallApplicationJobTypeFromJson(
  Object? uninstallApplicationJobType, [
  enums.UninstallApplicationJobType? defaultValue,
]) {
  if (uninstallApplicationJobType is String) {
    return enums.$UninstallApplicationJobTypeMap.entries
        .firstWhere(
            (element) =>
                element.value.toLowerCase() ==
                uninstallApplicationJobType.toLowerCase(),
            orElse: () => const MapEntry(
                enums.UninstallApplicationJobType.swaggerGeneratedUnknown, ''))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$UninstallApplicationJobTypeMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ??
      defaultValue ??
      enums.UninstallApplicationJobType.swaggerGeneratedUnknown;
}

List<String> uninstallApplicationJobTypeListToJson(
    List<enums.UninstallApplicationJobType>? uninstallApplicationJobType) {
  if (uninstallApplicationJobType == null) {
    return [];
  }

  return uninstallApplicationJobType
      .map((e) => enums.$UninstallApplicationJobTypeMap[e]!)
      .toList();
}

List<enums.UninstallApplicationJobType> uninstallApplicationJobTypeListFromJson(
  List? uninstallApplicationJobType, [
  List<enums.UninstallApplicationJobType>? defaultValue,
]) {
  if (uninstallApplicationJobType == null) {
    return defaultValue ?? [];
  }

  return uninstallApplicationJobType
      .map((e) => uninstallApplicationJobTypeFromJson(e.toString()))
      .toList();
}

String? locationTrackingJobTypeToJson(
    enums.LocationTrackingJobType? locationTrackingJobType) {
  return enums.$LocationTrackingJobTypeMap[locationTrackingJobType];
}

enums.LocationTrackingJobType locationTrackingJobTypeFromJson(
  Object? locationTrackingJobType, [
  enums.LocationTrackingJobType? defaultValue,
]) {
  if (locationTrackingJobType is String) {
    return enums.$LocationTrackingJobTypeMap.entries
        .firstWhere(
            (element) =>
                element.value.toLowerCase() ==
                locationTrackingJobType.toLowerCase(),
            orElse: () => const MapEntry(
                enums.LocationTrackingJobType.swaggerGeneratedUnknown, ''))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$LocationTrackingJobTypeMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ??
      defaultValue ??
      enums.LocationTrackingJobType.swaggerGeneratedUnknown;
}

List<String> locationTrackingJobTypeListToJson(
    List<enums.LocationTrackingJobType>? locationTrackingJobType) {
  if (locationTrackingJobType == null) {
    return [];
  }

  return locationTrackingJobType
      .map((e) => enums.$LocationTrackingJobTypeMap[e]!)
      .toList();
}

List<enums.LocationTrackingJobType> locationTrackingJobTypeListFromJson(
  List? locationTrackingJobType, [
  List<enums.LocationTrackingJobType>? defaultValue,
]) {
  if (locationTrackingJobType == null) {
    return defaultValue ?? [];
  }

  return locationTrackingJobType
      .map((e) => locationTrackingJobTypeFromJson(e.toString()))
      .toList();
}

String? geoFenceJobTypeToJson(enums.GeoFenceJobType? geoFenceJobType) {
  return enums.$GeoFenceJobTypeMap[geoFenceJobType];
}

enums.GeoFenceJobType geoFenceJobTypeFromJson(
  Object? geoFenceJobType, [
  enums.GeoFenceJobType? defaultValue,
]) {
  if (geoFenceJobType is String) {
    return enums.$GeoFenceJobTypeMap.entries
        .firstWhere(
            (element) =>
                element.value.toLowerCase() == geoFenceJobType.toLowerCase(),
            orElse: () => const MapEntry(
                enums.GeoFenceJobType.swaggerGeneratedUnknown, ''))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$GeoFenceJobTypeMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ??
      defaultValue ??
      enums.GeoFenceJobType.swaggerGeneratedUnknown;
}

List<String> geoFenceJobTypeListToJson(
    List<enums.GeoFenceJobType>? geoFenceJobType) {
  if (geoFenceJobType == null) {
    return [];
  }

  return geoFenceJobType.map((e) => enums.$GeoFenceJobTypeMap[e]!).toList();
}

List<enums.GeoFenceJobType> geoFenceJobTypeListFromJson(
  List? geoFenceJobType, [
  List<enums.GeoFenceJobType>? defaultValue,
]) {
  if (geoFenceJobType == null) {
    return defaultValue ?? [];
  }

  return geoFenceJobType
      .map((e) => geoFenceJobTypeFromJson(e.toString()))
      .toList();
}

String? timeFenceJobTypeToJson(enums.TimeFenceJobType? timeFenceJobType) {
  return enums.$TimeFenceJobTypeMap[timeFenceJobType];
}

enums.TimeFenceJobType timeFenceJobTypeFromJson(
  Object? timeFenceJobType, [
  enums.TimeFenceJobType? defaultValue,
]) {
  if (timeFenceJobType is String) {
    return enums.$TimeFenceJobTypeMap.entries
        .firstWhere(
            (element) =>
                element.value.toLowerCase() == timeFenceJobType.toLowerCase(),
            orElse: () => const MapEntry(
                enums.TimeFenceJobType.swaggerGeneratedUnknown, ''))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$TimeFenceJobTypeMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ??
      defaultValue ??
      enums.TimeFenceJobType.swaggerGeneratedUnknown;
}

List<String> timeFenceJobTypeListToJson(
    List<enums.TimeFenceJobType>? timeFenceJobType) {
  if (timeFenceJobType == null) {
    return [];
  }

  return timeFenceJobType.map((e) => enums.$TimeFenceJobTypeMap[e]!).toList();
}

List<enums.TimeFenceJobType> timeFenceJobTypeListFromJson(
  List? timeFenceJobType, [
  List<enums.TimeFenceJobType>? defaultValue,
]) {
  if (timeFenceJobType == null) {
    return defaultValue ?? [];
  }

  return timeFenceJobType
      .map((e) => timeFenceJobTypeFromJson(e.toString()))
      .toList();
}

String? networkFenceJobTypeToJson(
    enums.NetworkFenceJobType? networkFenceJobType) {
  return enums.$NetworkFenceJobTypeMap[networkFenceJobType];
}

enums.NetworkFenceJobType networkFenceJobTypeFromJson(
  Object? networkFenceJobType, [
  enums.NetworkFenceJobType? defaultValue,
]) {
  if (networkFenceJobType is String) {
    return enums.$NetworkFenceJobTypeMap.entries
        .firstWhere(
            (element) =>
                element.value.toLowerCase() ==
                networkFenceJobType.toLowerCase(),
            orElse: () => const MapEntry(
                enums.NetworkFenceJobType.swaggerGeneratedUnknown, ''))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$NetworkFenceJobTypeMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ??
      defaultValue ??
      enums.NetworkFenceJobType.swaggerGeneratedUnknown;
}

List<String> networkFenceJobTypeListToJson(
    List<enums.NetworkFenceJobType>? networkFenceJobType) {
  if (networkFenceJobType == null) {
    return [];
  }

  return networkFenceJobType
      .map((e) => enums.$NetworkFenceJobTypeMap[e]!)
      .toList();
}

List<enums.NetworkFenceJobType> networkFenceJobTypeListFromJson(
  List? networkFenceJobType, [
  List<enums.NetworkFenceJobType>? defaultValue,
]) {
  if (networkFenceJobType == null) {
    return defaultValue ?? [];
  }

  return networkFenceJobType
      .map((e) => networkFenceJobTypeFromJson(e.toString()))
      .toList();
}

String? deleteDeviceActionToJson(enums.DeleteDeviceAction? deleteDeviceAction) {
  return enums.$DeleteDeviceActionMap[deleteDeviceAction];
}

enums.DeleteDeviceAction deleteDeviceActionFromJson(
  Object? deleteDeviceAction, [
  enums.DeleteDeviceAction? defaultValue,
]) {
  if (deleteDeviceAction is String) {
    return enums.$DeleteDeviceActionMap.entries
        .firstWhere(
            (element) =>
                element.value.toLowerCase() == deleteDeviceAction.toLowerCase(),
            orElse: () => const MapEntry(
                enums.DeleteDeviceAction.swaggerGeneratedUnknown, ''))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$DeleteDeviceActionMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ??
      defaultValue ??
      enums.DeleteDeviceAction.swaggerGeneratedUnknown;
}

List<String> deleteDeviceActionListToJson(
    List<enums.DeleteDeviceAction>? deleteDeviceAction) {
  if (deleteDeviceAction == null) {
    return [];
  }

  return deleteDeviceAction
      .map((e) => enums.$DeleteDeviceActionMap[e]!)
      .toList();
}

List<enums.DeleteDeviceAction> deleteDeviceActionListFromJson(
  List? deleteDeviceAction, [
  List<enums.DeleteDeviceAction>? defaultValue,
]) {
  if (deleteDeviceAction == null) {
    return defaultValue ?? [];
  }

  return deleteDeviceAction
      .map((e) => deleteDeviceActionFromJson(e.toString()))
      .toList();
}

String? jobQueueDeviceJobqueueStatusToJson(
    enums.JobQueueDeviceJobqueueStatus? jobQueueDeviceJobqueueStatus) {
  return enums.$JobQueueDeviceJobqueueStatusMap[jobQueueDeviceJobqueueStatus];
}

enums.JobQueueDeviceJobqueueStatus jobQueueDeviceJobqueueStatusFromJson(
  Object? jobQueueDeviceJobqueueStatus, [
  enums.JobQueueDeviceJobqueueStatus? defaultValue,
]) {
  if (jobQueueDeviceJobqueueStatus is String) {
    return enums.$JobQueueDeviceJobqueueStatusMap.entries
        .firstWhere(
            (element) =>
                element.value.toLowerCase() ==
                jobQueueDeviceJobqueueStatus.toLowerCase(),
            orElse: () => const MapEntry(
                enums.JobQueueDeviceJobqueueStatus.swaggerGeneratedUnknown, ''))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$JobQueueDeviceJobqueueStatusMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ??
      defaultValue ??
      enums.JobQueueDeviceJobqueueStatus.swaggerGeneratedUnknown;
}

List<String> jobQueueDeviceJobqueueStatusListToJson(
    List<enums.JobQueueDeviceJobqueueStatus>? jobQueueDeviceJobqueueStatus) {
  if (jobQueueDeviceJobqueueStatus == null) {
    return [];
  }

  return jobQueueDeviceJobqueueStatus
      .map((e) => enums.$JobQueueDeviceJobqueueStatusMap[e]!)
      .toList();
}

List<enums.JobQueueDeviceJobqueueStatus>
    jobQueueDeviceJobqueueStatusListFromJson(
  List? jobQueueDeviceJobqueueStatus, [
  List<enums.JobQueueDeviceJobqueueStatus>? defaultValue,
]) {
  if (jobQueueDeviceJobqueueStatus == null) {
    return defaultValue ?? [];
  }

  return jobQueueDeviceJobqueueStatus
      .map((e) => jobQueueDeviceJobqueueStatusFromJson(e.toString()))
      .toList();
}

String? deviceModel$ItemConnectionStatusToJson(
    enums.DeviceModel$ItemConnectionStatus? deviceModel$ItemConnectionStatus) {
  return enums
      .$DeviceModel$ItemConnectionStatusMap[deviceModel$ItemConnectionStatus];
}

enums.DeviceModel$ItemConnectionStatus deviceModel$ItemConnectionStatusFromJson(
  Object? deviceModel$ItemConnectionStatus, [
  enums.DeviceModel$ItemConnectionStatus? defaultValue,
]) {
  if (deviceModel$ItemConnectionStatus is String) {
    return enums.$DeviceModel$ItemConnectionStatusMap.entries
        .firstWhere(
            (element) =>
                element.value.toLowerCase() ==
                deviceModel$ItemConnectionStatus.toLowerCase(),
            orElse: () => const MapEntry(
                enums.DeviceModel$ItemConnectionStatus.swaggerGeneratedUnknown,
                ''))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$DeviceModel$ItemConnectionStatusMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ??
      defaultValue ??
      enums.DeviceModel$ItemConnectionStatus.swaggerGeneratedUnknown;
}

List<String> deviceModel$ItemConnectionStatusListToJson(
    List<enums.DeviceModel$ItemConnectionStatus>?
        deviceModel$ItemConnectionStatus) {
  if (deviceModel$ItemConnectionStatus == null) {
    return [];
  }

  return deviceModel$ItemConnectionStatus
      .map((e) => enums.$DeviceModel$ItemConnectionStatusMap[e]!)
      .toList();
}

List<enums.DeviceModel$ItemConnectionStatus>
    deviceModel$ItemConnectionStatusListFromJson(
  List? deviceModel$ItemConnectionStatus, [
  List<enums.DeviceModel$ItemConnectionStatus>? defaultValue,
]) {
  if (deviceModel$ItemConnectionStatus == null) {
    return defaultValue ?? [];
  }

  return deviceModel$ItemConnectionStatus
      .map((e) => deviceModel$ItemConnectionStatusFromJson(e.toString()))
      .toList();
}

String? deviceModel$ItemBatteryChemistryToJson(
    enums.DeviceModel$ItemBatteryChemistry? deviceModel$ItemBatteryChemistry) {
  return enums
      .$DeviceModel$ItemBatteryChemistryMap[deviceModel$ItemBatteryChemistry];
}

enums.DeviceModel$ItemBatteryChemistry deviceModel$ItemBatteryChemistryFromJson(
  Object? deviceModel$ItemBatteryChemistry, [
  enums.DeviceModel$ItemBatteryChemistry? defaultValue,
]) {
  if (deviceModel$ItemBatteryChemistry is String) {
    return enums.$DeviceModel$ItemBatteryChemistryMap.entries
        .firstWhere(
            (element) =>
                element.value.toLowerCase() ==
                deviceModel$ItemBatteryChemistry.toLowerCase(),
            orElse: () => const MapEntry(
                enums.DeviceModel$ItemBatteryChemistry.swaggerGeneratedUnknown,
                ''))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$DeviceModel$ItemBatteryChemistryMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ??
      defaultValue ??
      enums.DeviceModel$ItemBatteryChemistry.swaggerGeneratedUnknown;
}

List<String> deviceModel$ItemBatteryChemistryListToJson(
    List<enums.DeviceModel$ItemBatteryChemistry>?
        deviceModel$ItemBatteryChemistry) {
  if (deviceModel$ItemBatteryChemistry == null) {
    return [];
  }

  return deviceModel$ItemBatteryChemistry
      .map((e) => enums.$DeviceModel$ItemBatteryChemistryMap[e]!)
      .toList();
}

List<enums.DeviceModel$ItemBatteryChemistry>
    deviceModel$ItemBatteryChemistryListFromJson(
  List? deviceModel$ItemBatteryChemistry, [
  List<enums.DeviceModel$ItemBatteryChemistry>? defaultValue,
]) {
  if (deviceModel$ItemBatteryChemistry == null) {
    return defaultValue ?? [];
  }

  return deviceModel$ItemBatteryChemistry
      .map((e) => deviceModel$ItemBatteryChemistryFromJson(e.toString()))
      .toList();
}

String? actionCompliance$ItemTypeToJson(
    enums.ActionCompliance$ItemType? actionCompliance$ItemType) {
  return enums.$ActionCompliance$ItemTypeMap[actionCompliance$ItemType];
}

enums.ActionCompliance$ItemType actionCompliance$ItemTypeFromJson(
  Object? actionCompliance$ItemType, [
  enums.ActionCompliance$ItemType? defaultValue,
]) {
  if (actionCompliance$ItemType is String) {
    return enums.$ActionCompliance$ItemTypeMap.entries
        .firstWhere(
            (element) =>
                element.value.toLowerCase() ==
                actionCompliance$ItemType.toLowerCase(),
            orElse: () => const MapEntry(
                enums.ActionCompliance$ItemType.swaggerGeneratedUnknown, ''))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$ActionCompliance$ItemTypeMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ??
      defaultValue ??
      enums.ActionCompliance$ItemType.swaggerGeneratedUnknown;
}

List<String> actionCompliance$ItemTypeListToJson(
    List<enums.ActionCompliance$ItemType>? actionCompliance$ItemType) {
  if (actionCompliance$ItemType == null) {
    return [];
  }

  return actionCompliance$ItemType
      .map((e) => enums.$ActionCompliance$ItemTypeMap[e]!)
      .toList();
}

List<enums.ActionCompliance$ItemType> actionCompliance$ItemTypeListFromJson(
  List? actionCompliance$ItemType, [
  List<enums.ActionCompliance$ItemType>? defaultValue,
]) {
  if (actionCompliance$ItemType == null) {
    return defaultValue ?? [];
  }

  return actionCompliance$ItemType
      .map((e) => actionCompliance$ItemTypeFromJson(e.toString()))
      .toList();
}

String? actionCompliance$ItemDelayunitToJson(
    enums.ActionCompliance$ItemDelayunit? actionCompliance$ItemDelayunit) {
  return enums
      .$ActionCompliance$ItemDelayunitMap[actionCompliance$ItemDelayunit];
}

enums.ActionCompliance$ItemDelayunit actionCompliance$ItemDelayunitFromJson(
  Object? actionCompliance$ItemDelayunit, [
  enums.ActionCompliance$ItemDelayunit? defaultValue,
]) {
  if (actionCompliance$ItemDelayunit is String) {
    return enums.$ActionCompliance$ItemDelayunitMap.entries
        .firstWhere(
            (element) =>
                element.value.toLowerCase() ==
                actionCompliance$ItemDelayunit.toLowerCase(),
            orElse: () => const MapEntry(
                enums.ActionCompliance$ItemDelayunit.swaggerGeneratedUnknown,
                ''))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$ActionCompliance$ItemDelayunitMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ??
      defaultValue ??
      enums.ActionCompliance$ItemDelayunit.swaggerGeneratedUnknown;
}

List<String> actionCompliance$ItemDelayunitListToJson(
    List<enums.ActionCompliance$ItemDelayunit>?
        actionCompliance$ItemDelayunit) {
  if (actionCompliance$ItemDelayunit == null) {
    return [];
  }

  return actionCompliance$ItemDelayunit
      .map((e) => enums.$ActionCompliance$ItemDelayunitMap[e]!)
      .toList();
}

List<enums.ActionCompliance$ItemDelayunit>
    actionCompliance$ItemDelayunitListFromJson(
  List? actionCompliance$ItemDelayunit, [
  List<enums.ActionCompliance$ItemDelayunit>? defaultValue,
]) {
  if (actionCompliance$ItemDelayunit == null) {
    return defaultValue ?? [];
  }

  return actionCompliance$ItemDelayunit
      .map((e) => actionCompliance$ItemDelayunitFromJson(e.toString()))
      .toList();
}

String? getPreapprovedDevicePayLoadSortColumnToJson(
    enums.GetPreapprovedDevicePayLoadSortColumn?
        getPreapprovedDevicePayLoadSortColumn) {
  return enums.$GetPreapprovedDevicePayLoadSortColumnMap[
      getPreapprovedDevicePayLoadSortColumn];
}

enums.GetPreapprovedDevicePayLoadSortColumn
    getPreapprovedDevicePayLoadSortColumnFromJson(
  Object? getPreapprovedDevicePayLoadSortColumn, [
  enums.GetPreapprovedDevicePayLoadSortColumn? defaultValue,
]) {
  if (getPreapprovedDevicePayLoadSortColumn is String) {
    return enums.$GetPreapprovedDevicePayLoadSortColumnMap.entries
        .firstWhere(
            (element) =>
                element.value.toLowerCase() ==
                getPreapprovedDevicePayLoadSortColumn.toLowerCase(),
            orElse: () => const MapEntry(
                enums.GetPreapprovedDevicePayLoadSortColumn
                    .swaggerGeneratedUnknown,
                ''))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$GetPreapprovedDevicePayLoadSortColumnMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ??
      defaultValue ??
      enums.GetPreapprovedDevicePayLoadSortColumn.swaggerGeneratedUnknown;
}

List<String> getPreapprovedDevicePayLoadSortColumnListToJson(
    List<enums.GetPreapprovedDevicePayLoadSortColumn>?
        getPreapprovedDevicePayLoadSortColumn) {
  if (getPreapprovedDevicePayLoadSortColumn == null) {
    return [];
  }

  return getPreapprovedDevicePayLoadSortColumn
      .map((e) => enums.$GetPreapprovedDevicePayLoadSortColumnMap[e]!)
      .toList();
}

List<enums.GetPreapprovedDevicePayLoadSortColumn>
    getPreapprovedDevicePayLoadSortColumnListFromJson(
  List? getPreapprovedDevicePayLoadSortColumn, [
  List<enums.GetPreapprovedDevicePayLoadSortColumn>? defaultValue,
]) {
  if (getPreapprovedDevicePayLoadSortColumn == null) {
    return defaultValue ?? [];
  }

  return getPreapprovedDevicePayLoadSortColumn
      .map((e) => getPreapprovedDevicePayLoadSortColumnFromJson(e.toString()))
      .toList();
}

String? searchDeviceSortColumnToJson(
    enums.SearchDeviceSortColumn? searchDeviceSortColumn) {
  return enums.$SearchDeviceSortColumnMap[searchDeviceSortColumn];
}

enums.SearchDeviceSortColumn searchDeviceSortColumnFromJson(
  Object? searchDeviceSortColumn, [
  enums.SearchDeviceSortColumn? defaultValue,
]) {
  if (searchDeviceSortColumn is String) {
    return enums.$SearchDeviceSortColumnMap.entries
        .firstWhere(
            (element) =>
                element.value.toLowerCase() ==
                searchDeviceSortColumn.toLowerCase(),
            orElse: () => const MapEntry(
                enums.SearchDeviceSortColumn.swaggerGeneratedUnknown, ''))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$SearchDeviceSortColumnMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ??
      defaultValue ??
      enums.SearchDeviceSortColumn.swaggerGeneratedUnknown;
}

List<String> searchDeviceSortColumnListToJson(
    List<enums.SearchDeviceSortColumn>? searchDeviceSortColumn) {
  if (searchDeviceSortColumn == null) {
    return [];
  }

  return searchDeviceSortColumn
      .map((e) => enums.$SearchDeviceSortColumnMap[e]!)
      .toList();
}

List<enums.SearchDeviceSortColumn> searchDeviceSortColumnListFromJson(
  List? searchDeviceSortColumn, [
  List<enums.SearchDeviceSortColumn>? defaultValue,
]) {
  if (searchDeviceSortColumn == null) {
    return defaultValue ?? [];
  }

  return searchDeviceSortColumn
      .map((e) => searchDeviceSortColumnFromJson(e.toString()))
      .toList();
}

String? getDevicePayLoadSortColumnToJson(
    enums.GetDevicePayLoadSortColumn? getDevicePayLoadSortColumn) {
  return enums.$GetDevicePayLoadSortColumnMap[getDevicePayLoadSortColumn];
}

enums.GetDevicePayLoadSortColumn getDevicePayLoadSortColumnFromJson(
  Object? getDevicePayLoadSortColumn, [
  enums.GetDevicePayLoadSortColumn? defaultValue,
]) {
  if (getDevicePayLoadSortColumn is String) {
    return enums.$GetDevicePayLoadSortColumnMap.entries
        .firstWhere(
            (element) =>
                element.value.toLowerCase() ==
                getDevicePayLoadSortColumn.toLowerCase(),
            orElse: () => const MapEntry(
                enums.GetDevicePayLoadSortColumn.swaggerGeneratedUnknown, ''))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$GetDevicePayLoadSortColumnMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ??
      defaultValue ??
      enums.GetDevicePayLoadSortColumn.swaggerGeneratedUnknown;
}

List<String> getDevicePayLoadSortColumnListToJson(
    List<enums.GetDevicePayLoadSortColumn>? getDevicePayLoadSortColumn) {
  if (getDevicePayLoadSortColumn == null) {
    return [];
  }

  return getDevicePayLoadSortColumn
      .map((e) => enums.$GetDevicePayLoadSortColumnMap[e]!)
      .toList();
}

List<enums.GetDevicePayLoadSortColumn> getDevicePayLoadSortColumnListFromJson(
  List? getDevicePayLoadSortColumn, [
  List<enums.GetDevicePayLoadSortColumn>? defaultValue,
]) {
  if (getDevicePayLoadSortColumn == null) {
    return defaultValue ?? [];
  }

  return getDevicePayLoadSortColumn
      .map((e) => getDevicePayLoadSortColumnFromJson(e.toString()))
      .toList();
}

@JsonSerializable(explicitToJson: true)
class LocationPost$RequestBody {
  LocationPost$RequestBody({
    this.deviceID,
  });

  factory LocationPost$RequestBody.fromJson(Map<String, dynamic> json) =>
      _$LocationPost$RequestBodyFromJson(json);

  @JsonKey(name: 'DeviceID')
  final String? deviceID;
  static const fromJsonFactory = _$LocationPost$RequestBodyFromJson;
  static const toJsonFactory = _$LocationPost$RequestBodyToJson;
  Map<String, dynamic> toJson() => _$LocationPost$RequestBodyToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LocationPost$RequestBody &&
            (identical(other.deviceID, deviceID) ||
                const DeepCollectionEquality()
                    .equals(other.deviceID, deviceID)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(deviceID) ^ runtimeType.hashCode;
}

extension $LocationPost$RequestBodyExtension on LocationPost$RequestBody {
  LocationPost$RequestBody copyWith({String? deviceID}) {
    return LocationPost$RequestBody(deviceID: deviceID ?? this.deviceID);
  }
}

// ignore: unused_element
String? _dateToJson(DateTime? date) {
  if (date == null) {
    return null;
  }

  final year = date.year.toString();
  final month = date.month < 10 ? '0${date.month}' : date.month.toString();
  final day = date.day < 10 ? '0${date.day}' : date.day.toString();

  return '$year-$month-$day';
}
