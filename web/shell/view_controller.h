// Copyright 2014 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#ifndef IOS_WEB_SHELL_VIEW_CONTROLLER_H_
#define IOS_WEB_SHELL_VIEW_CONTROLLER_H_

#import <UIKit/UIKit.h>

namespace web {
class BrowserState;
class WebState;
}

// Accessibility label for the back button.
extern NSString* const kWebShellBackButtonAccessibilityLabel;
// Accessibility label for the forward button.
extern NSString* const kWebShellForwardButtonAccessibilityLabel;
// Accessibility label for the URL address text field.
extern NSString* const kWebShellAddressFieldAccessibilityLabel;

// Implements the main UI for ios_web_shell, including a toolbar and web view.
@interface ViewController : UIViewController

@property(nonatomic, retain) IBOutlet UIView* containerView;
@property(nonatomic, retain) IBOutlet UIToolbar* toolbarView;
@property(nonatomic, assign, readonly) web::WebState* webState;

// Initializes a new ViewController from |MainView.xib| using the given
// |browserState|.
- (instancetype)initWithBrowserState:(web::BrowserState*)browserState;

@end

#endif  // IOS_WEB_SHELL_VIEW_CONTROLLER_H_
