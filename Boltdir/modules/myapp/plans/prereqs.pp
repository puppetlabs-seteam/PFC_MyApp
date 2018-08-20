plan myapp::prereqs(
) {
  # Prep this node for applying Puppet code
  apply_prep('localhost')

  # Apply MyApp prereqs
  $result = apply('localhost') {

    file { '/var/www':
      ensure => directory
    }

    file { '/var/www/myapp':
      ensure  => directory
    }

  }

}
