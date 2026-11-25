PVector bezierCurveInterpolate(PVector pointA, PVector pointB, PVector pointC, float T)
{
  return pointA.copy().lerp(pointC, T).lerp(pointB, T);
}
