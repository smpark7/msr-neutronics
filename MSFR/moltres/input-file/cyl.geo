//+
Point(1) = {0, 0, 0, 1.0};
//+
Point(2) = {0, 100, 0, 1.0};
//+
Line(1) = {1, 2};
//+
Extrude {50, 0, 1} {
  Line{1}; 
}
//+
Physical Line("top") = {4};
//+
Physical Line("outer") = {2};
//+
Physical Line("bottom") = {3};
//+
Line Loop(1) = {1, 4, -2, -3};
//+
Plane Surface(6) = {1};
//+
Physical Surface("fuel") = {5};
