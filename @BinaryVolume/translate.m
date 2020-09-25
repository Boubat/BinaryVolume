function output = translate(obj,translation)
  obj.origin = obj.origin + translation;
  output = obj;
end