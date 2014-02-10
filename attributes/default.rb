#
# Cookbook Name:: phpmyadmin
# Attributes:: default
#
# Copyright 2012, Panagiotis Papadomitsos
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

default['phpmyadmin']['version'] = '4.1.7'
default['phpmyadmin']['checksum'] = 'adfaa90b0a0051eab82dff6c65b770b487afb8a0d81cbd2f83a69d4b50484456'
default['phpmyadmin']['mirror'] = 'http://downloads.sourceforge.net/project/phpmyadmin/phpMyAdmin'

default['phpmyadmin']['fpm'] = true

default['phpmyadmin']['home'] = '/opt/phpmyadmin'
default['phpmyadmin']['user'] = 'phpmyadmin'
default['phpmyadmin']['group'] = 'phpmyadmin'
default['phpmyadmin']['socket'] = '/tmp/phpmyadmin.sock'

if Chef::Config[:solo]
  default['phpmyadmin']['blowfish_secret'] = '7654588cf9f0f92f01a6aa361d02c0cf038'
end

case node['platform_family']
when 'debian'
  default['phpmyadmin']['upload_dir'] = '/var/lib/php5/uploads'
  default['phpmyadmin']['save_dir'] = '/var/lib/php5/uploads'
when 'rhel'
  default['phpmyadmin']['upload_dir'] = '/var/lib/php/uploads'
  default['phpmyadmin']['save_dir'] = '/var/lib/php/uploads'
end
default['phpmyadmin']['maxrows'] = 100
default['phpmyadmin']['protect_binary'] = 'blob'
default['phpmyadmin']['default_lang'] = 'en'
default['phpmyadmin']['default_display'] = 'horizontal'
default['phpmyadmin']['query_history'] = true
default['phpmyadmin']['query_history_size'] = 100
