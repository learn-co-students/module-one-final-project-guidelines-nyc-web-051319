#!/usr/bin/env ruby

require_relative '../config/environment'
require_relative 'run.rb'

ApplicationController.new.call
