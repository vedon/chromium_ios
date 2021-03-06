// Copyright 2017 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#import "ios/chrome/browser/ui/util/pasteboard_util.h"

#import <MobileCoreServices/MobileCoreServices.h>
#import <UIKit/UIKit.h>

#include "base/strings/sys_string_conversions.h"
#import "net/base/mac/url_conversions.h"
#include "url/gurl.h"

void StoreURLInPasteboard(const GURL& URL) {
  DCHECK(URL.is_valid());
  NSData* plainText = [base::SysUTF8ToNSString(URL.spec())
      dataUsingEncoding:NSUTF8StringEncoding];
  NSDictionary* copiedItem = @{
    (NSString*)kUTTypeURL : net::NSURLWithGURL(URL),
    (NSString*)kUTTypeUTF8PlainText : plainText,
  };
  [[UIPasteboard generalPasteboard] setItems:@[ copiedItem ]];
}
