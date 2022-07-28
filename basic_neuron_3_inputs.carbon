// Part of the Carbon Language project, under the Apache License v2.0 with LLVM
// Exceptions. See /LICENSE for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
// RUN: %{explorer} %s 2>&1 | \
// RUN:   %{FileCheck} --match-full-lines --allow-unused-prefixes=false %s
// RUN: %{explorer} --parser_debug --trace_file=- %s 2>&1 | \
// RUN:   %{FileCheck} --match-full-lines --allow-unused-prefixes %s
// AUTOUPDATE: %{explorer} %s
// CHECK: Hello world!
// CHECK: result: 0

package ExplorerTest api;


fn Main()-> i32 {

  var inputs: [i32; 3] = (1, 2, 3);
  var weights: [i32; 3] = (3, 2, 8);
  var bias: i32 = 3;

  var output: i32 = inputs[0] * weights[0] +
                    inputs[1] * weights[1] + 
                    inputs[2] * weights[2] + 
                    bias;
  return output;

}

