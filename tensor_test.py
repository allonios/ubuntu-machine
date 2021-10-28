import tensorflow as tf

if tf.test.gpu_device_name():
    print('Default GPU Device:{}'.format(tf.test.gpu_device_name()))
else:
   print("Please install GPU version of TF")

print("Test Result", tf.test.is_gpu_available())

print("Num GPUs Available: ", len(tf.config.list_physical_devices('GPU')))
