/**
 * Copyright 2024 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

variable "project_id" {
  description = "The project to which the Fleet belongs."
  type        = string
}

variable "app_operator_email" {
  description = "Email of the app operator whose team works with the Fleet."
  type        = string
}

variable "app_operator_team" {
  description = "The name of the team that the app operator is part of."
  type        = string
}

variable "app_operator_role" {
  description = "The role of the app operator in their team (VIEW/EDIT/ADMIN)."
  type        = string
}
