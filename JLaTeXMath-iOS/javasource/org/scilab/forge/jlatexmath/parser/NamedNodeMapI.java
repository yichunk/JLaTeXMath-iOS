package org.scilab.forge.jlatexmath.parser;

import org.scilab.forge.jlatexmath.platform.parser.NamedNodeMap;
import org.scilab.forge.jlatexmath.platform.parser.Node;

public class NamedNodeMapI implements NamedNodeMap {
	
	private org.w3c.dom.NamedNodeMap impl;
	
	public NamedNodeMapI(org.w3c.dom.NamedNodeMap impl) {
		this.impl = impl;
	}

	public int getLength() {
		return impl.getLength();
	}

	public Node item(int index) {
		return new NodeI(impl.item(index));
	}

}