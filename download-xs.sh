#!/bin/bash
set -ex

# Download HDF5 data
if [[ ! -e $NUCLEAR_DATA_PATH/nndc_hdf5/cross_sections.xml ]]; then
    wget -q -O - https://anl.box.com/shared/static/teaup95cqv8s9nn56hfn7ku8mmelr95p.xz | tar -C $NUCLEAR_DATA_PATH -xJ
fi

# Download ENDF/B-VII.1 distribution
ENDF=$NUCLEAR_DATA_PATH/endf-b-vii.1
if [[ ! -d $ENDF/neutrons || ! -d $ENDF/photoat || ! -d $ENDF/atomic_relax ]]; then
    wget -q -O - https://anl.box.com/shared/static/4kd2gxnf4gtk4w1c8eua5fsua22kvgjb.xz | tar -C $NUCLEAR_DATA_PATH -xJ
fi
