/**
 * Copyright (c) Facebook, Inc. and its affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

#import <ReactABI33_0_0/ABI33_0_0RCTShadowView.h>
#import <ABI33_0_0yoga/ABI33_0_0YGEnums.h>

@interface ABI33_0_0RCTRootShadowView : ABI33_0_0RCTShadowView

/**
 * Available size to layout all views.
 * Defaults to {INFINITY, INFINITY}
 */
@property (nonatomic, assign) CGSize availableSize;

/**
 * Layout direction (LTR or RTL) inherited from native environment and
 * is using as a base direction value in layout engine.
 * Defaults to value inferred from current locale.
 */
@property (nonatomic, assign) ABI33_0_0YGDirection baseDirection;

- (void)layoutWithAffectedShadowViews:(NSHashTable<ABI33_0_0RCTShadowView *> *)affectedShadowViews;

@end
