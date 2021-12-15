RSpec.shared_examples 'three-element Ruby objects' do
  it 'returns the number of items' do
    expect(subject.length).to eq 3
  end
end

RSpec.describe Array do
  subject { [1, 2, 3] }
  include_examples 'three-element Ruby objects'
end
RSpec.describe String do
  subject { 'abc' }
  include_examples 'three-element Ruby objects'
end
RSpec.describe Hash do
  subject { {a: 1, b: 2, c: 3} }
  include_examples 'three-element Ruby objects'
end
class SausageLink 
  def length 
    3
  end
end

RSpec.describe SausageLink do
  subject { described_class.new }
  include_examples 'three-element Ruby objects'
end