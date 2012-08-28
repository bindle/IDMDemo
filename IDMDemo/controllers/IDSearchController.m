/*
 *  SAP IDM Mobile Demo
 *  Copyright (c) 2012, Bindle Binaries
 *
 *  @BINDLE_BINARIES_BSD_LICENSE_START@
 *
 *  Redistribution and use in source and binary forms, with or without
 *  modification, are permitted provided that the following conditions are
 *  met:
 *
 *     * Redistributions of source code must retain the above copyright
 *       notice, this list of conditions and the following disclaimer.
 *     * Redistributions in binary form must reproduce the above copyright
 *       notice, this list of conditions and the following disclaimer in the
 *       documentation and/or other materials provided with the distribution.
 *     * Neither the name of Bindle Binaries nor the
 *       names of its contributors may be used to endorse or promote products
 *       derived from this software without specific prior written permission.
 *
 *  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS
 *  IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
 *  THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 *  PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL BINDLE BINARIES BE LIABLE FOR
 *  ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 *  DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 *  SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 *  CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 *  LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 *  OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 *  SUCH DAMAGE.
 *
 *  @BINDLE_BINARIES_BSD_LICENSE_END@
 */
/*
 *  IDM Search Controller
 */
#import "IDSearchController.h"


@interface IDSearchController ()

@end

@implementation IDSearchController


#pragma mark - Object Management Methods

- (id) initWIthAppDelegate:(IDAppDelegate *)appDelegate
{
   if ((self = [super initWithStyle:UITableViewStyleGrouped]) == nil)
      return(self);

   // saves app state
   _appDelegate = appDelegate;

   // view meta data
   self.title = @"IDM Search";

   return(self);
}


#pragma mark - View Life Cycle

- (void) viewDidLoad
{
   [super viewDidLoad];

   // Uncomment the following line to preserve selection between presentations.
   self.clearsSelectionOnViewWillAppear = NO;
 
   // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
   // self.navigationItem.rightBarButtonItem = self.editButtonItem;

   return;
}


- (void) viewDidUnload
{
   [super viewDidUnload];
   // Release any retained subviews of the main view.
   // e.g. self.myOutlet = nil;
   return;
}


- (BOOL) shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
   return(YES);
}


#pragma mark - Table view data source

- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView
{
   // Return the number of sections.
   return(1);
}


- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
   // Return the number of rows in the section.
   return(3);
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
   UITableViewCell * cell;

   switch(indexPath.row)
   {
      case 2:
      if ((cell = [tableView dequeueReusableCellWithIdentifier:@"cellButton"]) == nil)
         cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
            reuseIdentifier:@"cellButton"];
      cell.selectionStyle            = UITableViewCellSelectionStyleGray;
      cell.detailTextLabel.textColor = [UIColor blackColor];
      cell.textLabel.textAlignment   = UITextAlignmentCenter;
      break;

      default:
      if ((cell = [tableView dequeueReusableCellWithIdentifier:@"cell"]) == nil)
         cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
            reuseIdentifier:@"cell"];
      cell.selectionStyle = UITableViewCellSelectionStyleNone;
      break;
   };

   switch(indexPath.row)
   {
      case 0:
      cell.textLabel.text = @"Full Name:";
      break;

      case 1:
      cell.textLabel.text = @"User Login:";
      break;

      case 2:
      cell.textLabel.text = @"Search";
      break;

      default:
      break;
   };

   return(cell);
}


#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
   // deselects button
   [tableView deselectRowAtIndexPath:indexPath animated:YES];

   return;
}

@end
