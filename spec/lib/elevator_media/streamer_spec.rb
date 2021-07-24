require 'rails_helper'
require 'spec_helper'
require 'elevator_media/Streamer'
require 'rest-client'

describe ElevatorMedia::Streamer do
    let!(:streamer){ElevatorMedia::Streamer.new}

    it "a first test to initialize environment" do
        expect(true).to be true
    end

    it "should receive a response from getContent" do
        expect(streamer).to respond_to(:getContent)        
    end


end