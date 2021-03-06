//
//  CustomerDataModel.m
//  TestSaleMJ2
//
//  Created by Theprit Anongchanya on 11/13/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CustomerDataManager.h"


@implementation CustomerDataManager
@synthesize nameKeys,nameList, customerType;
@synthesize customerName, customerWorkName;
@synthesize systemInfo,personalInfo,locationInfo,educationInfo, familyInfo,childInfo,hobbyInfo,memberInfo,homeInfo,clinicInfo,workplaceDetail,bussinessDetail,customerPatient,productRecommend,status,ses;

static CustomerDataManager* _sharedInstance = nil;

#pragma mark- Singleton method
+ (id) sharedInstance{
    @synchronized(self){
    if (_sharedInstance == nil) {
        _sharedInstance = [[[self class] alloc] init];
        
        _sharedInstance.nameKeys = nil;
        _sharedInstance.nameList = nil;
    }
    }
    return _sharedInstance;
}

+ (id) allocWithZone:(NSZone *)zone{
    @synchronized(self){
        if (_sharedInstance == nil) {
            _sharedInstance = [super allocWithZone:zone];
            return _sharedInstance;
        }
    }
    return nil;
}

- (id)copyWithZone:(NSZone*)zone{
    return self;
}

- (id) retain{
    return self;
}

- (NSUInteger)retainCount{
    return NSUIntegerMax;
}

-(void)release{
    [nameKeys release];
    [nameList release];
    
    [customerType release];
    
    [customerName release];
    [customerWorkName release];
    
    [systemInfo release];
    [personalInfo release];
    [locationInfo release];
    [educationInfo release];
    [childInfo release];
    [hobbyInfo release];
    [memberInfo release];
    [homeInfo release];
    [clinicInfo release];
    [workplaceDetail release];
    [bussinessDetail release];
    [customerPatient release];
    [productRecommend release];
    [status release];
    [ses release];
    
    [_sharedInstance release];
}

- (id)autorelease{
    return self;
}

#pragma mark- Name Dictionary handles

- (NSArray*) GetCustomerNameKeys{
    
    if (_sharedInstance.nameKeys == nil) {
        _sharedInstance.nameKeys = [[NSArray alloc] initWithObjects:@"A",@"B",@"C",@"D",@"E",@"F",@"G",@"H",@"I",@"J",@"K",@"L",@"M",@"N",@"O",@"P",@"Q",@"R",@"S",@"T",@"U",@"V",@"W",@"X",@"Y",@"Z", nil];
    }
    
    return _sharedInstance.nameKeys;
}

- (NSArray*) GetCustomerNameList{
    
    if (_sharedInstance.nameList == nil) {
        NSArray* alist = [[NSArray alloc] initWithObjects: @"aa", @"aaa",nil];
        NSArray* blist = [[NSArray alloc] initWithObjects: @"bb", @"aaa",nil];
        NSArray* clist = [[NSArray alloc] initWithObjects: @"cc", @"aaa",nil];
        NSArray* dlist = [[NSArray alloc] initWithObjects: @"dd", @"aaa",nil];
        NSArray* elist = [[NSArray alloc] initWithObjects: @"ee", @"aaa",nil];
        NSArray* flist = [[NSArray alloc] initWithObjects: @"ff", @"aaa",nil];
        NSArray* glist = [[NSArray alloc] initWithObjects: @"gg", @"aaa",nil];
        NSArray* hlist = [[NSArray alloc] initWithObjects: @"hh", @"aaa",nil];
        NSArray* ilist = [[NSArray alloc] initWithObjects: @"ii", @"aaa",nil];
        NSArray* jlist = [[NSArray alloc] initWithObjects: @"jj", @"aaa",nil];
        NSArray* klist = [[NSArray alloc] initWithObjects: @"kk", @"aaa",nil];
        NSArray* llist = [[NSArray alloc] initWithObjects: @"ll", @"aaa",nil];
        NSArray* mlist = [[NSArray alloc] initWithObjects: @"mm", @"aaa",nil];
        NSArray* nlist = [[NSArray alloc] initWithObjects: @"nn", @"aaa",nil];
        NSArray* olist = [[NSArray alloc] initWithObjects: @"oo", @"aaa",nil];
        NSArray* plist = [[NSArray alloc] initWithObjects: @"pp", @"aaa",nil];
        NSArray* qlist = [[NSArray alloc] initWithObjects: @"qq", @"aaa",nil];
        NSArray* rlist = [[NSArray alloc] initWithObjects: @"rr", @"aaa",nil];
        NSArray* slist = [[NSArray alloc] initWithObjects: @"ss", @"aaa",nil];
        NSArray* tlist = [[NSArray alloc] initWithObjects: @"tt", @"aaa",nil];
        NSArray* ulist = [[NSArray alloc] initWithObjects: @"uu", @"aaa",nil];
        NSArray* vlist = [[NSArray alloc] initWithObjects: @"vv", @"aaa",nil];
        NSArray* wlist = [[NSArray alloc] initWithObjects: @"ww", @"aaa",nil];
        NSArray* xlist = [[NSArray alloc] initWithObjects: @"xx", @"aaa",nil];
        NSArray* ylist = [[NSArray alloc] initWithObjects: @"yy", @"aaa",nil];
        NSArray* zlist = [[NSArray alloc] initWithObjects: @"zz", @"aaa",nil];
        
        //Create Dictionary data
        _sharedInstance.nameList = [[NSArray alloc] initWithObjects:alist,blist,clist,dlist,elist,flist,glist,hlist,ilist,jlist,klist,llist,mlist,nlist,olist,plist,qlist,rlist,slist,tlist,ulist,vlist,wlist,xlist,ylist,zlist,nil];
        
        [zlist release];
        [ylist release];
        [xlist release];
        [wlist release];
        [vlist release];
        [ulist release];
        [tlist release];
        [slist release];
        [rlist release];
        [qlist release];
        [plist release];
        [olist release];
        [nlist release];
        [mlist release];
        [llist release];
        [klist release];
        [jlist release];
        [ilist release];
        [hlist release];
        [glist release];
        [flist release];
        [elist release];
        [dlist release];
        [clist release];
        [blist release];
        [alist release];
    }
    
    return _sharedInstance.nameList;
}

- (NSArray*) GetCustomerType{
    
    if (_sharedInstance.customerType == nil) {
        _sharedInstance.customerType = [[NSArray alloc] initWithObjects:@"Type A",@"Type B",@"Type C", nil];
    }
    
    return _sharedInstance.customerType;
}


- (NSString*) GetPictureProfilePath{
    return @"";
}

- (NSString*) GetCustomerDetailName{
    _sharedInstance.customerName = @"ttttt   tttttt";
    return _sharedInstance.customerName;
}

- (NSString*) GetCustomerWorkName{
    _sharedInstance.customerWorkName = @"work name";
    return _sharedInstance.customerWorkName;
}

- (NSArray*) GetCustomerDetailSystemInfo{
    if (_sharedInstance.systemInfo == nil) {
        NSString* profileCode = [NSString stringWithFormat:@"1234"];
        NSString* profile1 = [NSString stringWithFormat:@"12345"];
        NSString* profile2 = [NSString stringWithFormat:@"12345"];
        NSString* profile3 = [NSString stringWithFormat:@"12345"];
        
        _sharedInstance.systemInfo = [[NSArray alloc] initWithObjects:profileCode,profile1,profile2,profile3, nil];
    }
    return _sharedInstance.systemInfo;
}

- (NSArray*) GetCustomerDetailPersonalInfo{
    if (_sharedInstance.personalInfo == nil) {
        NSString* email = [NSString stringWithFormat:@"suthikiet#crm-c.com"];
        NSString* tel = [NSString stringWithFormat:@"0899999999"];
        NSString* sex = [NSString stringWithFormat:@"Male"];
        NSString* brithday = [NSString stringWithFormat:@"12/11/2011"];
        NSString* number = [NSString stringWithFormat:@"1234567890123"];
        
        _sharedInstance.personalInfo = [[NSArray alloc] initWithObjects:email,tel,sex,brithday,number, nil];
    }
    return _sharedInstance.personalInfo;
}

- (NSArray*) GetCustomerDetailLocation{
    if (_sharedInstance.locationInfo == nil) {
        NSString* latitude = [NSString stringWithFormat:@"1234"];
        NSString* longtitude = [NSString stringWithFormat:@"12345"];
        NSString* UpdateDate = [NSString stringWithFormat:@"11/11/2011"];
        
        _sharedInstance.locationInfo = [[NSArray alloc] initWithObjects:latitude,longtitude,UpdateDate, nil];
    }
    return _sharedInstance.locationInfo;
}

- (NSArray*) GetCustomerDetailEducationInfo{
    if (_sharedInstance.educationInfo == nil) {
        NSString* educationLevel = [NSString stringWithFormat:@"P.D."];
        NSString* educationMajor = [NSString stringWithFormat:@"Doctor"];
        NSString* educationPlace = [NSString stringWithFormat:@"Jula"];
        
        _sharedInstance.educationInfo = [[NSArray alloc] initWithObjects:educationLevel,educationMajor,educationPlace, nil];
    }
    return _sharedInstance.educationInfo;
}

- (NSArray*) GetCustomerDetailFamilyInfo{
    if (_sharedInstance.familyInfo == nil) {
        NSString* martialStatus = [NSString stringWithFormat:@"Married"];
        NSString* spourse = [NSString stringWithFormat:@"Miss Sunchai"];
        NSString* spourseBirthDate = [NSString stringWithFormat:@"12/11/2011"];
        NSString* childCount = [NSString stringWithFormat:@"1"];
        NSString* netIncome = [NSString stringWithFormat:@"50000-99999 Bath"];
        
        _sharedInstance.familyInfo = [[NSArray alloc] initWithObjects:martialStatus,spourse,spourseBirthDate,childCount,netIncome, nil];
    }
    return _sharedInstance.familyInfo;
}


- (NSInteger) GetCustomerDetailChildCount{
    return 3;
}

- (NSArray*) GetCustomerDetailChildInfo{
    if (_sharedInstance.childInfo == nil) {
        
        NSInteger childCount = [_sharedInstance GetCustomerDetailChildCount];
        
        _sharedInstance.childInfo = [[NSMutableArray alloc] initWithCapacity: 99];
        
        for (int i=0; i<childCount; i++) {
            NSString* childName = [NSString stringWithFormat:@"chaiya"];
            NSString* childData = [NSString stringWithFormat:@"Age 20 Birthdate 12/10/2003"];
            NSArray* child = [[NSArray alloc] initWithObjects:childName,childData, nil];
            
            [_sharedInstance.childInfo addObject:child];
        }
    }
    return _sharedInstance.childInfo;
}

- (NSInteger) GetCustomerDetailHobbyInfoCount{
    return 2;
}

- (NSArray*) GetCustomerDetailHobbyInfo{
    if (_sharedInstance.hobbyInfo == nil) {
        
        NSInteger hobbyCount = [_sharedInstance GetCustomerDetailHobbyInfoCount];
        
        _sharedInstance.hobbyInfo = [[NSMutableArray alloc] initWithCapacity: 99];
        
        for (int i=0; i<hobbyCount; i++) {
            NSString* hobbyName = [NSString stringWithFormat:@"Dance"];
            NSString* hobbyData = [NSString stringWithFormat:@"Expanse Place"];
            NSArray* hobby = [[NSArray alloc] initWithObjects:hobbyName,hobbyData, nil];
            
            [_sharedInstance.hobbyInfo addObject:hobby];
        }
    }
    return _sharedInstance.hobbyInfo;
}

- (NSInteger) GetCustomerDetailMemberDetailCount{
    return 2;
}

- (NSArray*) GetCustomerDetailMemberDetail{
    if (_sharedInstance.memberInfo == nil) {
        
        NSInteger memberCount = [_sharedInstance GetCustomerDetailMemberDetailCount];
        
        _sharedInstance.memberInfo = [[NSMutableArray alloc] initWithCapacity: 99];
        
        for (int i=0; i<memberCount; i++) {
            NSString* memberID = [NSString stringWithFormat:@"123456"];
            NSString* membername = [NSString stringWithFormat:@"Sutgukiet boo"];
            NSString* beginDate = [NSString stringWithFormat:@"12/31/2001"];
            NSString* expireDate = [NSString stringWithFormat:@"12/31/2044"];
            NSString* memberStatus = [NSString stringWithFormat:@"Y"];
            NSArray* member = [[NSArray alloc] initWithObjects:memberID,membername,beginDate,expireDate,memberStatus, nil];
            
            [_sharedInstance.memberInfo addObject:member];
        }
    }
    return _sharedInstance.memberInfo;
}

- (NSArray*) GetCustomerDetailHomeInfo{
    if (_sharedInstance.homeInfo == nil) {
        NSString* address1 = [NSString stringWithFormat:@"Praramkao hospital"];
        NSString* address2 = [NSString stringWithFormat:@"99 parramkao"];
        NSString* subdistrict = [NSString stringWithFormat:@"-"];
        NSString* district = [NSString stringWithFormat:@"huikwang"];
        NSString* Province = [NSString stringWithFormat:@"BKK"];
        NSString* zip = [NSString stringWithFormat:@"10320"];
         NSString* phone = [NSString stringWithFormat:@"084985433"];
         NSString* ext = [NSString stringWithFormat:@""];
         NSString* fax = [NSString stringWithFormat:@"083999999"];
         NSString* conveniencetime = [NSString stringWithFormat:@"afternoon"];
        _sharedInstance.homeInfo = [[NSArray alloc] initWithObjects:address1,address2,subdistrict,district,Province,zip,phone,ext,fax,conveniencetime, nil];
    }
    return _sharedInstance.homeInfo;
}

- (NSArray*) GetCustomerDetailClinicInfo{
    if (_sharedInstance.clinicInfo == nil) {
        NSString* address1 = [NSString stringWithFormat:@"Praramkao hospital"];
        NSString* address2 = [NSString stringWithFormat:@"99 parramkao"];
        NSString* subdistrict = [NSString stringWithFormat:@"-"];
        NSString* district = [NSString stringWithFormat:@"huikwang"];
        NSString* Province = [NSString stringWithFormat:@"BKK"];
        NSString* zip = [NSString stringWithFormat:@"10320"];
        NSString* phone = [NSString stringWithFormat:@"084985433"];
        NSString* ext = [NSString stringWithFormat:@""];
        NSString* fax = [NSString stringWithFormat:@"083999999"];
        NSString* conveniencetime = [NSString stringWithFormat:@"afternoon"];
        _sharedInstance.clinicInfo = [[NSArray alloc] initWithObjects:address1,address2,subdistrict,district,Province,zip,phone,ext,fax,conveniencetime, nil];
    }
    return _sharedInstance.clinicInfo;
}

- (NSInteger) GetCustomerDetailWorkplaceDetailCount{
    return 2;
}

- (NSArray*) GetCustomerDetailWorkplaceDetail{
    if (_sharedInstance.workplaceDetail == nil) {
        
        NSInteger workplaceCount = [_sharedInstance GetCustomerDetailWorkplaceDetailCount];
        
        _sharedInstance.workplaceDetail = [[NSMutableArray alloc] initWithCapacity: 99];
        
        for (int i=0; i<workplaceCount; i++) {
            NSString* workplaceName = [NSString stringWithFormat:@"Saint Luy Hospital"];
            NSString* workplaceData = [NSString stringWithFormat:@"Description"];
            NSArray* workplace = [[NSArray alloc] initWithObjects:workplaceName, workplaceData, nil];
            
            [_sharedInstance.workplaceDetail addObject:workplace];
        }
    }
    return _sharedInstance.workplaceDetail;
}

- (NSArray*) GetCustomerDetailBussinessDetail{
    if (_sharedInstance.bussinessDetail == nil) {
        NSString* emarald = [NSString stringWithFormat:@"yes"];
        NSString* sapphire = [NSString stringWithFormat:@"yes"];
        
        _sharedInstance.bussinessDetail = [[NSArray alloc] initWithObjects:emarald,sapphire, nil];
    }
    
    return _sharedInstance.bussinessDetail;
}

- (NSArray*) GetCustomerDetailCustomerPatient{
    if (_sharedInstance.customerPatient == nil) {
        NSString* stage0 = [NSString stringWithFormat:@"Stage 0"];
        NSString* stage0_1 = [NSString stringWithFormat:@"100"];
        NSString* stage0_2 = [NSString stringWithFormat:@"20"];
        NSArray* stage0_Array = [[NSArray alloc] initWithObjects:stage0, stage0_1, stage0_2,nil];
        
        NSString* stage1 = [NSString stringWithFormat:@"Stage 1 Premium"];
        NSString* stage1_1 = [NSString stringWithFormat:@"60"];
        NSString* stage1_2 = [NSString stringWithFormat:@"20"];
        NSArray* stage1_Array = [[NSArray alloc] initWithObjects:stage1, stage1_1, stage1_2,nil];

        NSString* stage2E = [NSString stringWithFormat:@"Stage 2 Economy"];
        NSString* stage2E_1 = [NSString stringWithFormat:@"0"];
        NSString* stage2E_2 = [NSString stringWithFormat:@"0"];
        NSArray* stage2E_Array = [[NSArray alloc] initWithObjects:stage2E, stage2E_1, stage2E_2,nil];

        NSString* special = [NSString stringWithFormat:@"Special Group"];
        NSString* special_1 = [NSString stringWithFormat:@"0"];
        NSString* special_2 = [NSString stringWithFormat:@"0"];
        NSArray* special_Array = [[NSArray alloc] initWithObjects:special, special_1, special_2,nil];

        NSString* stage2P = [NSString stringWithFormat:@"Stage 2 Premium"];
        NSString* stage2P_1 = [NSString stringWithFormat:@"300"];
        NSString* stage2P_2 = [NSString stringWithFormat:@"200"];
        NSArray* stage2P_Array = [[NSArray alloc] initWithObjects:stage2P, stage2P_1, stage2P_2,nil];

        NSString* stage2E2 = [NSString stringWithFormat:@"Stage 2 Economy"];
        NSString* stage2E2_1 = [NSString stringWithFormat:@"40"];
        NSString* stage2E2_2 = [NSString stringWithFormat:@"10"];
        NSArray* stage2E2_Array = [[NSArray alloc] initWithObjects:stage2E2, stage2E2_1, stage2E2_2,nil];

        _sharedInstance.customerPatient = [[NSArray alloc] initWithObjects:stage0_Array,stage1_Array,stage2E_Array,special_Array,stage2P_Array,stage2E2_Array, nil];
    }
    return _sharedInstance.customerPatient;
}


- (NSArray*) GetCustomerDetailProductRecommend{
    if (_sharedInstance.productRecommend == nil) {
        NSString* snow = [NSString stringWithFormat:@"Snow"];
        NSString* snow_1 = [NSString stringWithFormat:@"1"];
        NSArray* snow_Array = [[NSArray alloc] initWithObjects:snow, snow_1,nil];
        
        NSString* snow2 = [NSString stringWithFormat:@"Something"];
        NSString* snow2_1 = [NSString stringWithFormat:@"1"];
        NSArray* snow2_Array = [[NSArray alloc] initWithObjects:snow2, snow2_1,nil];
        
        _sharedInstance.productRecommend = [[NSArray alloc] initWithObjects:snow_Array,snow2_Array, nil];
    }
    return _sharedInstance.productRecommend;
}

- (NSArray*) GetCustomerDetailStatus{
    if (_sharedInstance.status == nil) {
        
        NSString* recommender = [NSString stringWithFormat:@"no"];
        NSString* roComm_ptc = [NSString stringWithFormat:@"no"];
        NSString* department_head = [NSString stringWithFormat:@"yes"];
        NSString* kol = [NSString stringWithFormat:@"no"];
        NSString* end_users = [NSString stringWithFormat:@"yes"];
        NSString* directir_assistDi = [NSString stringWithFormat:@"no"];
        NSString* ped_obNurse = [NSString stringWithFormat:@"yes"];
        NSString* ped_obDoctor = [NSString stringWithFormat:@"no"];
        NSString* depo = [NSString stringWithFormat:@"no"];
        NSString* pregList = [NSString stringWithFormat:@"no"];
        NSString* editDate = [NSString stringWithFormat:@"12/30/2011"];
        
        _sharedInstance.status = [[NSArray alloc] initWithObjects:recommender,roComm_ptc,department_head,kol,end_users,directir_assistDi,ped_obNurse,ped_obDoctor,depo,pregList,editDate, nil];
    }
    
    return _sharedInstance.status;
}

- (NSArray*) GetCustomerDetailSES{
    if (_sharedInstance.ses == nil) {
        NSString* high = [NSString stringWithFormat:@"yes"];
        NSString* medium = [NSString stringWithFormat:@"yes"];
        
        _sharedInstance.ses = [[NSArray alloc] initWithObjects:high,medium, nil];
    }
    
    return _sharedInstance.ses;
}



//Sub

- (NSArray*) GetCustomerDetailEditChildInfo:(NSString*)childID{
   
        NSString* childnumber = [NSString stringWithFormat:@"1"];
        NSString* childname = [NSString stringWithFormat:@"xmen"];
        NSString* sex = [NSString stringWithFormat:@"male"];
        NSString* birthdate = [NSString stringWithFormat:@"02/02/2000"];
        
        NSArray* aa = [[NSArray alloc] initWithObjects:childnumber,childname,sex,birthdate, nil];
    
    
    return aa;
}

- (bool) SaveEditingChildInfo:(NSString*)childID Name:(NSString*)childname Sex:(NSString*)sex BirthDay:(NSString*)bd{
    
    return true;
}


- (bool) AddNewChildInfo:(NSString*)childID Name:(NSString*)childname Sex:(NSString*)sex BirthDay:(NSString*)bd{
    return true;
}

- (NSArray*) GetCustomerDetailEditHobbyInfo:(NSString*)hobbyID{
    
    NSString* hobbyType = [NSString stringWithFormat:@"Swim"];
    NSString* description = [NSString stringWithFormat:@"sea"];
    
    NSArray* aa = [[NSArray alloc] initWithObjects:hobbyType,description, nil];

    return aa;
}

- (bool) SaveEditingHobbyInfo:(NSString*)hobbyID Type:(NSString*)hobbyType Description:(NSString*)desc{
    return true;
}

- (bool) AddNewHobbyInfo:(NSString*)hobbyID Type:(NSString*)hobbyType Description:(NSString*)desc{
    return true;
}

- (NSArray*) GetHobbyList{
    NSString* hobby1 = [NSString stringWithFormat:@"h1"];
    NSString* hobby2 = [NSString stringWithFormat:@"h2"];
    NSString* hobby3 = [NSString stringWithFormat:@"h3"];
    NSString* hobby4 = [NSString stringWithFormat:@"h4"];
    
    NSArray* aa = [[NSArray alloc] initWithObjects:hobby1,hobby2,hobby3,hobby4, nil];
    
    return aa;
}

- (NSArray*) GetCustomerDetailEditWorkplaceDetail:(NSString*)workplaceID{
    
    NSString* hospital = [NSString stringWithFormat:@"ere"];
    NSString* department = [NSString stringWithFormat:@"dd"];
    NSString* building = [NSString stringWithFormat:@"xx"];
    NSString* workTime = [NSString stringWithFormat:@"afternoon"];
    
    NSArray* aa = [[NSArray alloc] initWithObjects:hospital,department,building,workTime, nil];
    
    
    return aa;
}

- (bool) SaveEditingWorkplaceDetail:(NSString*)workplaceID Hospital:(NSString*)hospitalName Department:(NSString*)DepartName Building:(NSString*)buildingName WorkTime:(NSString*)worktime{
    return true;
}

- (bool) AddNewWorkplaceDetail:(NSString*)workplaceID Hospital:(NSString*)hospitalName Department:(NSString*)DepartName Building:(NSString*)buildingName WorkTime:(NSString*)worktime{
    return true;
}

@end
