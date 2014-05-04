//
//  TableController.m
//  Mac TableViewCode
//
//  Created by Jay Versluis on 04/05/2014.
//  Copyright (c) 2014 Pinkstone Pictures LLC. All rights reserved.
//

#import "TableController.h"

@implementation TableController 


#pragma mark - Custom Initialiser

- (NSArray *)languageCodes {
    
    // populate our array with data from NSLocale so we have something to display
    if (!_languageCodes) {
        _languageCodes = [NSLocale preferredLanguages];
    }
    return _languageCodes;
}


#pragma mark - Table View Data Source

- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView {
    
    // how many rows do we have here?
    return self.languageCodes.count;
}

- (id)tableView:(NSTableView *)tableView objectValueForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row {
    
    // populate each row of our table view with data
    // display a different value depending on each column (as identified in XIB)
    
    if ([tableColumn.identifier isEqualToString:@"code"]) {
        
        // first colum (code)
        return [self.languageCodes objectAtIndex:row];
    
    } else {
        
        // second column (language)
        return [[NSLocale currentLocale]displayNameForKey:NSLocaleIdentifier value:[self.languageCodes objectAtIndex:row]];
    }
}


@end
