// Copyright © 2021 Daniel Morris
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at:
//
// https://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

output "iam_role_arn" {
  depends_on  = [aws_iam_role.github]
  description = "ARN of the IAM role."
  value       = var.enabled ? aws_iam_role.github[0].arn : ""
}

output "iam_role_name"{
  depends_on  = [aws_iam_role.github]
  description = "Name of the IAM role."
  value       = var.enabled ? aws_iam_role.github[0].id : ""

}