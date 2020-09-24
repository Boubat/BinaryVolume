function addBoundingBox(obj)
  obj.volume(:,1,1) = true;
  obj.volume(:,end,1) = true;
  obj.volume(:,1,end) = true;
  obj.volume(:,end,end) = true;

  obj.volume(1,:,1) = true;
  obj.volume(end,:,1) = true;
  obj.volume(1,:,end) = true;
  obj.volume(end,:,end) = true;

  obj.volume(1,1,:) = true;
  obj.volume(end,1,:) = true;
  obj.volume(1,end,:) = true;
  obj.volume(end,end,:) = true;
end