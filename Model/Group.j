@implementation Group : CPObject
{
	CPMutableArray persons @accessors;
	CPString title @accessors;
}

- (id)init
{
	return [self initWithTitle:@"New Group"];
}

-(id)initWithTitle:(CPString)aTitle
{
	if(self = [super init])
	{
		title = aTitle;
		persons = [[CPMutableArray alloc] init];
	}
	return self;
}

@end