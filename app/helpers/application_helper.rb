module ApplicationHelper
  def seat_status(status_id)
    case status_id
    when 1 
      "taken"
    else
      "available"
    end
  end

  def currency_format(amount)
    number_to_currency(amount, unit: "₹", precision: 0, format: "%u %n")
  end

  def generate_qr(id)
    qrcode = RQRCode::QRCode.new(id)

    # NOTE: showing with default options specified explicitly
    svg = qrcode.as_svg(
      offset: 0,
      color: '000',
      shape_rendering: 'crispEdges',
      module_size: 8,
      standalone: true
    )
  end
end
