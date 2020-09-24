function output = copy(obj)
  copiedVolume = BinaryVolume();
  copiedVolume.setResolution(obj.resolution);
  copiedVolume.setVolume(obj.volume);
  copiedVolume.translate(obj.origin-copiedVolume.origin);

  output = copiedVolume;
end