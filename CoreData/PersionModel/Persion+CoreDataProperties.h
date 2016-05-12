//
//  Persion+CoreDataProperties.h
//  
//
//  Created by grx on 16/5/12.
//
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Persion.h"

NS_ASSUME_NONNULL_BEGIN

@interface Persion (CoreDataProperties)

@property (nullable, nonatomic, retain) NSNumber *age;
@property (nullable, nonatomic, retain) NSString *firstname;
@property (nullable, nonatomic, retain) NSString *lastname;

@end

NS_ASSUME_NONNULL_END
