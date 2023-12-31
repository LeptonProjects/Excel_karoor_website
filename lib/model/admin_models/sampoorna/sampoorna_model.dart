// To parse this JSON data, do
//
//     final sampoornaModel = sampoornaModelFromJson(jsonString);

import 'dart:convert';

SampoornaModel sampoornaModelFromJson(String str) =>
    SampoornaModel.fromJson(json.decode(str));

String sampoornaModelToJson(SampoornaModel data) => json.encode(data.toJson());

class SampoornaModel {
  SampoornaModel(
      {required this.schoolCode,
      required this.admissionNumber,
      required this.stdDiv,
      required this.nameOfStudent,
      required this.gender,
      required this.nationality,
      required this.academicClass,
      required this.academicYear,
      required this.academicResult,
      required this.arts,
      required this.sports,
      required this.technology,
      required this.schoolLevelAchievements,
      required this.districtLevelAchievements,
      required this.stateLevelAchievements,
      required this.scholarShip,
      required this.skills,
      required this.nameOfStudentFather,
      required this.nameOfStudentMother,
      required this.otherSpecifyRelation,
      required this.nameOfGuardian,
      required this.occupationOfParent,
      required this.annualIncome,
      required this.aplOrBpl,
      required this.houseName,
      required this.placeOrStreet,
      required this.district,
      required this.state,
      required this.taluk,
      required this.panchayathOrOther,
      required this.districtPanchayath,
      required this.blockPanchayath,
      required this.nameOfLocalBody,
      required this.postOffice,
      required this.pinCode,
      required this.phoneNumber,
      required this.studentEmail,
      required this.tcNumber,
      required this.tcDate,
      required this.schoolPreviouslyAttended,
      required this.dateOfAdmission,
      required this.placeOfBirth,
      required this.dateOfBirth,
      required this.bloodGroup,
      required this.relegion,
      required this.category,
      required this.belongScOrSt,
      required this.caste,
      required this.stdOnAdmission,
      required this.divisionOnAdmission,
      required this.previousClassAndDivision,
      required this.currentClass,
      required this.currentDivision,
      required this.totalNumberOfWorkingDays,
      required this.cswnchildren,
      required this.disability,
      required this.instructionMedium,
      required this.firstLanguagePaper1,
      required this.firstLanguagePaper2,
      required this.thirdLanguage,
      required this.vaccination,
      required this.identificationMark1,
      required this.identificationMark2,
      required this.memberShip,
      required this.extraCurriculamActivity,
      required this.teachersOpinion,
      required this.clubs,
      required this.id});

  String schoolCode;
  String admissionNumber;
  String stdDiv;
  String nameOfStudent;
  String gender;
  String nationality;
  String academicClass;
  String academicYear;
  String academicResult;
  String arts;
  String sports;
  String technology;
  String schoolLevelAchievements;
  String districtLevelAchievements;
  String stateLevelAchievements;
  String scholarShip;
  String skills;
  String nameOfStudentFather;
  String nameOfStudentMother;
  String otherSpecifyRelation;
  String nameOfGuardian;
  String occupationOfParent;
  String annualIncome;
  String aplOrBpl;
  String houseName;
  String placeOrStreet;
  String district;
  String state;
  String taluk;
  String panchayathOrOther;
  String districtPanchayath;
  String blockPanchayath;
  String nameOfLocalBody;
  String postOffice;
  String pinCode;
  String phoneNumber;
  String studentEmail;
  String tcNumber;
  String tcDate;
  String schoolPreviouslyAttended;
  String dateOfAdmission;
  String placeOfBirth;
  String dateOfBirth;
  String bloodGroup;
  String relegion;
  String category;
  String belongScOrSt;
  String caste;
  String stdOnAdmission;
  String divisionOnAdmission;
  String previousClassAndDivision;
  String currentClass;
  String currentDivision;
  String totalNumberOfWorkingDays;
  String cswnchildren;
  List<Map<String, dynamic>> disability;
  String instructionMedium;
  String firstLanguagePaper1;
  String firstLanguagePaper2;
  String thirdLanguage;
  String vaccination;
  String identificationMark1;
  String identificationMark2;
  String memberShip;
  String extraCurriculamActivity;
  String teachersOpinion;
  List<Map<String, dynamic>> clubs;
  String id;

  factory SampoornaModel.fromJson(Map<String, dynamic> json) => SampoornaModel(
        schoolCode: json["schoolCode"],
        admissionNumber: json["admissionNumber"],
        stdDiv: json["std&div"],
        nameOfStudent: json["nameOfStudent"],
        gender: json["gender"],
        nationality: json["nationality"],
        academicClass: json["academicClass"],
        academicYear: json["academicYear"],
        academicResult: json["academicResult"],
        arts: json["arts"],
        sports: json["sports"],
        technology: json["technology"],
        schoolLevelAchievements: json["schoolLevelAchievements"],
        districtLevelAchievements: json["districtLevelAchievements"],
        stateLevelAchievements: json["stateLevelAchievements"],
        scholarShip: json["scholarShip"],
        skills: json["skills"],
        nameOfStudentFather: json["nameOfStudentFather"],
        nameOfStudentMother: json["nameOfStudentMother"],
        otherSpecifyRelation: json["otherSpecifyRelation"],
        nameOfGuardian: json["nameOfGuardian"],
        occupationOfParent: json["occupationOfParent"],
        annualIncome: json["annualIncome"],
        aplOrBpl: json["aplOrBpl"],
        houseName: json["houseName"],
        placeOrStreet: json["placeOrStreet"],
        district: json["district"],
        state: json["state"],
        taluk: json["Taluk"],
        panchayathOrOther: json["panchayathOrOther"],
        districtPanchayath: json["districtPanchayath"],
        blockPanchayath: json["blockPanchayath"],
        nameOfLocalBody: json["nameOfLocalBody"],
        postOffice: json["postOffice"],
        pinCode: json["pinCode"],
        phoneNumber: json["phoneNumber"],
        studentEmail: json["studentEmail"],
        tcNumber: json["tcNumber"],
        tcDate: json["tcDate"],
        schoolPreviouslyAttended: json["schoolPreviouslyAttended"],
        dateOfAdmission: json["dateOfAdmission"],
        placeOfBirth: json["placeOfBirth"],
        dateOfBirth: json["dateOfBirth"],
        bloodGroup: json["bloodGroup"],
        relegion: json["relegion"],
        category: json["category"],
        belongScOrSt: json["belongScOrST"],
        caste: json["caste"],
        stdOnAdmission: json["stdOnAdmission"],
        divisionOnAdmission: json["divisionOnAdmission"],
        previousClassAndDivision: json["previousClassAndDivision"],
        currentClass: json["currentClass"],
        currentDivision: json["currentDivision"],
        totalNumberOfWorkingDays: json["totalNumberOfWorkingDays"],
        cswnchildren: json["cswnchildren"],
        disability:
            List<Map<String, dynamic>>.from(json["disability"].map((x) => x)),
        instructionMedium: json["instructionMedium"],
        firstLanguagePaper1: json["firstLanguagePaper1"],
        firstLanguagePaper2: json["firstLanguagePaper2"],
        thirdLanguage: json["thirdLanguage"],
        vaccination: json["vaccination"],
        identificationMark1: json["identificationMark1"],
        identificationMark2: json["identificationMark2"],
        memberShip: json["memberShip"],
        extraCurriculamActivity: json["extraCurriculamActivity"],
        teachersOpinion: json["teachersOpinion"],
        clubs: List<Map<String, dynamic>>.from(json["clubs"].map((x) => x)),
        id: json['id'],
      );

  Map<String, dynamic> toJson() => {
        "schoolCode": schoolCode,
        "admissionNumber": admissionNumber,
        "std&div": stdDiv,
        "nameOfStudent": nameOfStudent,
        "gender": gender,
        "nationality": nationality,
        "academicClass": academicClass,
        "academicYear": academicYear,
        "academicResult": academicResult,
        "arts": arts,
        "sports": sports,
        "technology": technology,
        "schoolLevelAchievements": schoolLevelAchievements,
        "districtLevelAchievements": districtLevelAchievements,
        "stateLevelAchievements": stateLevelAchievements,
        "scholarShip": scholarShip,
        "skills": skills,
        "nameOfStudentFather": nameOfStudentFather,
        "nameOfStudentMother": nameOfStudentMother,
        "otherSpecifyRelation": otherSpecifyRelation,
        "nameOfGuardian": nameOfGuardian,
        "occupationOfParent": occupationOfParent,
        "annualIncome": annualIncome,
        "aplOrBpl": aplOrBpl,
        "houseName": houseName,
        "placeOrStreet": placeOrStreet,
        "district": district,
        "state": state,
        "Taluk": taluk,
        "panchayathOrOther": panchayathOrOther,
        "districtPanchayath": districtPanchayath,
        "blockPanchayath": blockPanchayath,
        "nameOfLocalBody": nameOfLocalBody,
        "postOffice": postOffice,
        "pinCode": pinCode,
        "phoneNumber": phoneNumber,
        "studentEmail": studentEmail,
        "tcNumber": tcNumber,
        "tcDate": tcDate,
        "schoolPreviouslyAttended": schoolPreviouslyAttended,
        "dateOfAdmission": dateOfAdmission,
        "placeOfBirth": placeOfBirth,
        "dateOfBirth": dateOfBirth,
        "bloodGroup": bloodGroup,
        "relegion": relegion,
        "category": category,
        "belongScOrST": belongScOrSt,
        "caste": caste,
        "stdOnAdmission": stdOnAdmission,
        "divisionOnAdmission": divisionOnAdmission,
        "previousClassAndDivision": previousClassAndDivision,
        "currentClass": currentClass,
        "currentDivision": currentDivision,
        "totalNumberOfWorkingDays": totalNumberOfWorkingDays,
        "cswnchildren": cswnchildren,
        "disability": List<dynamic>.from(disability.map((x) => x)),
        "instructionMedium": instructionMedium,
        "firstLanguagePaper1": firstLanguagePaper1,
        "firstLanguagePaper2": firstLanguagePaper2,
        "thirdLanguage": thirdLanguage,
        "vaccination": vaccination,
        "identificationMark1": identificationMark1,
        "identificationMark2": identificationMark2,
        "memberShip": memberShip,
        "extraCurriculamActivity": extraCurriculamActivity,
        "teachersOpinion": teachersOpinion,
        "clubs": List<dynamic>.from(clubs.map((x) => x)),
        "id": id
      };
}
