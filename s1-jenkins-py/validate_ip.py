#!/usr/bin/env python

import ipaddress
import click

def validate_ipv4(ip_address) -> bool:
    try:
        ipaddress.IPv4Address(ip_address)
        return True
    except ValueError:
        return False

@click.command()
@click.argument('ip_address')
def main(ip_address):
    """
    Validate IPv4 address
    """

    click.echo("Validating IPv4 address. . .")
    if validate_ipv4(ip_address):
        click.echo("{} is a valid IPv4 address".format(ip_address))
    else:
        click.echo("{} is an INVALID IPv4 address!".format(ip_address))

if __name__ == "__main__":
    main()
