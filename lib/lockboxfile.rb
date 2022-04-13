#!/usr/bin/env ruby

# file: lockboxfile.rb

require 'stringio'
require 'lockbox'
require 'rxfreader'


class LockboxFile
  include RXFRead

  def initialize(key)
    @lockbox = Lockbox.new(key: key)
  end

  def decrypt(srcfile, destfile)

    FileX.write(destfile, read(srcfile))

  end

  def encrypt(srcfile, destfile, delete: false)

    r = write destfile, FileX.read(srcfile)
    FileX.rm srcfile if delete

    return r

  end

  def read(filepath)
    @lockbox.decrypt FileX.read(filepath)
  end

  def write(filepath, content)
    FileX.write filepath, @lockbox.encrypt(content)
  end
end
