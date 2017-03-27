import os
import numpy as np
import cv2
import matplotlib as mpl
mpl.use('TkAgg')
import matplotlib.pyplot as plt


build_dir = '/src/build'
if not os.path.exists(build_dir):
    os.makedirs(build_dir)

print('\n You\'re running version %s of opencv \n' % cv2.__version__)

img = cv2.imread("/src/img/dragon.jpg", 0)

# TODO: get this to work - right now, throws an error
# plt.imshow(img, cmap = 'gray', interpolation = 'bicubic')
# plt.xticks([]), plt.yticks([])  # to hide tick values on X and Y axis
# plt.show()

cv2.imwrite('%s/dragon_bw.jpg' % build_dir, img)

print('opencv loaded %s' % 'dragon.jpg')
