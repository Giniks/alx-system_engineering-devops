# Install a specific version of Flask (2.1.0)

#!/usr/bin/pup
package { 'flask':
  ensure   => '2.1.0',
  provider => 'pip3',
}
