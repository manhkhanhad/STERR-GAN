# Copyright (c) OpenMMLab. All rights reserved.
# from .gan_loss_basicvsr import DiscShiftLoss, GANLoss, GaussianBlur, GradientPenaltyLoss
# from .perceptual_loss_basicvsr import PerceptualLoss, PerceptualVGG

# from .gan_loss_basicvsr import DiscShiftLoss, GANLoss, GaussianBlur, GradientPenaltyLoss
from .perceptual_loss import PerceptualLoss
from .pixelwise_loss import CharbonnierLoss, L1Loss, MaskedTVLoss, MSELoss
from .gan_loss import GANLoss
from .utils import mask_reduce_loss, reduce_loss

__all__ = [
    'L1Loss',
    'MSELoss',
    'CharbonnierLoss',
    'GANLoss',
    # 'GaussianBlur',
    # 'GradientPenaltyLoss',
    'PerceptualLoss',
    # 'PerceptualVGG',
    'reduce_loss',
    'mask_reduce_loss',
    # 'DiscShiftLoss',
    'MaskedTVLoss',
]
