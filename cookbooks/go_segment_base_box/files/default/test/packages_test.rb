describe_recipe 'go_segment_base_box::packages' do

  it 'installs the appropriate packages' do
    node['go_segment_base_box']['packages']['install'].each do |obj|
      package(obj).must_be_installed
    end
  end

end
