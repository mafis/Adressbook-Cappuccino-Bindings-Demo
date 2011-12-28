@implementation Person : CPObject
{
	CPString vorname @accessors;
	CPString name @accessors;
}

- (id)init
{
	if(self = [super init])
	{
		vorname = @"Max";
		name = @"Mustermann";
	}
	return self;
}

@end