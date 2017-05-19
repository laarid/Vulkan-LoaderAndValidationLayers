#!/bin/sh

URL=https://github.com/KhronosGroup

GLSLANG_SHA=`cat external_revisions/glslang_revision`
SPIRV_HEADERS_SHA=`cat external_revisions/spirv-headers_revision`
SPIRV_TOOLS_SHA=`cat external_revisions/spirv-tools_revision`

# fetch tarballs
wget $URL/glslang/archive/$GLSLANG_SHA.tar.gz -O glslang.tar.gz
wget $URL/spirv-headers/archive/$SPIRV_HEADERS_SHA.tar.gz -O spirv-headers.tar.gz
wget $URL/spirv-tools/archive/$SPIRV_TOOLS_SHA.tar.gz -O spirv-tools.tar.gz


tar xf glslang.tar.gz -C external/glslang --strip 1
tar xf spirv-tools.tar.gz -C external/spirv-tools --strip 1
tar xf spirv-headers.tar.gz -C external/spirv-tools/external/spirv-headers --strip 1

# clean
rm glslang.tar.gz spirv-tools.tar.gz spirv-headers.tar.gz

echo "Remember to run 'git add -f external/' and check that it looks sane"
