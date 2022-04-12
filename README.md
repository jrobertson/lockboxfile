# Introducing the lockboxfile gem

    require 'lockboxfile'

    key = Lockbox.generate_key
    #=> "d506414ad742dbdb64208aa89e18a121fa351238ac857183dc5f5dffa74b2162" 

    LockboxFile.new(key).write '/tmp/funtime2.txt', 'Hello World!'

    LockboxFile.new(key).read '/tmp/funtime2.txt'
    #=> 'Hello World!'

    key = "d506414ad742dbdb64208aa89e18a121fa351238ac857183dc5f5dffa74b2162" 
    # encrypt a unencrypted file and then delete the unencrypted file
    LockboxFile.new(key).encrypt('/tmp/funtime.txt','/tmp/funtime3.txt', delete: true)

    LockboxFile.new(key).read '/tmp/funtime3.txt'

## Resources

* lockboxfile https://rubygems.org/gems/lockboxfile

lockbox lockboxfile gem encryption encrypt decrypt file
