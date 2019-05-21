/**
 * Copyright (c) Facebook, Inc. and its affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

#import "ABI33_0_0RCTMultiplicationAnimatedNode.h"

@implementation ABI33_0_0RCTMultiplicationAnimatedNode

- (void)performUpdate
{
  [super performUpdate];

  NSArray<NSNumber *> *inputNodes = self.config[@"input"];
  if (inputNodes.count > 1) {
    ABI33_0_0RCTValueAnimatedNode *parent1 = (ABI33_0_0RCTValueAnimatedNode *)[self.parentNodes objectForKey:inputNodes[0]];
    ABI33_0_0RCTValueAnimatedNode *parent2 = (ABI33_0_0RCTValueAnimatedNode *)[self.parentNodes objectForKey:inputNodes[1]];
    if ([parent1 isKindOfClass:[ABI33_0_0RCTValueAnimatedNode class]] &&
        [parent2 isKindOfClass:[ABI33_0_0RCTValueAnimatedNode class]]) {
      self.value = parent1.value * parent2.value;
    }
  }
}

@end
