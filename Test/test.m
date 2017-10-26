
@interface Person ()

@property (nonatomic, strong, readonly) NSString *name1;
@property (nonatomic, strong, readonly) NSString *name2;
@property (nonatomic, strong, readonly) NSString *name3;

@end

@implementation Person

@synthesize name1 = _name1;
@synthesize name2 = _name2;
@synthesize name3 = _name3;


- (NSString *)name1 {
	if ( _name1 ) return _name1;
	
	return _name1;
}


- (NSString *)name2 {
	if ( _name2 ) return _name2;
	
	return _name2;
}


- (NSString *)name3 {
	if ( _name3 ) return _name3;
	
	return _name3;
}

@end
