class NameComponent < ViewComponent::Base
  def initialize(first_name:, last_name:)
    @first_name = first_name
    @last_name = last_name
  end

  def call
    Rux.tag("span") {
      Rux.create_buffer.tap { |_rux_buf_|
        _rux_buf_ << " "
        _rux_buf_ << @first_name
        _rux_buf_ << " "
        _rux_buf_ << @last_name
        _rux_buf_ << " "
      }.to_s
    }
  end
end
