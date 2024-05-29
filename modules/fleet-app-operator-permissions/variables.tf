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

variable "scope_id" {
  description = "The scope for which IAM and RBAC role bindings are created."
  type        = string
}

variable "user" {
  description = "The user principal for the Fleet Scope, e.g., person@company.com. Either user or group must be provided."
  type        = string
  default     = ""
}

variable "group" {
  description = "The group principal for the Fleet Scope, e.g., people@company.com. Either user or group must be provided."
  type        = string
  default     = ""
}

variable "role" {
  description = "The principal role for the Fleet Scope (VIEW/EDIT/ADMIN)."
  type        = string
  validation {
    condition     = var.role == "VIEW" || var.role == "EDIT" || var.role == "ADMIN"
    error_message = "Allowed values for role are VIEW, EDIT, or ADMIN."
  }
}
