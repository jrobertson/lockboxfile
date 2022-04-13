#!/usr/bin/env ruby

# file: lockboxfile.rb

require 'stringio'
require 'lockbox'


class LockboxFile

  def initialize(key)
    @lockbox = Lockbox.new(key: key)
  end

  def decrypt(srcfile, destfile)

    File.write(destfile, read(srcfile))

  end

  def encrypt(srcfile, destfile, delete: false)

    r = write destfile, File.read(srcfile)
    FileUtils.rm srcfile if delete

    return r

  end

  def read(filepath)
    @lockbox.decrypt File.read(filepath)
  end

  def write(filepath, content)
    File.write filepath, @lockbox.encrypt(content)
  end
end
