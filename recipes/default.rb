#
# Cookbook Name::       storm
# Description::         Base configuration for storm
# Recipe::              default
# Author::              Ticean Bennett (ticean@promojam.com)
#
# Copyright 2010, PromoJam, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# == Recipes

include_recipe 'silverware'
include_recipe 'volumes'
include_recipe 'java' ; complain_if_not_sun_java(:storm)
include_recipe 'thrift'

# == Packages

# == Users

daemon_user(:storm) do
  create_group  false
end

# == Directories

standard_dirs('storm') do
  directories   [:data_dir, :log_dir]
  group 'root'
end
