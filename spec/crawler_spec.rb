require 'spec_helper'
require 'nokogiri'  
require 'net/http'

describe Crawler do

  let(:c) { Crawler.new("http://localhost/", 3) }


  describe "#initialize" do
    it "variable @link initialized" do
      c.link.should == "http://localhost/"
    end

    it "variable @hop initialized" do
      c.hop.should == 3
    end

    it "variable @href_array initialized" do
      c.href_array.should be_true
    end

    it "variable @href initialized" do
      c.href.should be_true
    end

    it "variable @i initialized" do
      c.i.should == 0
    end

    it "variable @lvl initialized" do
      c.lvl.should be_true
    end

  end
  
??????????????????????????????????
  describe "" do
    it "page" do
     # @uri_mock = mock('URI')
     # @http_mock = mock('Net::HTTP.get_response')
     # @http_mock.stub(:body => '<title>Test</title><body><a href="test.html">test</a></body>')
    end
  end
?????????????????????????????????????

  describe "" do
    it "should create 'link' and put '#{} \n\n\n' in it" do
      file = mock('file')
      c.href == []
      File.should_receive(:open).with("link", "a").and_yield(file)
      file.should_receive(:write).with("#{c.href} \n\n\n")
      c.write
    end
  end


  describe "show" do

    it "should return current 'END' if variable i == hop" do
       c.i = 3
       c.hop = 3
       c.show.should == "END"
    end

????????????????????????????????
    it "should return array  if variable @link != nil" do
       c.lvl = false
       c.doc.should == "[]"
    end
????????????????????????????????


    it "should return array  if variable @lvl == true" do

    end

  end


 describe "array" do

 end






end
