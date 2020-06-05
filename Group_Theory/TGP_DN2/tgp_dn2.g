# Exercise 1
F:=FreeGroup("x", "y", "z");;
AssignGeneratorVariables(F);;
LeftNormedComm([x,y^-1,z])^y * LeftNormedComm([y,z^-1,x])^z * LeftNormedComm([z,x^-1,y])^x;

# Exercise 2
G:=F/[Comm(x,y)*z^-1, Comm(y,z)*x^-1, Comm(z,x)*y^-1];
Order(G);
IsTrivial(G);

# Exercise 3
n:=18;;
F2:=FreeGroup("r", "z");;
AssignGeneratorVariables(F2);;
D:=F2/[r^n, z^2, z*r*z*r];;
StructureDescription(D);
PD:=Image(IsomorphismPermGroup(D));;
Order(D); time;
Order(PD); time;
Order(Image(IsomorphismPermGroup(D))); time;

# Exercise 4
S:=SmallGroup(128, n);;
P:=Image(IsomorphismFpGroup(S));;
GeneratorsOfGroup(P);
RelatorsOfFpGroup(P);
# these two sets constitute a presentation