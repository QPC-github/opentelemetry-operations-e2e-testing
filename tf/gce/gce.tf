# Copyright 2021 Google
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

resource "google_compute_instance" "default" {

  # The terraform workspace will be given a random name (test run id) which we
  # can use to get unique resource names.
  name = "debian9-${terraform.workspace}"
  machine_type = "e2-micro"

  labels = local.common_labels

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }
}

module "pubsub" {
  source = "../modules/pubsub"

  project_id = var.project_id
}

output "pubsub_info" {
  value = module.pubsub.info
  description = "Info about the request/response pubsub topics and subscription to use in the test"
}
