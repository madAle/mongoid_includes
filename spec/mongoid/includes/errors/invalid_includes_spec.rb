require 'spec_helper'

describe Mongoid::Includes::Errors::InvalidIncludes do

  describe "#message" do

    Given(:error) {
      described_class.new(Album, :something, {})
    }

    it "contains the problem in the message" do
      expect(error.message).to include(
        "Invalid includes directive: Album.includes(:something)"
      )
    end

    it "contains the summary in the message" do
      expect(error.message).to include(
        "that are the names of relations on the Album model"
      )
    end

    it "contains the resolution in the message" do
      expect(error.message).to include(
        "is a valid name of a relation on the Album model"
      )
    end
  end
end
