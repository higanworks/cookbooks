action :install do
	execute "pkgin-install" do
		only_if "pkgin avail | awk '{print $1}' | grep -x #{new_resource.name}"
		not_if  "pkgin list  | awk '{print $1}' | grep -x #{new_resource.name}"
		command "pkgin -y install #{new_resource.name}"
	end
end


action :remove do
	execute "pkgin-remove" do
		only_if "pkgin avail | awk '{print $1}' | grep -x #{new_resource.name}"
		only_if "pkgin list  | awk '{print $1}' | grep -x #{new_resource.name}"
		command "pkgin -y remove #{new_resource.name}"
	end
end

