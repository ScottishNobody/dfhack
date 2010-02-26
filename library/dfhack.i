%module dfhack
%include "std_string.i"
%include "std_vector.i"
%include "stdint.i"
%{
/* Includes the header in the wrapper code */
#define LINUX_BUILD
#define SWIG_WRAPPER
#include "DFTypes.h"
#include "DFHackAPI.h"
using namespace std;
using namespace DFHack;
%}

/* templates have to be instantiated for swig */
using namespace std;
namespace std
{
    %template(MatglossVector) vector<DFHack::t_matgloss>;
    %template(PlantMatglossVector) vector<DFHack::t_matglossPlant>;
    %template(VeinVector) std::vector <DFHack::t_vein>;
    %template(IceVeinVector) std::vector <DFHack::t_frozenliquidvein>;
}

/* Parse the header file to generate wrappers */
%include "DFTypes.h"
%include "DFHackAPI.h"