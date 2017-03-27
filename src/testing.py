import os
import numpy as np
import cv2

build_dir = '/src/build'
if not os.path.exists(build_dir):
    os.makedirs(build_dir)

print('\n You\'re running version %s of opencv \n' % cv2.__version__)

img = cv2.imread("/src/img/dragon.jpg", 0)

# TODO: get this to work - right now, throws an error
# cv2.imshow('image', img)
# cv2.waitKey(0)
# cv2.destroyWindows()

cv2.imwrite('%s/dragon_bw.jpg' % build_dir, img)

print('opencv loaded %s' % 'dragon.jpg')
