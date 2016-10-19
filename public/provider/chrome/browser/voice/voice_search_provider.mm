// Copyright 2016 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#import "ios/public/provider/chrome/browser/voice/voice_search_provider.h"

NSArray* VoiceSearchProvider::GetAvailableLanguages() const {
  return @[];
}

AudioSessionController* VoiceSearchProvider::GetAudioSessionController() const {
  return nil;
}
