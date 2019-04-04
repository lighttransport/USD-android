//#include "pxr/pxr.h"
//#include "pxr/usd/usd/stage.h"
//
//#include "pxr/base/tf/envSetting.h"
//#include "pxr/base/tf/type.h"

#include <iostream>
#include <cstdlib>

#include "simple.h"
#include "complex.h"

PXR_NAMESPACE_USING_DIRECTIVE

int main(int argc, char **argv)
{
  if (argc < 2) {
    std::cerr << "Needs input.usda\n";
    return EXIT_FAILURE;
  }

  std::string filename = argv[1];

  UsdStageRefPtr stage = UsdStage::Open(filename);

  SdfPath path("/Complex");
  UsdPrim cp = stage->GetPrimAtPath(path);

  UsdSchemaExamplesSimple simple(cp);
  UsdRelationship target = simple.GetTargetRel();
  UsdAttribute intAttr = simple.GetIntAttrAttr();

  UsdSchemaExamplesComplex complex(cp);
  //std::cout << complex.GetComplexStringAttr().Get<std::string>() << std::endl;

  SdfPath obj_path("/Object");
  UsdPrim obj = stage->GetPrimAtPath(obj_path);
  //UsdSchemaExamplesParamsAPI paramsAPI = UsdSchemaExamplesParamsAPI::Apply(obj);
  //assert(obj.HasAPI<UsdSchemaExamplesParamsAPI>());
  //std::cout << "mass: " << paramsAPI.GetMassAttr().Get<double>() << std::endl;
  //std::cout << "velocity: " << paramsAPI.GetVelocityAttr().Get<double>() << std::endl;
  //std::cout << "volume: " << paramsAPI.GetVolumeAttr().Get<double>() << std::endl;
}
