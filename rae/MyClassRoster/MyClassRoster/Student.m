//
//  Student.m
//  MyClassRoster
//
//  Created by Rachael A Helsel on 11/16/16.
//  Copyright © 2016 Rachael A Helsel. All rights reserved.
//

#import "Student.h"

@implementation Student

-(instancetype)initWithFirstName:(NSString *)firstName lastName:(NSString *)lastName email:(NSString  *)email{

    self = [super init];
    
    if(self){
        self.firstName = firstName;
        self.lastName = lastName;
        self.email = email;
    
    }

    return self;
}

//MARK: NSCopying Protocol
-(id)copyWithZone:(NSZone *)zone{

    Student *student = [[Student alloc]init];
    student.firstName = self.firstName;
    student.lastName = self.lastName;
    student.email = self.email;

    return student;
}


//MARK: NSCoding Protocol Methods
-(instancetype)initWithCoder:(NSCoder *)aDecoder{
    self = [super init];
    
    if(self){
        //self.firstName is referencing the setter method
        self.firstName = [aDecoder decodeObjectForKey:@"firstName"];
        self.lastName = [aDecoder decodeObjectForKey:@"lastName"];
        self.email = [aDecoder decodeObjectForKey:@"email"];
    }
    
    return self;

}

-(void)encodeWithCoder:(NSCoder *)aCoder{
    [aCoder encodeObject:[self firstName] forKey:@"firstName"];
    [aCoder encodeObject:[self lastName] forKey:@"lastName"];
    [aCoder encodeObject:[self email] forKey:@"email"];

}

@end
